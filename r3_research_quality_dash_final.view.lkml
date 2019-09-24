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
    drill_fields: [client_name, case_category_name]
  }
}
