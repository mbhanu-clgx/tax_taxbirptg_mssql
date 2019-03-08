view: rsrch_cs_typ_cnfg {
  sql_table_name: dbo.RsrchCsTypCnfg ;;

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

  dimension: cs_typ_cnfg_id {
    type: number
    sql: ${TABLE}.CS_TYP_CNFG_ID ;;
  }

  dimension: cs_typ_cnfg_typ {
    type: string
    sql: ${TABLE}.CS_TYP_CNFG_TYP ;;
  }

  dimension: dmsc_only_flg {
    type: number
    sql: ${TABLE}.DMSC_ONLY_FLG ;;
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

  dimension: extn_alwd_flg {
    type: number
    sql: ${TABLE}.EXTN_ALWD_FLG ;;
  }

  dimension: extn_aprv_reqr_flg {
    type: number
    sql: ${TABLE}.EXTN_APRV_REQR_FLG ;;
  }

  dimension: init_prrty {
    type: number
    sql: ${TABLE}.INIT_PRRTY ;;
  }

  dimension: prnt_alwd_flg {
    type: number
    sql: ${TABLE}.PRNT_ALWD_FLG ;;
  }

  dimension: short_track_flg {
    type: number
    sql: ${TABLE}.SHORT_TRACK_FLG ;;
  }

  dimension: sla_days {
    type: number
    sql: ${TABLE}.SLA_DAYS ;;
  }

  dimension: sla_shft_cnt {
    type: number
    sql: ${TABLE}.SLA_SHFT_CNT ;;
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
