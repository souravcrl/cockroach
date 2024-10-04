// Copyright 2022 The Cockroach Authors.
//
// Use of this software is governed by the CockroachDB Software License
// included in the /LICENSE file.

import { Filters, defaultFilters } from ".";
import { Location } from "history";
import {
  RecentStatementFilters,
  RecentTransactionFilters,
} from "src/recentExecutions/types";
import {
  WorkloadInsightEventFilters,
  SchemaInsightEventFilters,
} from "../insights";

// This function returns a Filters object populated with values from the URL, or null
// if there were no filters set.
export function getFiltersFromURL(location: Location): Partial<Filters> | null {
  const { search } = location;
  const queryParams = new URLSearchParams(search);
  const filters: Filters = {};

  Object.keys(defaultFilters).forEach((key: string) => {
    const param = queryParams.get(key);
    if (param == null) {
      return;
    }

    filters[key] =
      typeof defaultFilters[key] === "boolean" ? param === "true" : param;
  });

  return filters;
}

export function getRecentStatementFiltersFromURL(
  location: Location,
): Partial<RecentStatementFilters> | null {
  const filters = getFiltersFromURL(location);
  if (!filters) return null;

  const appFilters = {
    app: filters.app,
    executionStatus: filters.executionStatus,
  };

  // If every entry is null, there were no active stmt filters. Return null.
  if (Object.values(appFilters).every(val => !val)) return null;

  return appFilters;
}

export function getRecentTransactionFiltersFromURL(
  location: Location,
): Partial<RecentTransactionFilters> | null {
  const filters = getFiltersFromURL(location);
  if (!filters) return null;

  const appFilters = {
    app: filters.app,
    executionStatus: filters.executionStatus,
  };

  // If every entry is null, there were no active stmt filters. Return null.
  if (Object.values(appFilters).every(val => !val)) return null;

  return appFilters;
}

export function getWorkloadInsightEventFiltersFromURL(
  location: Location,
): Partial<WorkloadInsightEventFilters> | null {
  const filters = getFiltersFromURL(location);
  if (!filters) return null;

  const appFilters = {
    app: filters.app,
    workloadInsightType: filters.workloadInsightType,
  };

  // If every entry is null, there were no active filters. Return null.
  if (Object.values(appFilters).every(val => !val)) return null;

  return appFilters;
}

export function getSchemaInsightEventFiltersFromURL(
  location: Location,
): Partial<SchemaInsightEventFilters> | null {
  const filters = getFiltersFromURL(location);
  if (!filters) return null;

  const schemaFilters = {
    database: filters.database,
    schemaInsightType: filters.schemaInsightType,
  };

  // If every entry is null, there were no active filters. Return null.
  if (Object.values(schemaFilters).every(val => !val)) return null;

  return schemaFilters;
}
