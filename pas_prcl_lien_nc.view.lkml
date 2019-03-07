view: pas_prcl_lien_nc {
  sql_table_name: dbo.PAS_PRCL_LIEN_NC ;;

  dimension: assess_prcl_id {
    type: string
    sql: ${TABLE}.ASSESS_PRCL_ID ;;
  }

  dimension: lien_key {
    type: number
    sql: ${TABLE}.LIEN_KEY ;;
  }

  dimension: lien_typ {
    type: string
    sql: ${TABLE}.LIEN_TYP ;;
  }

  dimension: ln_prcl_key {
    type: number
    sql: ${TABLE}.LN_PRCL_KEY ;;
  }

  dimension: ln_sor_cd {
    type: string
    sql: ${TABLE}.LN_SOR_CD ;;
  }

  dimension: pcl_prcl_key {
    type: number
    sql: ${TABLE}.PCL_PRCL_KEY ;;
  }

  dimension: pcl_sor_cd {
    type: string
    sql: ${TABLE}.PCL_SOR_CD ;;
  }

  dimension: stat_cd {
    type: string
    sql: ${TABLE}.STAT_CD ;;
  }

  dimension: tax_id {
    type: string
    sql: ${TABLE}.TAX_ID ;;
  }

  dimension: txauth_id {
    type: string
    sql: ${TABLE}.TXAUTH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
