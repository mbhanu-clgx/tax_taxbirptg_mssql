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

#   measure: count {
#     type: count
#     drill_fields: [client_name, case_category_name]
#   }

  measure: total_CurrWIP {
    type: sum
    sql: ${TABLE}.CurrWIP ;;
  }

  measure: total_PMWIP {
    type: sum
    sql: ${TABLE}.PMWIP ;;
  }

  measure: total_PWWIP {
    type: sum
    sql: ${TABLE}.PWWIP ;;
  }

  measure: total_CurrResComp {
    type: sum
    sql: ${TABLE}.CurrResComp ;;
  }

  measure: total_PWResComp {
    type: sum
    sql: ${TABLE}.PWResComp ;;
  }

  measure: total_PMResComp {
    type: sum
    sql: ${TABLE}.PMResComp ;;
  }

  measure: total_CurrFinishP7 {
    type: sum
    sql: ${TABLE}.CurrFinishP7 ;;
  }

  measure: total_PWFinishP7 {
    type: sum
    sql: ${TABLE}.PWFinishP7 ;;
  }

  measure: total_PMFinishP7 {
    type: sum
    sql: ${TABLE}.PMFinishP7 ;;
  }

  measure: total_CurrOOS {
    type: sum
    sql: ${TABLE}.CurrOOS ;;
  }

  measure: total_PWOOS {
    type: sum
    sql: ${TABLE}.PWOOS ;;
  }

  measure: total_PMOOS {
    type: sum
    sql: ${TABLE}.PMOOS ;;
  }

  measure: total_CurrOOSUnCtl{
    type: sum
    sql: ${TABLE}.CurrOOSUnCtl ;;
  }

  measure: total_PWOOSUnCtl {
    type: sum
    sql: ${TABLE}.PWOOSUnCtl ;;
  }

  measure: total_PMOOSUnCtl {
    type: sum
    sql: ${TABLE}.PMOOSUnCtl ;;
  }

  measure: total_CurrDOI {
    type: number
    sql: case when (${total_CurrFinishP7}/5) > 0 then ${total_CurrWIP}/(${total_CurrFinishP7}/5)  else 0 end;;
  }

  measure: total_PMDOI {
    type: number
    sql: case when (${total_PMFinishP7}/5) > 0 then ${total_PMWIP}/(${total_PMFinishP7}/5) else 0 end ;;
  }

  measure: total_PWDOI {
    type: number
    sql: case when (${total_PWFinishP7}/5) > 0 then ${total_PWWIP}/(${total_PWFinishP7}/5) else 0 end ;;
  }

  measure: total_CurrOOSperc {
    type: number
    sql: case when ${total_CurrWIP} > 0 then ${total_CurrOOS}*1.00/${total_CurrWIP} else 0 end;;
    value_format: "0.00%"
  }

  measure: total_PWOOSperc {
    type: number
    sql: case when ${total_PWWIP} > 0 then ${total_PWOOS}*1.00/${total_PWWIP} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PMOOSperc {
    type: number
    sql: case when ${total_PMWIP} > 0 then ${total_PMOOS}*1.00/${total_PMWIP} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_CurrOOSctlperc {
    type: number
    sql: case when (${total_CurrWIP} - ${total_CurrOOSUnCtl})  > 0 then (${total_CurrOOS} - ${total_CurrOOSUnCtl})*1.00/(${total_CurrWIP} - ${total_CurrOOSUnCtl}) else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PWOOSctlperc {
    type: number
    sql: case when (${total_PWWIP} - ${total_PWOOSUnCtl}) > 0 then (${total_PWOOS} - ${total_PWOOSUnCtl})*1.00/(${total_PWWIP} - ${total_PWOOSUnCtl}) else 0 end  ;;
    value_format: "0.00%"
  }

  measure: total_PMOOSctlperc {
    type: number
    sql: case when (${total_PMWIP} - ${total_PMOOSUnCtl}) > 0 then (${total_PMOOS} - ${total_PMOOSUnCtl})*1.00/(${total_PMWIP} - ${total_PMOOSUnCtl}) else 0 end  ;;
    value_format: "0.00%"
  }



}
