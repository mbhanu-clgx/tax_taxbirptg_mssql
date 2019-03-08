view: rsrch_bus_cs {
  sql_table_name: dbo.RsrchBusCs ;;

  dimension: bus_cs_id {
    type: number
    sql: ${TABLE}.BUS_CS_ID ;;
  }

  dimension: cat_id {
    type: number
    sql: ${TABLE}.CAT_ID ;;
  }

  dimension: clnt_id {
    type: number
    sql: ${TABLE}.CLNT_ID ;;
  }

  dimension_group: close_at_dt {
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
    sql: ${TABLE}.CLOSE_AT_DT ;;
  }

  dimension_group: core_work_dt {
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
    sql: ${TABLE}.CORE_WORK_DT ;;
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

  dimension: cs_grp_id {
    type: string
    sql: ${TABLE}.CS_GRP_ID ;;
  }

  dimension: cs_idx {
    type: string
    sql: ${TABLE}.CS_IDX ;;
  }

  dimension: cs_typ_id {
    type: number
    sql: ${TABLE}.CS_TYP_ID ;;
  }

  dimension: esclt_cmnt {
    type: string
    sql: ${TABLE}.ESCLT_CMNT ;;
  }

  dimension: esclt_suprt_flg {
    type: number
    sql: ${TABLE}.ESCLT_SUPRT_FLG ;;
  }

  dimension: extn_aprv_flg {
    type: number
    sql: ${TABLE}.EXTN_APRV_FLG ;;
  }

  dimension: file_load_log_id {
    type: number
    sql: ${TABLE}.FILE_LOAD_LOG_ID ;;
  }

  dimension: id_key {
    type: string
    sql: ${TABLE}.ID_KEY ;;
  }

  dimension: last_asgn_id {
    type: number
    sql: ${TABLE}.LAST_ASGN_ID ;;
  }

  dimension: last_task_id {
    type: number
    sql: ${TABLE}.LAST_TASK_ID ;;
  }

  dimension: last_task_stat {
    type: string
    sql: ${TABLE}.LAST_TASK_STAT ;;
  }

  dimension_group: last_touch_dt {
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
    sql: ${TABLE}.LAST_TOUCH_DT ;;
  }

  dimension: loan_id {
    type: string
    sql: ${TABLE}.LOAN_ID ;;
  }

  dimension: orig_cs_typ_id {
    type: number
    sql: ${TABLE}.ORIG_CS_TYP_ID ;;
  }

  dimension: part_key {
    type: string
    sql: ${TABLE}.PART_KEY ;;
  }

  dimension: phse {
    type: string
    sql: ${TABLE}.PHSE ;;
  }

  dimension: prrty {
    type: number
    sql: ${TABLE}.PRRTY ;;
  }

  dimension: prrty_man_ovrrd_flg {
    type: number
    sql: ${TABLE}.PRRTY_MAN_OVRRD_FLG ;;
  }

  dimension_group: prrty_mod_dt {
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
    sql: ${TABLE}.PRRTY_MOD_DT ;;
  }

  dimension: prsn_id {
    type: number
    sql: ${TABLE}.PRSN_ID ;;
  }

  dimension: que_id {
    type: number
    sql: ${TABLE}.QUE_ID ;;
  }

  dimension_group: sla_due_dt {
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
    sql: ${TABLE}.SLA_DUE_DT ;;
  }

  dimension_group: start_at_dt {
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
    sql: ${TABLE}.START_AT_DT ;;
  }

  dimension: stat {
    type: string
    sql: ${TABLE}.STAT ;;
  }

  dimension_group: suprt_sla_dt {
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
    sql: ${TABLE}.SUPRT_SLA_DT ;;
  }

  dimension: tax_sale_flg {
    type: number
    sql: ${TABLE}.TAX_SALE_FLG ;;
  }

  dimension: tot_tm_on_hld_cnt {
    type: number
    sql: ${TABLE}.TOT_TM_ON_HLD_CNT ;;
  }

  dimension: tot_tm_wait_cnt {
    type: number
    sql: ${TABLE}.TOT_TM_WAIT_CNT ;;
  }

  dimension: tot_work_tm_cnt {
    type: number
    sql: ${TABLE}.TOT_WORK_TM_CNT ;;
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
    drill_fields: [bus_cs_id,start_at_dt_date,sla_due_dt_date,close_at_dt_date,prsn_id,que_id,stat,prrty,tot_tm_on_hld_cnt,tot_tm_wait_cnt,tot_work_tm_cnt,loan_id]
  }
}
