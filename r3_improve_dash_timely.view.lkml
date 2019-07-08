view: r3_improve_dash_timely {
  sql_table_name: dbo.R3ImproveDashTimely ;;

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

  dimension: missed_sla {
    type: number
    sql: ${TABLE}.MissedSla ;;
  }

  dimension: missed_sla_rate {
    type: number
    sql: ${TABLE}.MissedSlaRate ;;
  }

  dimension: missed_sla_rate_avg {
    type: number
    sql: ${TABLE}.MissedSlaRateAvg ;;
  }

  dimension: missed_sla_rate_multiple {
    type: number
    sql: ${TABLE}.MissedSlaRateMultiple ;;
  }

  dimension: missed_sla_value_score {
    type: number
    sql: ${TABLE}.MissedSlaValueScore ;;
  }

  dimension: total_sla {
    type: number
    sql: ${TABLE}.TotalSla ;;
  }

  dimension: volume_multiple {
    type: number
    sql: ${TABLE}.VolumeMultiple ;;
  }

  measure: count {
    type: count
    drill_fields: [dimension_name]
  }
}
