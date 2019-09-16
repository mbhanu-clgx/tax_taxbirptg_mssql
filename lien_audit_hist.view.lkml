view: lien_audit_hist {
  view_label: " "
  sql_table_name: dbo.LienAuditHist ;;

  dimension: cnt_pas_lines {
    type: number
    sql: ${TABLE}.CntPasLines ;;
    label: "CntPasLines"
  }

  dimension: cnt_talon_lines {
    type: number
    sql: ${TABLE}.CntTalonLines ;;
    label: "CntTalonLines"
  }

  dimension: cnt_talon_pas_na_lines {
    type: number
    sql: ${TABLE}.CntTalonPasNaLines ;;
    label: "CntTalonPasNaLines"
  }

  dimension_group: last_load_ts {
    hidden: yes
    label: " Last Load Date Filter"
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
    sql: ${TABLE}.LastLoadTs ;;
  }
  dimension: LastLoadTs{
    label: "LastLoadTs"
    type: string
    sql:CONVERT(varchar, ${TABLE}.LastLoadTs, 101) ;;
  }
  dimension: non_collect_ind {
    type: string
    sql: ${TABLE}.NonCollectInd ;;
    label: "NonCollectInd"
  }

  dimension: pas_not_talon {
    type: number
    sql: ${TABLE}.PasNotTalon ;;
    label: "PasNotTalon"
  }

  dimension_group: process {
    type: time
    hidden: no
    label: "Filter Process"
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
  dimension: process_dt{
    label: "ProcessDate"
    type: string
    sql:CONVERT(varchar, ${TABLE}.ProcessDate, 101) ;;
  }

  dimension: process_type {
    type: string
    sql: ${TABLE}.ProcessType ;;
    label: "ProcessType"
  }

  dimension: state_abbr {
    type: string
    sql: ${TABLE}.StateAbbr ;;
    label: "StateAbbr"
  }

  dimension: talon_not_pas {
    type: number
    sql: ${TABLE}.TalonNotPas ;;
    label: "TalonNotPas"
  }

  dimension: tx_auth_cnty_nm {
    type: string
    sql: ${TABLE}.TxAuthCntyNm ;;
    label: "TxAuthCntyNm"
  }

  dimension: tx_auth_id {
    type: number
    sql: ${TABLE}.TxAuthId ;;
    label: "TxAuthId"
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
  measure : TxAuthids{
    type: number
    sql: count(TxAuthId);;
    label: "TxAuthids"
    }
    measure:CntTalonLines{
      type:sum
      sql:CntTalonLines;;
      label: "CntTalonLines"
      }
  measure:CntPasLines{
    type:sum
    sql:CntPasLines;;
    label: "CntPasLines"
  }
  measure:CntTalonNotPas{
    type:sum
    sql:TalonNotPas;;
    label: "CntTalonNotPas"
  }
  measure:CntPasNotTalon{
    type:sum
    sql:PasNotTalon;;
    label: "CntPasNotTalon"
  }
  measure:TalonPasNaLines{
    type:sum
    sql:CntTalonPasNaLines;;
    label: "TalonPasNaLines"
  }
  measure: PortionTalonNotPas {
    type: number
    sql:(1.000*${CntTalonNotPas})/nullif(${CntTalonLines},0) ;;
       value_format_name: percent_1
    label: "PortionTalonNotPas"
  }
  measure: PortionPasNotTalon {
    type: number
    sql: (1.000*${CntPasNotTalon})/nullif(${CntTalonLines},0) ;;
        value_format_name: percent_1
    label: "PortionPasNotTalon"
  }
  measure: PortionNa {
    type: number
    sql: (1.000*${TalonPasNaLines})/nullif(${CntTalonLines},0) ;;
    value_format_name: percent_1
    label: "PortionNa"
  }


}
