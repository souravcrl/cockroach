// Copyright 2022 The Cockroach Authors.
//
// Use of this software is governed by the CockroachDB Software License
// included in the /LICENSE file.

import { Dispatch } from "redux";
import { createSelector } from "reselect";
import {
  RecentTransactionFilters,
  RecentTransactionsViewDispatchProps,
  RecentTransactionsViewStateProps,
  AppState,
  SortSetting,
} from "src";
import {
  selectAppName,
  selectRecentTransactions,
  selectClusterLocksMaxApiSizeReached,
} from "src/selectors/recentExecutions.selectors";
import { actions as localStorageActions } from "src/store/localStorage";
import { actions as sessionsActions } from "src/store/sessions";
import { localStorageSelector } from "../store/utils/selectors";
import { selectIsTenant } from "src/store/uiConfig";

export const selectSortSetting = (state: AppState): SortSetting =>
  localStorageSelector(state)["sortSetting/ActiveTransactionsPage"];

export const selectFilters = (state: AppState): RecentTransactionFilters =>
  localStorageSelector(state)["filters/ActiveTransactionsPage"];

const selectLocalStorageColumns = (state: AppState) => {
  const localStorage = localStorageSelector(state);
  return localStorage["showColumns/ActiveTransactionsPage"];
};

export const selectColumns = createSelector(
  selectLocalStorageColumns,
  value => {
    if (value == null) return null;

    return value.split(",").map(col => col.trim());
  },
);

export const mapStateToRecentTransactionsPageProps = (
  state: AppState,
): RecentTransactionsViewStateProps => ({
  transactions: selectRecentTransactions(state),
  sessionsError: state.adminUI?.sessions.lastError,
  selectedColumns: selectColumns(state),
  sortSetting: selectSortSetting(state),
  filters: selectFilters(state),
  internalAppNamePrefix: selectAppName(state),
  isTenant: selectIsTenant(state),
  maxSizeApiReached: selectClusterLocksMaxApiSizeReached(state),
});

export const mapDispatchToRecentTransactionsPageProps = (
  dispatch: Dispatch,
): RecentTransactionsViewDispatchProps => ({
  refreshLiveWorkload: () => dispatch(sessionsActions.refresh()),
  onColumnsSelect: columns =>
    dispatch(
      localStorageActions.update({
        key: "showColumns/ActiveTransactionsPage",
        value: columns ? columns.join(", ") : " ",
      }),
    ),
  onFiltersChange: (filters: RecentTransactionFilters) =>
    dispatch(
      localStorageActions.update({
        key: "filters/ActiveTransactionsPage",
        value: filters,
      }),
    ),
  onSortChange: (ss: SortSetting) =>
    dispatch(
      localStorageActions.update({
        key: "sortSetting/ActiveTransactionsPage",
        value: ss,
      }),
    ),
});
