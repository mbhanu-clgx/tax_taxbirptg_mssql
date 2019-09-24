view: r3_research_inventory_dash_final {
  sql_table_name: dbo.R3ResearchInventoryDashFinal ;;

  dimension: case_category_name {
    type: string
    sql: ${TABLE}.CaseCategoryName ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.CaseType ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.ClientName ;;
  }

  dimension: curr_finish_p7 {
    type: number
    sql: ${TABLE}.CurrFinishP7 ;;
  }

  dimension: curr_oos {
    type: number
    sql: ${TABLE}.CurrOOS ;;
  }

  dimension: curr_oosun_ctl {
    type: number
    sql: ${TABLE}.CurrOOSUnCtl ;;
  }

  dimension: curr_res_comp {
    type: number
    sql: ${TABLE}.CurrResComp ;;
  }

  dimension: curr_wip {
    type: number
    sql: ${TABLE}.CurrWIP ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: pmfinish_p7 {
    type: number
    sql: ${TABLE}.PMFinishP7 ;;
  }

  dimension: pmoos {
    type: number
    sql: ${TABLE}.PMOOS ;;
  }

  dimension: pmoosun_ctl {
    type: number
    sql: ${TABLE}.PMOOSUnCtl ;;
  }

  dimension: pmres_comp {
    type: number
    sql: ${TABLE}.PMResComp ;;
  }

  dimension: pmwip {
    type: number
    sql: ${TABLE}.PMWIP ;;
  }

  dimension: pwfinish_p7 {
    type: number
    sql: ${TABLE}.PWFinishP7 ;;
  }

  dimension: pwoos {
    type: number
    sql: ${TABLE}.PWOOS ;;
  }

  dimension: pwoosun_ctl {
    type: number
    sql: ${TABLE}.PWOOSUnCtl ;;
  }

  dimension: pwres_comp {
    type: number
    sql: ${TABLE}.PWResComp ;;
  }

  dimension: pwwip {
    type: number
    sql: ${TABLE}.PWWIP ;;
  }

  measure: count {
    type: count
    drill_fields: [client_name, case_category_name]
  }
}
