view: talon_nc {
  sql_table_name: dbo.TALON_NC ;;

  dimension: agcy_id {
    type: number
    sql: ${TABLE}.Agcy_Id ;;
  }

  dimension: cntrct_id {
    type: number
    sql: ${TABLE}.Cntrct_Id ;;
  }

  dimension: cntrct_lgl_chg_dt {
    type: number
    sql: ${TABLE}.CntrctLglChgDt ;;
  }

  dimension: cntrct_lgl_track_cd {
    type: string
    sql: ${TABLE}.Cntrct_Lgl_Track_Cd ;;
  }

  dimension: cntrct_prpty_sfx {
    type: string
    sql: ${TABLE}.Cntrct_Prpty_Sfx ;;
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.Cust_Id ;;
  }

  dimension_group: dw_end_actv_dt {
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
    sql: ${TABLE}.Dw_End_Actv_Dt ;;
  }

  dimension_group: dw_start_actv_dt {
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
    sql: ${TABLE}.Dw_Start_Actv_Dt ;;
  }

  dimension: loan_id {
    type: string
    sql: ${TABLE}.Loan_Id ;;
  }

  dimension: orig_cd {
    type: string
    sql: ${TABLE}.Orig_Cd ;;
  }

  dimension: serv_typ_key {
    type: number
    sql: ${TABLE}.Serv_Typ_Key ;;
  }

  dimension: srchr_user_id {
    type: string
    sql: ${TABLE}.Srchr_User_Id ;;
  }

  dimension: tax_id {
    type: string
    sql: ${TABLE}.Tax_Id ;;
  }

  dimension_group: tax_lien_add_dt {
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
    sql: ${TABLE}.Tax_Lien_Add_Dt ;;
  }

  dimension_group: tax_lien_agcy_chng_dt {
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
    sql: ${TABLE}.Tax_Lien_Agcy_Chng_Dt ;;
  }

  dimension_group: tax_lien_issue_dt {
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
    sql: ${TABLE}.Tax_Lien_Issue_Dt ;;
  }

  dimension_group: tax_lien_rgstr_dt {
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
    sql: ${TABLE}.Tax_Lien_Rgstr_Dt ;;
  }

  dimension_group: tax_lien_serv_chng_dt {
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
    sql: ${TABLE}.Tax_Lien_Serv_Chng_Dt ;;
  }

  dimension: tax_lien_sfx {
    type: string
    sql: ${TABLE}.Tax_Lien_Sfx ;;
  }

  dimension: tax_lien_stat_cd {
    type: string
    sql: ${TABLE}.Tax_Lien_Stat_Cd ;;
  }

  dimension_group: tax_lien_stat_chng_dt {
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
    sql: ${TABLE}.Tax_Lien_Stat_Chng_Dt ;;
  }

  dimension_group: tax_lien_tax_id_chng_dt {
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
    sql: ${TABLE}.Tax_Lien_Tax_Id_Chng_Dt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
