view: r3_research_quality_dash_final {
  sql_table_name: dbo.R3ResearchQualityDashFinal ;;

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

  dimension: curr_qc1_ooswip {
    type: number
    sql: ${TABLE}.CurrQC1OOSWIP ;;
  }

  dimension: curr_qc2_ooswip {
    type: number
    sql: ${TABLE}.CurrQC2OOSWIP ;;
  }

  dimension: curr_qccnt {
    type: number
    sql: ${TABLE}.CurrQCCnt ;;
  }

  dimension: curr_qcpass {
    type: number
    sql: ${TABLE}.CurrQCPass ;;
  }

  dimension: curr_res_comp {
    type: number
    sql: ${TABLE}.CurrResComp ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: pmqc1_ooswip {
    type: number
    sql: ${TABLE}.PMQC1OOSWIP ;;
  }

  dimension: pmqc2_ooswip {
    type: number
    sql: ${TABLE}.PMQC2OOSWIP ;;
  }

  dimension: pmqccnt {
    type: number
    sql: ${TABLE}.PMQCCnt ;;
  }

  dimension: pmqcpass {
    type: number
    sql: ${TABLE}.PMQCPass ;;
  }

  dimension: pmres_comp {
    type: number
    sql: ${TABLE}.PMResComp ;;
  }

  dimension: pqqc1_ooswip {
    type: number
    sql: ${TABLE}.PQQC1OOSWIP ;;
  }

  dimension: pqqc2_ooswip {
    type: number
    sql: ${TABLE}.PQQC2OOSWIP ;;
  }

  dimension: pqqccnt {
    type: number
    sql: ${TABLE}.PQQCCnt ;;
  }

  dimension: pqqcpass {
    type: number
    sql: ${TABLE}.PQQCPass ;;
  }

  dimension: pqres_comp {
    type: number
    sql: ${TABLE}.PQResComp ;;
  }

  dimension: pwqc1_ooswip {
    type: number
    sql: ${TABLE}.PWQC1OOSWIP ;;
  }

  dimension: pwqc2_ooswip {
    type: number
    sql: ${TABLE}.PWQC2OOSWIP ;;
  }

  dimension: pwqccnt {
    type: number
    sql: ${TABLE}.PWQCCnt ;;
  }

  dimension: pwqcpass {
    type: number
    sql: ${TABLE}.PWQCPass ;;
  }

  dimension: pwres_comp {
    type: number
    sql: ${TABLE}.PWResComp ;;
  }

  measure: count {
    type: count
#     drill_fields: [client_name, case_category_name]
  }

  measure: total_CurrQCPass_OFFSHORE {
    type: sum
    sql: ${TABLE}.CurrQCPass ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PWQCPass_OFFSHORE {
    type: sum
    sql: ${TABLE}.PWQCPass ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PMQCPass_OFFSHORE {
    type: sum
    sql: ${TABLE}.PMQCPass ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PQQCPass_OFFSHORE {
    type: sum
    sql: ${TABLE}.PQQCPass ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_CurrQCCnt_OFFSHORE {
    type: sum
    sql: ${TABLE}.CurrQCCnt ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PWQCCnt_OFFSHORE {
    type: sum
    sql: ${TABLE}.PWQCCnt ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PMQCCnt_OFFSHORE {
    type: sum
    sql: ${TABLE}.PMQCCnt ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PQQCCnt_OFFSHORE {
    type: sum
    sql: ${TABLE}.PQQCCnt ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_CurrResComp_OFFSHORE {
    type: sum
    sql: ${TABLE}.CurrResComp ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PWResComp_OFFSHORE {
    type: sum
    sql: ${TABLE}.PWResComp ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PMResComp_OFFSHORE {
    type: sum
    sql: ${TABLE}.PMResComp ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }

  measure: total_PQResComp_OFFSHORE {
    type: sum
    sql: ${TABLE}.PQResComp ;;
    filters: {
      field: location
      value: "OFFSHORE"
    }
  }


  measure: total_CurrQCPass_DOMESTIC {
    type: sum
    sql: ${TABLE}.CurrQCPass ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_PWQCPass_DOMESTIC {
    type: sum
    sql: ${TABLE}.PWQCPass ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_PMQCPass_DOMESTIC {
    type: sum
    sql: ${TABLE}.PMQCPass ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_PQQCPass_DOMESTIC {
    type: sum
    sql: ${TABLE}.PQQCPass ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_CurrQCCnt_DOMESTIC {
    type: sum
    sql: ${TABLE}.CurrQCCnt ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_PWQCCnt_DOMESTIC {
    type: sum
    sql: ${TABLE}.PWQCCnt ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_PMQCCnt_DOMESTIC {
    type: sum
    sql: ${TABLE}.PMQCCnt ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_PQQCCnt_DOMESTIC {
    type: sum
    sql: ${TABLE}.PQQCCnt ;;
    filters: {
      field: location
      value: "DOMESTIC"
    }
  }

  measure: total_CurrQC1OOSWIP {
    type: sum
    sql: ${TABLE}.CurrQC1OOSWIP ;;
  }

  measure: total_PWQC1OOSWIP {
    type: sum
    sql: ${TABLE}.PWQC1OOSWIP ;;
  }

  measure: total_PMQC1OOSWIP {
    type: sum
    sql: ${TABLE}.PMQC1OOSWIP ;;
  }

  measure: total_PQQC1OOSWIP {
    type: sum
    sql: ${TABLE}.PQQC1OOSWIP ;;
  }

  measure: total_CurrQC2OOSWIP {
    type: sum
    sql: ${TABLE}.CurrQC2OOSWIP ;;
  }

  measure: total_PWQC2OOSWIP {
    type: sum
    sql: ${TABLE}.PWQC2OOSWIP ;;
  }

  measure: total_PMQC2OOSWIP {
    type: sum
    sql: ${TABLE}.PMQC2OOSWIP ;;
  }

  measure: total_PQQC2OOSWIP {
    type: sum
    sql: ${TABLE}.PQQC2OOSWIP ;;
  }

  measure: total_CurrQC1Quality  {
    type: number
    sql: case when ${total_CurrQCCnt_OFFSHORE} >0 then ${total_CurrQCPass_OFFSHORE}*1.00/${total_CurrQCCnt_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PWQC1Quality  {
    type: number
    sql: case when ${total_PWQCCnt_OFFSHORE} >0 then ${total_PWQCPass_OFFSHORE}*1.00/${total_PWQCCnt_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PMQC1Quality  {
    type: number
    sql: case when ${total_PMQCCnt_OFFSHORE} >0 then ${total_PMQCPass_OFFSHORE}*1.00/${total_PMQCCnt_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PQQC1Quality  {
    type: number
    sql: case when ${total_PQQCCnt_OFFSHORE} >0 then ${total_PQQCPass_OFFSHORE}*1.00/${total_PQQCCnt_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_CurrQC1Sampled   {
    type: number
    sql: case when ${total_CurrResComp_OFFSHORE} >0 then ${total_CurrQCCnt_OFFSHORE}*1.00/${total_CurrResComp_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PWQC1Sampled   {
    type: number
    sql: case when ${total_PWResComp_OFFSHORE} >0 then ${total_PWQCCnt_OFFSHORE}*1.00/${total_PWResComp_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PMQC1Sampled   {
    type: number
    sql: case when ${total_PMResComp_OFFSHORE} >0 then ${total_PMQCCnt_OFFSHORE}*1.00/${total_PMResComp_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PQQC1Sampled   {
    type: number
    sql: case when ${total_PQResComp_OFFSHORE} >0 then ${total_PQQCCnt_OFFSHORE}*1.00/${total_PQResComp_OFFSHORE} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_CurrQC2Quality   {
    type: number
    sql: case when ${total_CurrQCCnt_DOMESTIC} >0 then ${total_CurrQCPass_DOMESTIC}*1.00/${total_CurrQCCnt_DOMESTIC} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PWQC2Quality   {
    type: number
    sql: case when ${total_PWQCCnt_DOMESTIC} >0 then ${total_PWQCPass_DOMESTIC}*1.00/${total_PWQCCnt_DOMESTIC} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PMQC2Quality   {
    type: number
    sql: case when ${total_PMQCCnt_DOMESTIC} >0 then ${total_PMQCPass_DOMESTIC}*1.00/${total_PMQCCnt_DOMESTIC} else 0 end ;;
    value_format: "0.00%"
  }

  measure: total_PQQC2Quality   {
    type: number
    sql: case when ${total_PQQCCnt_DOMESTIC} >0 then ${total_PQQCPass_DOMESTIC}*1.00/${total_PQQCCnt_DOMESTIC} else 0 end ;;
    value_format: "0.00%"
  }


}
