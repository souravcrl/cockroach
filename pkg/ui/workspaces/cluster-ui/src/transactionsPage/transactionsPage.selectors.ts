// Copyright 2021 The Cockroach Authors.
//
// Use of this software is governed by the CockroachDB Software License
// included in the /LICENSE file.

import { createSelector } from "reselect";

import { localStorageSelector } from "../store/utils/selectors";
import { txnStatsSelector } from "../store/transactionStats/txnStats.selector";

export const selectTransactionsData = createSelector(
  txnStatsSelector,
  transactionsState => transactionsState?.data,
);

export const selectTransactionsDataValid = createSelector(
  txnStatsSelector,
  state => state?.valid,
);

export const selectTransactionsDataInFlight = createSelector(
  txnStatsSelector,
  state => state?.inFlight,
);

export const selectTransactionsLastUpdated = createSelector(
  txnStatsSelector,
  state => state.lastUpdated,
);

export const selectTransactionsLastError = createSelector(
  txnStatsSelector,
  state => state.lastError,
);

export const selectTxnColumns = createSelector(
  localStorageSelector,
  // return array of columns if user have customized it or `null` otherwise
  localStorage =>
    localStorage["showColumns/TransactionPage"]
      ? localStorage["showColumns/TransactionPage"]?.split(",")
      : null,
);

export const selectSortSetting = createSelector(
  localStorageSelector,
  localStorage => localStorage["sortSetting/TransactionsPage"],
);

export const selectRequestTime = createSelector(
  localStorageSelector,
  localStorage => localStorage["requestTime/TransactionsPage"],
);

export const selectFilters = createSelector(
  localStorageSelector,
  localStorage => localStorage["filters/TransactionsPage"],
);

export const selectSearch = createSelector(
  localStorageSelector,
  localStorage => localStorage["search/TransactionsPage"],
);
