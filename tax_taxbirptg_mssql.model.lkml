connection: "taxqn1vdsqlcw94_taxbirptg_reporting"

# include all the views
include: "*.view"

datagroup: tax_taxbirptg_mssql_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 minute"
}

persist_with: tax_taxbirptg_mssql_default_datagroup

explore: r3_research {
  persist_for: "24 hour"
}

explore: r3_main_dash_qual_time_prod {}

explore: r3_main_dash_qtpfinal {}

explore: r3_main_dash_vol_final {}

explore: r3_improve_dash_qual {}

explore: r3_improve_dash_timely {}

explore: r3_research_dash_qc {}

explore: r3_research_dash_detail_data {
  persist_for: "24 hour"
}

#Lien Audit
explore: lien_audit_hist {}

explore: lien_audit_pas_not_talon {}

explore: lien_audit_talon_not_pas {}
