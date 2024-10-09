// Copyright 2023 The Cockroach Authors.
//
// Use of this software is governed by the CockroachDB Software License
// included in the /LICENSE file.

// Code generated by "stringer"; DO NOT EDIT.

package privilege

import "strconv"

func _() {
	// An "invalid array index" compiler error signifies that the constant values have changed.
	// Re-run the stringer command to generate them again.
	var x [1]struct{}
	_ = x[ALL-1]
	_ = x[CREATE-2]
	_ = x[DROP-3]
	_ = x[DEPRECATEDGRANT-4]
	_ = x[SELECT-5]
	_ = x[INSERT-6]
	_ = x[DELETE-7]
	_ = x[UPDATE-8]
	_ = x[USAGE-9]
	_ = x[ZONECONFIG-10]
	_ = x[CONNECT-11]
	_ = x[RULE-12]
	_ = x[MODIFYCLUSTERSETTING-13]
	_ = x[EXTERNALCONNECTION-14]
	_ = x[VIEWACTIVITY-15]
	_ = x[VIEWACTIVITYREDACTED-16]
	_ = x[VIEWCLUSTERSETTING-17]
	_ = x[CANCELQUERY-18]
	_ = x[NOSQLLOGIN-19]
	_ = x[EXECUTE-20]
	_ = x[VIEWCLUSTERMETADATA-21]
	_ = x[VIEWDEBUG-22]
	_ = x[BACKUP-23]
	_ = x[RESTORE-24]
	_ = x[EXTERNALIOIMPLICITACCESS-25]
	_ = x[CHANGEFEED-26]
	_ = x[VIEWJOB-27]
	_ = x[MODIFYSQLCLUSTERSETTING-28]
	_ = x[REPLICATION-29]
	_ = x[MANAGETENANT-30]
	_ = x[VIEWSYSTEMTABLE-31]
	_ = x[CREATEROLE-32]
	_ = x[CREATELOGIN-33]
	_ = x[CREATEDB-34]
	_ = x[CONTROLJOB-35]
	_ = x[REPAIRCLUSTERMETADATA-36]
	_ = x[largestKind-36]
}

func (i Kind) String() string {
	switch i {
	case ALL:
		return "ALL"
	case CREATE:
		return "CREATE"
	case DROP:
		return "DROP"
	case DEPRECATEDGRANT:
		return "GRANT"
	case SELECT:
		return "SELECT"
	case INSERT:
		return "INSERT"
	case DELETE:
		return "DELETE"
	case UPDATE:
		return "UPDATE"
	case USAGE:
		return "USAGE"
	case ZONECONFIG:
		return "ZONECONFIG"
	case CONNECT:
		return "CONNECT"
	case RULE:
		return "RULE"
	case MODIFYCLUSTERSETTING:
		return "MODIFYCLUSTERSETTING"
	case EXTERNALCONNECTION:
		return "EXTERNALCONNECTION"
	case VIEWACTIVITY:
		return "VIEWACTIVITY"
	case VIEWACTIVITYREDACTED:
		return "VIEWACTIVITYREDACTED"
	case VIEWCLUSTERSETTING:
		return "VIEWCLUSTERSETTING"
	case CANCELQUERY:
		return "CANCELQUERY"
	case NOSQLLOGIN:
		return "NOSQLLOGIN"
	case EXECUTE:
		return "EXECUTE"
	case VIEWCLUSTERMETADATA:
		return "VIEWCLUSTERMETADATA"
	case VIEWDEBUG:
		return "VIEWDEBUG"
	case BACKUP:
		return "BACKUP"
	case RESTORE:
		return "RESTORE"
	case EXTERNALIOIMPLICITACCESS:
		return "EXTERNALIOIMPLICITACCESS"
	case CHANGEFEED:
		return "CHANGEFEED"
	case VIEWJOB:
		return "VIEWJOB"
	case MODIFYSQLCLUSTERSETTING:
		return "MODIFYSQLCLUSTERSETTING"
	case REPLICATION:
		return "REPLICATION"
	case MANAGETENANT:
		return "MANAGETENANT"
	case VIEWSYSTEMTABLE:
		return "VIEWSYSTEMTABLE"
	case CREATEROLE:
		return "CREATEROLE"
	case CREATELOGIN:
		return "CREATELOGIN"
	case CREATEDB:
		return "CREATEDB"
	case CONTROLJOB:
		return "CONTROLJOB"
	case REPAIRCLUSTERMETADATA:
		return "REPAIRCLUSTERMETADATA"
	default:
		return "Kind(" + strconv.FormatInt(int64(i), 10) + ")"
	}
}
