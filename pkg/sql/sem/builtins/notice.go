// Copyright 2015 The Cockroach Authors.
//
// Use of this software is governed by the CockroachDB Software License
// included in the /LICENSE file.

package builtins

import (
	"context"
	"strings"

	"github.com/cockroachdb/cockroach/pkg/sql/pgwire/pgnotice"
	"github.com/cockroachdb/cockroach/pkg/sql/sem/eval"
	"github.com/cockroachdb/cockroach/pkg/sql/sem/tree"
	"github.com/cockroachdb/errors"
)

// crdbInternalSendNotice sends a notice.
// Note this is extracted to a different file to prevent churn on the pgwire
// test, which records line numbers.
func crdbInternalSendNotice(
	ctx context.Context, evalCtx *eval.Context, severity string, msg string,
) (tree.Datum, error) {
	if evalCtx.ClientNoticeSender == nil {
		return nil, errors.AssertionFailedf("notice sender not set")
	}
	evalCtx.ClientNoticeSender.BufferClientNotice(
		ctx,
		pgnotice.NewWithSeverityf(strings.ToUpper(severity), "%s", msg),
	)
	return tree.NewDInt(0), nil
}
