view: r3_main_dash_qual_time_prod {
  sql_table_name: dbo.R3MainDashQualTimeProd ;;

  dimension: bucket {
    type: string
    sql: ${TABLE}.Bucket ;;
  }

  dimension: case_category_name {
    type: string
    sql: ${TABLE}.CaseCategoryName ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.CaseType ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: finished_by_location {
    type: string
    sql: ${TABLE}.FinishedByLocation ;;
  }

  dimension: met_sla {
    type: number
    sql: ${TABLE}.MetSla ;;
  }

  dimension: people_days {
    type: number
    sql: ${TABLE}.PeopleDays ;;
  }

  dimension: qccase_cnt {
    type: number
    sql: ${TABLE}.QCCaseCnt ;;
  }

  dimension: qcfail_cnt {
    type: number
    sql: ${TABLE}.QCFailCnt ;;
  }

  dimension: total_sla {
    type: number
    sql: ${TABLE}.TotalSla ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  measure: count {
    type: count
    drill_fields: [case_category_name]
  }

  measure: sum_Volume {
    type: sum
    sql: ${TABLE}.Volume;;
  }

  measure: sum_qcfail_cnt {
    type: sum
    sql: ${TABLE}.Volume;;
  }

  measure: Quality {
    type: number
    sql:1-${qcfail_cnt}/${qccase_cnt});;
  }


}
