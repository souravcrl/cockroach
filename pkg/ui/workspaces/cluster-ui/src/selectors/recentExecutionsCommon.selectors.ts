// Copyright 2022 The Cockroach Authors.
//
// Use of this software is governed by the CockroachDB Software License
// included in the /LICENSE file.

import {
  ExecutionStatus,
  RecentExecutions,
  SessionsResponse,
} from "src/recentExecutions/types";
import { ClusterLocksResponse } from "src/api";
import {
  getRecentExecutionsFromSessions,
  getWaitTimeByTxnIDFromLocks,
} from "../recentExecutions";

// The functions in this file are agnostic to the different shape of each
// state in db-console and cluster-ui. This file contains selector functions
// and combiners that can be reused across both packages.

export const selectRecentExecutionsCombiner = (
  sessions: SessionsResponse | null,
  clusterLocks: ClusterLocksResponse | null,
): RecentExecutions => {
  if (!sessions) return { statements: [], transactions: [] };

  const waitTimeByTxnID = getWaitTimeByTxnIDFromLocks(clusterLocks);
  const execs = getRecentExecutionsFromSessions(sessions);

  return {
    statements: execs.statements.map(s => ({
      ...s,
      status:
        waitTimeByTxnID[s.transactionID] != null
          ? ExecutionStatus.Waiting
          : s.status,
      timeSpentWaiting: waitTimeByTxnID[s.transactionID],
    })),
    transactions: execs.transactions.map(t => ({
      ...t,
      status:
        waitTimeByTxnID[t.transactionID] != null
          ? ExecutionStatus.Waiting
          : t.status,
      timeSpentWaiting: waitTimeByTxnID[t.transactionID],
    })),
  };
};
