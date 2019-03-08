view: rsrch_clnt_cnfg {
  sql_table_name: dbo.RsrchClntCnfg ;;

  dimension: bus_id {
    type: string
    sql: ${TABLE}.BUS_ID ;;
  }

  dimension: cat_id {
    type: number
    sql: ${TABLE}.CAT_ID ;;
  }

  dimension: clnt_cnfg_id {
    type: number
    sql: ${TABLE}.CLNT_CNFG_ID ;;
  }

  dimension: cnfg_key {
    type: string
    sql: ${TABLE}.CNFG_KEY ;;
  }

  dimension: cnfg_nm {
    type: string
    sql: ${TABLE}.CNFG_NM ;;
  }

  dimension_group: create_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATE_DT ;;
  }

  dimension: ent_stat {
    type: string
    sql: ${TABLE}.ENT_STAT ;;
  }

  dimension_group: ent_stat_chng_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ENT_STAT_CHNG_DT ;;
  }

  dimension: prvd_cs_idx_flg {
    type: number
    value_format_name: id
    sql: ${TABLE}.PRVD_CS_IDX_FLG ;;
  }

  dimension_group: update_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDATE_DT ;;
  }

  dimension: ver {
    type: number
    sql: ${TABLE}.VER ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
