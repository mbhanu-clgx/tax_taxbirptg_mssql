connection: "taxqn1vdsqlcw94_taxbirptg_reporting"

# include all the views
include: "*.view"

datagroup: tax_taxbirptg_mssql_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tax_taxbirptg_mssql_default_datagroup

explore: rsrch_bus_cs {
  join:  rsrch_cs_typ_cnfg{
    relationship: many_to_one
    sql_on: ${rsrch_bus_cs.cs_typ_id}  = ${rsrch_cs_typ_cnfg.cs_typ_cnfg_id};;
  }

  join: rsrch_clnt_cnfg {
    relationship: many_to_one
    sql_on: ${rsrch_bus_cs.clnt_id} = ${rsrch_clnt_cnfg.clnt_cnfg_id} ;;
  }
}
