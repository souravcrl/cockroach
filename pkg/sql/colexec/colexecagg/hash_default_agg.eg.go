// Code generated by execgen; DO NOT EDIT.
// Copyright 2020 The Cockroach Authors.
// Use of this software is governed by the Business Source License
// included in the file licenses/BSL.txt.
// As of the Change Date specified in that file, in accordance with
// the Business Source License, use of this software will be governed
// by the Apache License, Version 2.0, included in the file
// licenses/APL.txt.

package colexecagg

import (
	"context"
	"unsafe"

	"github.com/cockroachdb/cockroach/pkg/col/coldata"
	"github.com/cockroachdb/cockroach/pkg/sql/colconv"
	"github.com/cockroachdb/cockroach/pkg/sql/colexecerror"
	"github.com/cockroachdb/cockroach/pkg/sql/colexecop"
	"github.com/cockroachdb/cockroach/pkg/sql/colmem"
	"github.com/cockroachdb/cockroach/pkg/sql/execinfra"
	"github.com/cockroachdb/cockroach/pkg/sql/sem/eval"
	"github.com/cockroachdb/cockroach/pkg/sql/sem/tree"
	"github.com/cockroachdb/cockroach/pkg/sql/types"
)

type defaultHashAgg struct {
	unorderedAggregateFuncBase
	fn  eval.AggregateFunc
	ctx context.Context
	// inputArgsConverter is managed by the aggregator, and this function can
	// simply call GetDatumColumn.
	inputArgsConverter *colconv.VecToDatumConverter
	resultConverter    func(tree.Datum) interface{}
	scratch            struct {
		// Note that this scratch space is shared among all aggregate function
		// instances created by the same alloc object.
		otherArgs []tree.Datum
	}
}

var _ AggregateFunc = &defaultHashAgg{}

func (a *defaultHashAgg) Compute(
	vecs []coldata.Vec, inputIdxs []uint32, startIdx, endIdx int, sel []int,
) {
	// Note that we only need to account for the memory of the output vector
	// and not for the intermediate results of aggregation since the aggregate
	// function itself does the latter.
	a.allocator.PerformOperation([]coldata.Vec{a.vec}, func() {
		{
			// We don't need to check whether sel is non-nil in case of the
			// hash aggregator because it always uses non-nil sel to specify
			// the tuples to be aggregated.
			// Both aggregators convert the batch "sparsely" - without
			// deselection - so converted values are at the same positions as
			// the original ones.
			for _, tupleIdx := range sel[startIdx:endIdx] {
				// Note that the only function that takes no arguments is COUNT_ROWS, and
				// it has an optimized implementation, so we don't need to check whether
				// len(inputIdxs) is at least 1.
				firstArg := a.inputArgsConverter.GetDatumColumn(int(inputIdxs[0]))[tupleIdx]
				for j, colIdx := range inputIdxs[1:] {
					a.scratch.otherArgs[j] = a.inputArgsConverter.GetDatumColumn(int(colIdx))[tupleIdx]
				}
				if err := a.fn.Add(a.ctx, firstArg, a.scratch.otherArgs...); err != nil {
					colexecerror.ExpectedError(err)
				}
			}
		}
	})
}

func (a *defaultHashAgg) Flush(outputIdx int) {
	res, err := a.fn.Result()
	if err != nil {
		colexecerror.ExpectedError(err)
	}
	if res == tree.DNull {
		a.nulls.SetNull(outputIdx)
	} else {
		coldata.SetValueAt(a.vec, a.resultConverter(res), outputIdx)
	}
}

func (a *defaultHashAgg) Reset() {
	a.fn.Reset(a.ctx)
}

func newDefaultHashAggAlloc(
	allocator *colmem.Allocator,
	constructor execinfra.AggregateConstructor,
	evalCtx *eval.Context,
	inputArgsConverter *colconv.VecToDatumConverter,
	numArguments int,
	constArguments tree.Datums,
	outputType *types.T,
	allocSize int64,
) *defaultHashAggAlloc {
	var otherArgsScratch []tree.Datum
	if numArguments > 1 {
		otherArgsScratch = make([]tree.Datum, numArguments-1)
	}
	return &defaultHashAggAlloc{
		aggAllocBase: aggAllocBase{
			allocator: allocator,
			allocSize: allocSize,
		},
		constructor:        constructor,
		evalCtx:            evalCtx,
		inputArgsConverter: inputArgsConverter,
		resultConverter:    colconv.GetDatumToPhysicalFn(outputType),
		otherArgsScratch:   otherArgsScratch,
		arguments:          constArguments,
	}
}

type defaultHashAggAlloc struct {
	aggAllocBase
	aggFuncs []defaultHashAgg

	constructor execinfra.AggregateConstructor
	evalCtx     *eval.Context
	// inputArgsConverter is a converter from coldata.Vecs to tree.Datums that
	// is shared among all aggregate functions and is managed by the aggregator
	// (meaning that the aggregator operator is responsible for calling
	// ConvertBatch method).
	inputArgsConverter *colconv.VecToDatumConverter
	resultConverter    func(tree.Datum) interface{}
	// otherArgsScratch is the scratch space for arguments other than first one
	// that is shared among all aggregate functions created by this alloc. Such
	// sharing is acceptable since the aggregators run in a single goroutine
	// and they process functions one at a time.
	otherArgsScratch []tree.Datum
	// arguments is the list of constant (non-aggregated) arguments to the
	// aggregate, for instance, the separator in string_agg.
	arguments tree.Datums
	// returnedFns stores the references to all aggregate functions that have
	// been returned by this alloc. Such tracking is necessary since
	// row-execution aggregate functions need to be closed (unlike optimized
	// vectorized equivalents), and the alloc object is a convenient way to do
	// so.
	// TODO(yuzefovich): it might make sense to introduce Close method into
	// colexecagg.AggregateFunc interface (which would be a noop for all optimized
	// functions) and move the responsibility of closing to the aggregators
	// because they already have references to all aggregate functions.
	returnedFns []*defaultHashAgg
}

var _ aggregateFuncAlloc = &defaultHashAggAlloc{}
var _ colexecop.Closer = &defaultHashAggAlloc{}

const sizeOfDefaultHashAgg = int64(unsafe.Sizeof(defaultHashAgg{}))
const defaultHashAggSliceOverhead = int64(unsafe.Sizeof([]defaultHashAggAlloc{}))

func (a *defaultHashAggAlloc) newAggFunc() AggregateFunc {
	if len(a.aggFuncs) == 0 {
		a.allocator.AdjustMemoryUsage(defaultHashAggSliceOverhead + sizeOfDefaultHashAgg*a.allocSize)
		a.aggFuncs = make([]defaultHashAgg, a.allocSize)
	}
	f := &a.aggFuncs[0]
	*f = defaultHashAgg{
		fn:                 a.constructor(a.evalCtx, a.arguments),
		ctx:                a.evalCtx.Context,
		inputArgsConverter: a.inputArgsConverter,
		resultConverter:    a.resultConverter,
	}
	f.allocator = a.allocator
	f.scratch.otherArgs = a.otherArgsScratch
	a.allocator.AdjustMemoryUsage(f.fn.Size())
	a.aggFuncs = a.aggFuncs[1:]
	a.returnedFns = append(a.returnedFns, f)
	return f
}

func (a *defaultHashAggAlloc) Close(ctx context.Context) error {
	for _, fn := range a.returnedFns {
		fn.fn.Close(ctx)
	}
	a.returnedFns = nil
	return nil
}
