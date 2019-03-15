view: r3_research {
  sql_table_name: dbo.R3Research ;;

  dimension: business_case {
    type: string
    sql: ${TABLE}.BusinessCase ;;
  }

  dimension: case_category_id {
    type: number
    sql: ${TABLE}.CaseCategoryId ;;
  }

  dimension: case_category_name {
    type: string
    sql: ${TABLE}.CaseCategoryName ;;
  }

  dimension: case_priority {
    type: number
    sql: ${TABLE}.CasePriority ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.CaseType ;;
  }

  dimension: case_type_id {
    type: number
    sql: ${TABLE}.CaseTypeId ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.ClientId ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.ClientName ;;
  }

  dimension_group: close {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CloseDate ;;
  }

  dimension_group: core {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CoreDate ;;
  }

  dimension: days_open {
    type: number
    sql: ${TABLE}.DaysOpen ;;
  }

  dimension: days_open_core {
    type: number
    sql: ${TABLE}.DaysOpenCore ;;
  }

  dimension: days_to_sla {
    type: number
    sql: ${TABLE}.DaysToSla ;;
  }

  dimension: days_to_sla_core {
    type: number
    sql: ${TABLE}.DaysToSlaCore ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: hold_time_min {
    type: number
    sql: ${TABLE}.HoldTimeMin ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PersonId ;;
  }

  dimension: person_status {
    type: string
    sql: ${TABLE}.PersonStatus ;;
  }

  dimension_group: sla {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SlaDate ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.StartDate ;;
  }

  dimension: wait_time_min {
    type: number
    sql: ${TABLE}.WaitTimeMin ;;
  }

  dimension: work_time_min {
    type: number
    sql: ${TABLE}.WorkTimeMin ;;
  }

  measure: count {
    type: count
    drill_fields: [case_category_name, client_name, first_name, last_name]
  }
}
