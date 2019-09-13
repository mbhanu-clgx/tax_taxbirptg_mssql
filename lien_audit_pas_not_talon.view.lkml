view: lien_audit_pas_not_talon {
  view_label: " "
  sql_table_name: dbo.LienAuditPasNotTalon ;;

  dimension: cntrct_id {
    type: number
    sql: ${TABLE}.CntrctId ;;
    label: "CntrctId"
  }

  dimension: ln_tax_id {
    type: string
    sql: ${TABLE}.LnTaxId ;;
    label: "LnTxAuthId"
  }

  dimension: ln_tx_auth_id {
    type: number
    sql: ${TABLE}.LnTxAuthId ;;
    label: "LnTxAuthId"
  }

  dimension: orig_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.OrigCd ;;
    label: "OrigCd"
  }

  dimension_group: process {
    type: time
    label: "Process Date Filter"
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

  dimension: process_type {
    type: string
    sql: ${TABLE}.ProcessType ;;
    label: "Processtype"
  }

  dimension: state_abbr {
    type: string
    sql: ${TABLE}.StateAbbr ;;
    label: "StateAbbr"
  }

  dimension: tx_auth_nm {
    type: string
    sql: ${TABLE}.TxAuthNm ;;
    label: "TxAuthNm"
  }

  measure: count {
    type: count
    drill_fields: []
  }
  dimension: OrigCd_1 {
    type: string
    label: "OrigCd"
  sql:CASE WHEN ORIGCD = '0' THEN '0 - ANOP'
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
