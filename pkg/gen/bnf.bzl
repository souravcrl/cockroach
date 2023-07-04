# Generated by genbzl

BNF_SRCS = [
    "//docs/generated/sql/bnf:abort_stmt.bnf",
    "//docs/generated/sql/bnf:add_column.bnf",
    "//docs/generated/sql/bnf:add_constraint.bnf",
    "//docs/generated/sql/bnf:alter_backup.bnf",
    "//docs/generated/sql/bnf:alter_backup_schedule.bnf",
    "//docs/generated/sql/bnf:alter_changefeed.bnf",
    "//docs/generated/sql/bnf:alter_column.bnf",
    "//docs/generated/sql/bnf:alter_database.bnf",
    "//docs/generated/sql/bnf:alter_database_add_region_stmt.bnf",
    "//docs/generated/sql/bnf:alter_database_add_super_region.bnf",
    "//docs/generated/sql/bnf:alter_database_alter_super_region.bnf",
    "//docs/generated/sql/bnf:alter_database_drop_region.bnf",
    "//docs/generated/sql/bnf:alter_database_drop_secondary_region.bnf",
    "//docs/generated/sql/bnf:alter_database_drop_super_region.bnf",
    "//docs/generated/sql/bnf:alter_database_owner.bnf",
    "//docs/generated/sql/bnf:alter_database_placement_stmt.bnf",
    "//docs/generated/sql/bnf:alter_database_primary_region.bnf",
    "//docs/generated/sql/bnf:alter_database_set_secondary_region_stmt.bnf",
    "//docs/generated/sql/bnf:alter_database_set_stmt.bnf",
    "//docs/generated/sql/bnf:alter_database_set_zone_config_extension_stmt.bnf",
    "//docs/generated/sql/bnf:alter_database_survival_goal_stmt.bnf",
    "//docs/generated/sql/bnf:alter_database_to_schema_stmt.bnf",
    "//docs/generated/sql/bnf:alter_ddl_stmt.bnf",
    "//docs/generated/sql/bnf:alter_default_privileges_stmt.bnf",
    "//docs/generated/sql/bnf:alter_func_dep_extension_stmt.bnf",
    "//docs/generated/sql/bnf:alter_func_options_stmt.bnf",
    "//docs/generated/sql/bnf:alter_func_owner_stmt.bnf",
    "//docs/generated/sql/bnf:alter_func_rename_stmt.bnf",
    "//docs/generated/sql/bnf:alter_func_set_schema_stmt.bnf",
    "//docs/generated/sql/bnf:alter_func_stmt.bnf",
    "//docs/generated/sql/bnf:alter_index.bnf",
    "//docs/generated/sql/bnf:alter_index_partition_by.bnf",
    "//docs/generated/sql/bnf:alter_index_visible_stmt.bnf",
    "//docs/generated/sql/bnf:alter_partition_stmt.bnf",
    "//docs/generated/sql/bnf:alter_primary_key.bnf",
    "//docs/generated/sql/bnf:alter_range.bnf",
    "//docs/generated/sql/bnf:alter_range_relocate_stmt.bnf",
    "//docs/generated/sql/bnf:alter_rename_view_stmt.bnf",
    "//docs/generated/sql/bnf:alter_role_stmt.bnf",
    "//docs/generated/sql/bnf:alter_scatter_index_stmt.bnf",
    "//docs/generated/sql/bnf:alter_scatter_stmt.bnf",
    "//docs/generated/sql/bnf:alter_schema.bnf",
    "//docs/generated/sql/bnf:alter_sequence.bnf",
    "//docs/generated/sql/bnf:alter_sequence_options_stmt.bnf",
    "//docs/generated/sql/bnf:alter_sequence_owner_stmt.bnf",
    "//docs/generated/sql/bnf:alter_sequence_set_schema_stmt.bnf",
    "//docs/generated/sql/bnf:alter_stmt.bnf",
    "//docs/generated/sql/bnf:alter_table.bnf",
    "//docs/generated/sql/bnf:alter_table_cmds.bnf",
    "//docs/generated/sql/bnf:alter_table_locality_stmt.bnf",
    "//docs/generated/sql/bnf:alter_table_owner_stmt.bnf",
    "//docs/generated/sql/bnf:alter_table_partition_by.bnf",
    "//docs/generated/sql/bnf:alter_table_reset_storage_param.bnf",
    "//docs/generated/sql/bnf:alter_table_set_schema_stmt.bnf",
    "//docs/generated/sql/bnf:alter_table_set_storage_param.bnf",
    "//docs/generated/sql/bnf:alter_type.bnf",
    "//docs/generated/sql/bnf:alter_view.bnf",
    "//docs/generated/sql/bnf:alter_view_owner_stmt.bnf",
    "//docs/generated/sql/bnf:alter_view_set_schema_stmt.bnf",
    "//docs/generated/sql/bnf:alter_zone_database_stmt.bnf",
    "//docs/generated/sql/bnf:alter_zone_index_stmt.bnf",
    "//docs/generated/sql/bnf:alter_zone_partition_stmt.bnf",
    "//docs/generated/sql/bnf:alter_zone_range_stmt.bnf",
    "//docs/generated/sql/bnf:alter_zone_table_stmt.bnf",
    "//docs/generated/sql/bnf:analyze_stmt.bnf",
    "//docs/generated/sql/bnf:backup.bnf",
    "//docs/generated/sql/bnf:backup_options.bnf",
    "//docs/generated/sql/bnf:begin_stmt.bnf",
    "//docs/generated/sql/bnf:begin_transaction.bnf",
    "//docs/generated/sql/bnf:cancel_all_jobs_stmt.bnf",
    "//docs/generated/sql/bnf:cancel_job.bnf",
    "//docs/generated/sql/bnf:cancel_query.bnf",
    "//docs/generated/sql/bnf:cancel_session.bnf",
    "//docs/generated/sql/bnf:cancel_stmt.bnf",
    "//docs/generated/sql/bnf:check_column_level.bnf",
    "//docs/generated/sql/bnf:check_table_level.bnf",
    "//docs/generated/sql/bnf:close_cursor_stmt.bnf",
    "//docs/generated/sql/bnf:col_qualification.bnf",
    "//docs/generated/sql/bnf:column_table_def.bnf",
    "//docs/generated/sql/bnf:comment.bnf",
    "//docs/generated/sql/bnf:commit_transaction.bnf",
    "//docs/generated/sql/bnf:copy_stmt.bnf",
    "//docs/generated/sql/bnf:copy_to_stmt.bnf",
    "//docs/generated/sql/bnf:create_as_col_qual_list.bnf",
    "//docs/generated/sql/bnf:create_as_constraint_def.bnf",
    "//docs/generated/sql/bnf:create_changefeed_stmt.bnf",
    "//docs/generated/sql/bnf:create_database_stmt.bnf",
    "//docs/generated/sql/bnf:create_ddl_stmt.bnf",
    "//docs/generated/sql/bnf:create_extension_stmt.bnf",
    "//docs/generated/sql/bnf:create_external_connection_stmt.bnf",
    "//docs/generated/sql/bnf:create_func_stmt.bnf",
    "//docs/generated/sql/bnf:create_index_stmt.bnf",
    "//docs/generated/sql/bnf:create_index_with_storage_param.bnf",
    "//docs/generated/sql/bnf:create_inverted_index_stmt.bnf",
    "//docs/generated/sql/bnf:create_role_stmt.bnf",
    "//docs/generated/sql/bnf:create_schedule_for_backup_stmt.bnf",
    "//docs/generated/sql/bnf:create_schedule_for_changefeed_stmt.bnf",
    "//docs/generated/sql/bnf:create_schedule_stmt.bnf",
    "//docs/generated/sql/bnf:create_schema_stmt.bnf",
    "//docs/generated/sql/bnf:create_sequence_stmt.bnf",
    "//docs/generated/sql/bnf:create_stats_stmt.bnf",
    "//docs/generated/sql/bnf:create_stmt.bnf",
    "//docs/generated/sql/bnf:create_table_as_stmt.bnf",
    "//docs/generated/sql/bnf:create_table_stmt.bnf",
    "//docs/generated/sql/bnf:create_table_with_storage_param.bnf",
    "//docs/generated/sql/bnf:create_type.bnf",
    "//docs/generated/sql/bnf:create_view_stmt.bnf",
    "//docs/generated/sql/bnf:deallocate_stmt.bnf",
    "//docs/generated/sql/bnf:declare_cursor_stmt.bnf",
    "//docs/generated/sql/bnf:default_value_column_level.bnf",
    "//docs/generated/sql/bnf:delete_stmt.bnf",
    "//docs/generated/sql/bnf:discard_stmt.bnf",
    "//docs/generated/sql/bnf:drop_column.bnf",
    "//docs/generated/sql/bnf:drop_constraint.bnf",
    "//docs/generated/sql/bnf:drop_database.bnf",
    "//docs/generated/sql/bnf:drop_ddl_stmt.bnf",
    "//docs/generated/sql/bnf:drop_external_connection_stmt.bnf",
    "//docs/generated/sql/bnf:drop_func_stmt.bnf",
    "//docs/generated/sql/bnf:drop_index.bnf",
    "//docs/generated/sql/bnf:drop_owned_by_stmt.bnf",
    "//docs/generated/sql/bnf:drop_role_stmt.bnf",
    "//docs/generated/sql/bnf:drop_schedule_stmt.bnf",
    "//docs/generated/sql/bnf:drop_schema.bnf",
    "//docs/generated/sql/bnf:drop_sequence_stmt.bnf",
    "//docs/generated/sql/bnf:drop_stmt.bnf",
    "//docs/generated/sql/bnf:drop_table.bnf",
    "//docs/generated/sql/bnf:drop_type.bnf",
    "//docs/generated/sql/bnf:drop_view.bnf",
    "//docs/generated/sql/bnf:execute_stmt.bnf",
    "//docs/generated/sql/bnf:experimental_audit.bnf",
    "//docs/generated/sql/bnf:explain_analyze_stmt.bnf",
    "//docs/generated/sql/bnf:explain_stmt.bnf",
    "//docs/generated/sql/bnf:explainable_stmt.bnf",
    "//docs/generated/sql/bnf:export_stmt.bnf",
    "//docs/generated/sql/bnf:family_def.bnf",
    "//docs/generated/sql/bnf:fetch_cursor_stmt.bnf",
    "//docs/generated/sql/bnf:for_locking.bnf",
    "//docs/generated/sql/bnf:foreign_key_column_level.bnf",
    "//docs/generated/sql/bnf:foreign_key_table_level.bnf",
    "//docs/generated/sql/bnf:generic_set.bnf",
    "//docs/generated/sql/bnf:grant_stmt.bnf",
    "//docs/generated/sql/bnf:import_csv.bnf",
    "//docs/generated/sql/bnf:import_dump.bnf",
    "//docs/generated/sql/bnf:import_into.bnf",
    "//docs/generated/sql/bnf:index_def.bnf",
    "//docs/generated/sql/bnf:insert_rest.bnf",
    "//docs/generated/sql/bnf:insert_stmt.bnf",
    "//docs/generated/sql/bnf:iso_level.bnf",
    "//docs/generated/sql/bnf:joined_table.bnf",
    "//docs/generated/sql/bnf:legacy_begin_stmt.bnf",
    "//docs/generated/sql/bnf:legacy_end_stmt.bnf",
    "//docs/generated/sql/bnf:legacy_transaction_stmt.bnf",
    "//docs/generated/sql/bnf:like_table_option_list.bnf",
    "//docs/generated/sql/bnf:limit_clause.bnf",
    "//docs/generated/sql/bnf:move_cursor_stmt.bnf",
    "//docs/generated/sql/bnf:not_null_column_level.bnf",
    "//docs/generated/sql/bnf:offset_clause.bnf",
    "//docs/generated/sql/bnf:on_conflict.bnf",
    "//docs/generated/sql/bnf:opt_frame_clause.bnf",
    "//docs/generated/sql/bnf:opt_locality.bnf",
    "//docs/generated/sql/bnf:opt_persistence_temp_table.bnf",
    "//docs/generated/sql/bnf:opt_show_tenant_options.bnf",
    "//docs/generated/sql/bnf:opt_with_storage_parameter_list.bnf",
    "//docs/generated/sql/bnf:pause_all_jobs_stmt.bnf",
    "//docs/generated/sql/bnf:pause_job.bnf",
    "//docs/generated/sql/bnf:pause_schedule.bnf",
    "//docs/generated/sql/bnf:pause_stmt.bnf",
    "//docs/generated/sql/bnf:preparable_stmt.bnf",
    "//docs/generated/sql/bnf:prepare_stmt.bnf",
    "//docs/generated/sql/bnf:primary_key_column_level.bnf",
    "//docs/generated/sql/bnf:primary_key_table_level.bnf",
    "//docs/generated/sql/bnf:reassign_owned_by_stmt.bnf",
    "//docs/generated/sql/bnf:refresh_materialized_views.bnf",
    "//docs/generated/sql/bnf:release_savepoint.bnf",
    "//docs/generated/sql/bnf:rename_column.bnf",
    "//docs/generated/sql/bnf:rename_constraint.bnf",
    "//docs/generated/sql/bnf:rename_database.bnf",
    "//docs/generated/sql/bnf:rename_index.bnf",
    "//docs/generated/sql/bnf:rename_sequence.bnf",
    "//docs/generated/sql/bnf:rename_table.bnf",
    "//docs/generated/sql/bnf:reset_csetting_stmt.bnf",
    "//docs/generated/sql/bnf:reset_session_stmt.bnf",
    "//docs/generated/sql/bnf:reset_stmt.bnf",
    "//docs/generated/sql/bnf:restore.bnf",
    "//docs/generated/sql/bnf:restore_options.bnf",
    "//docs/generated/sql/bnf:resume_all_jobs_stmt.bnf",
    "//docs/generated/sql/bnf:resume_job.bnf",
    "//docs/generated/sql/bnf:resume_schedule.bnf",
    "//docs/generated/sql/bnf:resume_stmt.bnf",
    "//docs/generated/sql/bnf:revoke_stmt.bnf",
    "//docs/generated/sql/bnf:rollback_transaction.bnf",
    "//docs/generated/sql/bnf:routine_body_stmt.bnf",
    "//docs/generated/sql/bnf:routine_return_stmt.bnf",
    "//docs/generated/sql/bnf:row_source_extension_stmt.bnf",
    "//docs/generated/sql/bnf:savepoint_stmt.bnf",
    "//docs/generated/sql/bnf:scrub_database_stmt.bnf",
    "//docs/generated/sql/bnf:scrub_stmt.bnf",
    "//docs/generated/sql/bnf:scrub_table_stmt.bnf",
    "//docs/generated/sql/bnf:select_clause.bnf",
    "//docs/generated/sql/bnf:select_stmt.bnf",
    "//docs/generated/sql/bnf:set_cluster_setting.bnf",
    "//docs/generated/sql/bnf:set_csetting_stmt.bnf",
    "//docs/generated/sql/bnf:set_exprs_internal.bnf",
    "//docs/generated/sql/bnf:set_local_stmt.bnf",
    "//docs/generated/sql/bnf:set_operation.bnf",
    "//docs/generated/sql/bnf:set_or_reset_csetting_stmt.bnf",
    "//docs/generated/sql/bnf:set_rest.bnf",
    "//docs/generated/sql/bnf:set_rest_more.bnf",
    "//docs/generated/sql/bnf:set_session_stmt.bnf",
    "//docs/generated/sql/bnf:set_transaction.bnf",
    "//docs/generated/sql/bnf:set_transaction_stmt.bnf",
    "//docs/generated/sql/bnf:show_backup.bnf",
    "//docs/generated/sql/bnf:show_cluster_setting.bnf",
    "//docs/generated/sql/bnf:show_columns_stmt.bnf",
    "//docs/generated/sql/bnf:show_commit_timestamp_stmt.bnf",
    "//docs/generated/sql/bnf:show_constraints_stmt.bnf",
    "//docs/generated/sql/bnf:show_create_external_connections_stmt.bnf",
    "//docs/generated/sql/bnf:show_create_schedules_stmt.bnf",
    "//docs/generated/sql/bnf:show_create_stmt.bnf",
    "//docs/generated/sql/bnf:show_databases_stmt.bnf",
    "//docs/generated/sql/bnf:show_default_privileges_stmt.bnf",
    "//docs/generated/sql/bnf:show_enums.bnf",
    "//docs/generated/sql/bnf:show_full_scans.bnf",
    "//docs/generated/sql/bnf:show_functions_stmt.bnf",
    "//docs/generated/sql/bnf:show_grants_stmt.bnf",
    "//docs/generated/sql/bnf:show_indexes_stmt.bnf",
    "//docs/generated/sql/bnf:show_jobs.bnf",
    "//docs/generated/sql/bnf:show_keys.bnf",
    "//docs/generated/sql/bnf:show_local_or_tenant_csettings_stmt.bnf",
    "//docs/generated/sql/bnf:show_locality.bnf",
    "//docs/generated/sql/bnf:show_locality_stmt.bnf",
    "//docs/generated/sql/bnf:show_partitions_stmt.bnf",
    "//docs/generated/sql/bnf:show_range_for_row_stmt.bnf",
    "//docs/generated/sql/bnf:show_ranges_stmt.bnf",
    "//docs/generated/sql/bnf:show_regions.bnf",
    "//docs/generated/sql/bnf:show_roles_stmt.bnf",
    "//docs/generated/sql/bnf:show_savepoint_status.bnf",
    "//docs/generated/sql/bnf:show_schedules.bnf",
    "//docs/generated/sql/bnf:show_schemas.bnf",
    "//docs/generated/sql/bnf:show_sequences.bnf",
    "//docs/generated/sql/bnf:show_session_stmt.bnf",
    "//docs/generated/sql/bnf:show_sessions.bnf",
    "//docs/generated/sql/bnf:show_statements.bnf",
    "//docs/generated/sql/bnf:show_stats.bnf",
    "//docs/generated/sql/bnf:show_survival_goal_stmt.bnf",
    "//docs/generated/sql/bnf:show_tables.bnf",
    "//docs/generated/sql/bnf:show_tenant_stmt.bnf",
    "//docs/generated/sql/bnf:show_trace.bnf",
    "//docs/generated/sql/bnf:show_transactions_stmt.bnf",
    "//docs/generated/sql/bnf:show_transfer_stmt.bnf",
    "//docs/generated/sql/bnf:show_types_stmt.bnf",
    "//docs/generated/sql/bnf:show_users_stmt.bnf",
    "//docs/generated/sql/bnf:show_var.bnf",
    "//docs/generated/sql/bnf:show_zone_stmt.bnf",
    "//docs/generated/sql/bnf:simple_select_clause.bnf",
    "//docs/generated/sql/bnf:sort_clause.bnf",
    "//docs/generated/sql/bnf:split_index_at.bnf",
    "//docs/generated/sql/bnf:split_table_at.bnf",
    "//docs/generated/sql/bnf:stmt.bnf",
    "//docs/generated/sql/bnf:stmt_block.bnf",
    "//docs/generated/sql/bnf:stmt_without_legacy_transaction.bnf",
    "//docs/generated/sql/bnf:table_clause.bnf",
    "//docs/generated/sql/bnf:table_constraint.bnf",
    "//docs/generated/sql/bnf:table_ref.bnf",
    "//docs/generated/sql/bnf:tenant_capability.bnf",
    "//docs/generated/sql/bnf:tenant_capability_list.bnf",
    "//docs/generated/sql/bnf:transaction_stmt.bnf",
    "//docs/generated/sql/bnf:truncate_stmt.bnf",
    "//docs/generated/sql/bnf:unique_column_level.bnf",
    "//docs/generated/sql/bnf:unique_table_level.bnf",
    "//docs/generated/sql/bnf:unlisten_stmt.bnf",
    "//docs/generated/sql/bnf:unsplit_index_at.bnf",
    "//docs/generated/sql/bnf:unsplit_table_at.bnf",
    "//docs/generated/sql/bnf:update_stmt.bnf",
    "//docs/generated/sql/bnf:upsert_stmt.bnf",
    "//docs/generated/sql/bnf:use_stmt.bnf",
    "//docs/generated/sql/bnf:validate_constraint.bnf",
    "//docs/generated/sql/bnf:values_clause.bnf",
    "//docs/generated/sql/bnf:window_definition.bnf",
    "//docs/generated/sql/bnf:with_clause.bnf",
]
