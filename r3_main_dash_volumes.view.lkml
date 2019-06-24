view: r3_main_dash_volumes {
  sql_table_name: dbo.R3MainDashVolumes ;;

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

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  measure: count {
    type: count
    drill_fields: [case_category_name]
  }
}
