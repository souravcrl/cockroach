// Copyright 2022 The Cockroach Authors.
//
// Use of this software is governed by the CockroachDB Software License
// included in the /LICENSE file.

import {
  RecentStatementFilters,
  defaultFilters,
  SortSetting,
} from "@cockroachlabs/cluster-ui";
import {
  selectRecentStatements,
  selectAppName,
  selectClusterLocksMaxApiSizeReached,
} from "src/selectors";
import { refreshLiveWorkload } from "src/redux/apiReducers";
import { LocalSetting } from "src/redux/localsettings";
import { AdminUIState } from "src/redux/state";

const selectedColumnsLocalSetting = new LocalSetting<
  AdminUIState,
  string | null
>(
  "columns/ActiveStatementsPage",
  (state: AdminUIState) => state.localSettings,
  null,
);

const defaultActiveFilters = {
  app: defaultFilters.app,
  executionStatus: defaultFilters.executionStatus,
};

const filtersLocalSetting = new LocalSetting<
  AdminUIState,
  RecentStatementFilters
>(
  "filters/ActiveStatementsPage",
  (state: AdminUIState) => state.localSettings,
  defaultActiveFilters,
);

const sortSettingLocalSetting = new LocalSetting<AdminUIState, SortSetting>(
  "sortSetting/ActiveStatementsPage",
  (state: AdminUIState) => state.localSettings,
  { ascending: false, columnTitle: "startTime" },
);

export const mapStateToRecentStatementViewProps = (state: AdminUIState) => ({
  filters: filtersLocalSetting.selector(state),
  selectedColumns: selectedColumnsLocalSetting.selectorToArray(state),
  sortSetting: sortSettingLocalSetting.selector(state),
  statements: selectRecentStatements(state),
  sessionsError: state.cachedData?.sessions.lastError,
  internalAppNamePrefix: selectAppName(state),
  maxSizeApiReached: selectClusterLocksMaxApiSizeReached(state),
});

export const recentStatementsViewActions = {
  onColumnsSelect: (columns: string[]) =>
    selectedColumnsLocalSetting.set(columns.join(",")),
  refreshLiveWorkload,
  onFiltersChange: (filters: RecentStatementFilters) =>
    filtersLocalSetting.set(filters),
  onSortChange: (ss: SortSetting) => sortSettingLocalSetting.set(ss),
};
