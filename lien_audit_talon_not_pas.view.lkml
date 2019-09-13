view: lien_audit_talon_not_pas {
  view_label: " "
  sql_table_name: dbo.LienAuditTalonNotPas ;;

  dimension: cntrct_id {
    type: number
    sql: ${TABLE}.CntrctId ;;
    label: "CntrctId"
  }

  dimension: cntrct_lgl_chg_dt {
    type: number
    value_format: "0"
    sql: ${TABLE}.CntrctLglChgDt ;;
    label: "CntrctLglChgDt"
  }

  dimension: cntrct_lgl_track_cd {
    type: string
    sql: ${TABLE}.CntrctLglTrackCd ;;
    label: "CntrctLglTrackCd"
  }

  dimension: cntrct_prpty_sfx {
    type: string
    sql: ${TABLE}.CntrctPrptySfx ;;
    label: "CntrctPrptySfx"
  }

  dimension: cust_id {
    type: number
    sql: ${TABLE}.CustId ;;
  }

  dimension: loan_id {
    type: string
    sql: ${TABLE}.LoanId ;;
    label: "LoanId"
  }

  dimension: orig_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.OrigCd ;;
  }

  dimension: pas_tax_id {
    type: string
    sql: ${TABLE}.PasTaxId ;;
    label: "PasTaxId"
  }

  dimension: pas_tx_auth_id {
    type: number
    sql: ${TABLE}.PasTxAuthId ;;
    label: "PasTxAuthId"
  }

  dimension_group: process {
    hidden: no
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
    sql: ${TABLE}.ProcessDate ;;
  }
  dimension: ProcessDate  {
    hidden: yes
    type: date
    sql: ${TABLE}.ProcessDate ;;
    label: "ProcessDate"
  }

  dimension: process_type {
    type: string
    sql: ${TABLE}.ProcessType ;;
    label: "ProcessType"
  }

  dimension: serv_typ {
    type: string
    sql: ${TABLE}.ServTyp ;;
    label: "ServTyp"
  }

  dimension: srchr_user_id {
    type: string
    sql: ${TABLE}.SrchrUserId ;;
    label: "SrchrUserId"
  }

  dimension: state_abbr {
    type: string
    sql: ${TABLE}.StateAbbr ;;
    label: "StateAbbr"
  }

  dimension: talon_tax_id {
    type: string
    sql: ${TABLE}.TalonTaxId ;;
    label: "TalonTaxId"
  }

  dimension: talon_tx_auth_id {
    type: number
    sql: ${TABLE}.TalonTxAuthId ;;
    label: "TalonTxAuthId"
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
    sql: ${TABLE}.TaxLienAddDt ;;
#     label: "TaxLienAddDt"
  }
  dimension: TaxLienAddDt  {
    type: date
    sql: ${TABLE}.TaxLienAddDt ;;
    label: "TaxLienAddDt"
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
    sql: ${TABLE}.TaxLienAgcyChngDt ;;
  }
  dimension: TaxLienAgcyChngDt  {
    type: date
    sql: ${TABLE}.TaxLienAgcyChngDt ;;
    label: "TaxLienAgcyChngDt"
  }

  dimension_group: tax_lien_delq_post_dt {
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
    sql: ${TABLE}.TaxLienDelqPostDt ;;
#     label: "TaxLienDelqPostDt"
  }
  dimension: TaxLienDelqPostDt  {
    type: date
    sql: ${TABLE}.TaxLienDelqPostDt ;;
    label: "TaxLienDelqPostDt"
  }

  dimension_group: tax_lien_delq_srch_dt {
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
    sql: ${TABLE}.TaxLienDelqSrchDt ;;
#     label: "TaxLienDelqSrchDt"
  }
  dimension: TaxLienDelqSrchDt  {
    type: date
    sql: ${TABLE}.TaxLienDelqSrchDt ;;
    label: "TaxLienDelqSrchDt"
  }

  dimension: tax_lien_delq_stat_cd {
    type: string
    sql: ${TABLE}.TaxLienDelqStatCd ;;
    label: "TaxLienDelqStatCd"
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
    sql: ${TABLE}.TaxLienIssueDt ;;
    #label: "TaxLienIssueDt"
  }
  dimension: TaxLienIssueDt  {
    type: date
    sql: ${TABLE}.TaxLienIssueDt ;;
    label: "TaxLienIssueDt"
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
    sql: ${TABLE}.TaxLienRgstrDt ;;
#     label: "TaxLienRgstrDt"
  }
  dimension: TaxLienRgstrDt  {
    type: date
    sql: ${TABLE}.TaxLienRgstrDt ;;
    label: "TaxLienRgstrDt"
  }

  dimension_group: tax_lien_serv_chg_dt {
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
    sql: ${TABLE}.TaxLienServChgDt ;;
    label: "TaxLienServChgDt"
  }
  dimension: TaxLienServChgDt  {
    type: date
    sql: ${TABLE}.TaxLienServChgDt ;;
    label: "TaxLienServChgDt"
  }

  dimension: tax_lien_sfx {
    type: string
    sql: ${TABLE}.TaxLienSfx ;;
    label: "TaxLienSfx"
  }

  dimension: tax_lien_stat_cd {
    type: string
    sql: ${TABLE}.TaxLienStatCd ;;
    label: "TaxLienStatCd"
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
    sql: ${TABLE}.TaxLienStatChngDt ;;
#     label: "TaxLienStatChngDt"
  }
  dimension: TaxLienStatChngDt  {
    type: date
    sql: ${TABLE}.TaxLienStatChngDt ;;
    label: "TaxLienStatChngDt"
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
    sql: ${TABLE}.TaxLienTaxIdChngDt ;;
#     label: "TaxLienTaxIdChngDt"
  }
  dimension: TaxLienTaxIdChngDt  {
    type: date
    sql: ${TABLE}.TaxLienTaxIdChngDt ;;
    label: "TaxLienTaxIdChngDt"
  }

  dimension: tx_auth_nm {
    type: string
    sql: ${TABLE}.TxAuthNm ;;
    label: "TxAuthNm"
  }

  dimension: tx_auth_typ_cd {
    type: string
    sql: ${TABLE}.TxAuthTypCd ;;
    label: "TxAuthTypCd"
  }

  measure: count {
    type: count
    drill_fields: []
  }
  dimension: OrigCd {
    type: string
    label: "OrigCd"
    sql: CASE WHEN ORIGCD = '0' THEN '0 - ANOP'
      WHEN ORIGCD = '1' THEN '1 - TINET ADDS'
      WHEN ORIGCD = '2' THEN '2 - EAGLE1'
      WHEN ORIGCD = '3' THEN '3 - ATSU'
      WHEN ORIGCD = '7' THEN '7 - TAX CERTIFICATIONS'
      WHEN ORIGCD = 'A' THEN 'A - ONLINE BOARDING'
      WHEN ORIGCD = 'C' THEN 'C - SMART'
      WHEN ORIGCD = 'D' THEN 'D - DATA SERVICES'
      WHEN ORIGCD = 'G' THEN 'G - COMMERCIAL TAX SERV'
      WHEN ORIGCD = 'K' THEN 'K - NORM'
      WHEN ORIGCD = 'L' THEN 'L - TRANSAMERICA CONV'
      WHEN ORIGCD = 'O' THEN 'O - ADDS'
      WHEN ORIGCD = 'T' THEN 'T - SMARTWEB'
      WHEN ORIGCD = 'U' THEN 'U - ACQUISITIONS'
      ELSE 'OTHER' END;;
  }
}
