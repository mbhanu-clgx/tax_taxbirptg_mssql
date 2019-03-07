connection: "taxqn1vdsqlcw94_taxbirptg_reporting"

# include all the views
include: "*.view"

datagroup: tax_taxbirptg_mssql_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tax_taxbirptg_mssql_default_datagroup

explore: pas_prcl_lien_nc {}

explore: talon_nc {}
