connection: "taxqn1vdsqlcw94_taxbirptg_reporting"

# include all the views
include: "*.view"

datagroup: tax_taxbirptg_mssql_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 minute"
}

persist_with: tax_taxbirptg_mssql_default_datagroup

explore: r3_research {}

explore: r3_main_dash_qual_time_prod {}

explore: r3_main_dash_qtpfinal {}

explore: r3_main_dash_vol_final {}
