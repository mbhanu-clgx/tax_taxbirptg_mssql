view: r3_improve_dash_qual {
  sql_table_name: dbo.R3ImproveDashQual ;;

  dimension: case_vol_avg {
    type: number
    sql: ${TABLE}.CaseVolAvg ;;
  }

  dimension: case_volume {
    type: number
    sql: ${TABLE}.CaseVolume ;;
  }

  dimension: completed_months {
    type: number
    sql: ${TABLE}."CompletedMonth(s)" ;;
  }

  dimension: cumulative {
    type: string
    sql: ${TABLE}.Cumulative ;;
  }

  dimension: dimension_name {
    type: string
    sql: ${TABLE}.DimensionName ;;
  }

  dimension: dimension_value {
    type: string
    sql: ${TABLE}.DimensionValue ;;
  }

  dimension: qccase_cnt {
    type: number
    sql: ${TABLE}.QCCaseCnt ;;
  }

  dimension: qccase_fail_cnt {
    type: number
    sql: ${TABLE}.QCCaseFailCnt ;;
  }

  dimension: qccase_failure_rate {
    type: number
    sql: ${TABLE}.QCCaseFailureRate ;;
  }

  dimension: qccase_failure_rate_avg {
    type: number
    sql: ${TABLE}.QCCaseFailureRateAvg ;;
  }

  dimension: qcfailure_multiple {
    type: number
    sql: ${TABLE}.QCFailureMultiple ;;
  }

  dimension: qcvalue_score {
    type: number
    sql: ${TABLE}.QCValueScore ;;
  }

  dimension: qcvolume_multiple {
    type: number
    sql: ${TABLE}.QCVolumeMultiple ;;
  }

  measure: count {
    type: count
    drill_fields: [dimension_name]
  }
}
