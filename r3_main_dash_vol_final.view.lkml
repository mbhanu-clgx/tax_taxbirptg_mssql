view: r3_main_dash_vol_final {
  sql_table_name: dbo.R3MainDashVolFinal ;;

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

  dimension: csdcvolume {
    type: number
    sql: ${TABLE}.CSDCVolume ;;
  }

  dimension: fpytdvolume {
    type: number
    sql: ${TABLE}.FPYTDVolume ;;
  }

  dimension: fytdvolume {
    type: number
    sql: ${TABLE}.FYTDVolume ;;
  }

  dimension: ocvolume {
    type: number
    sql: ${TABLE}.OCVolume ;;
  }

  dimension: omslavolume {
    type: number
    sql: ${TABLE}.OMSLAVolume ;;
  }

  dimension: opmvolume {
    type: number
    sql: ${TABLE}.OPMVolume ;;
  }

  dimension: otmpvolume {
    type: number
    sql: ${TABLE}.OTMPVolume ;;
  }

  dimension: pmsdcvolume {
    type: number
    sql: ${TABLE}.PMSDCVolume ;;
  }

  dimension: uvolume {
    type: number
    sql: ${TABLE}.UVolume ;;
  }

  measure: count {
    type: count
#     drill_fields: [case_category_name]
  }

  measure: sum_OCVolume {
    type: sum
    sql: ${TABLE}.OCVolume;;
  }

  measure: sum_OPMVolume {
    type: sum
    sql: ${TABLE}.OPMVolume;;
  }

  measure: sum_OTMPVolume {
    type: sum
    sql: ${TABLE}.OTMPVolume;;
  }

  measure: sum_FYTDVolume {
    type: sum
    sql: ${TABLE}.FYTDVolume;;
  }

  measure: sum_FPYTDVolume {
    type: sum
    sql: ${TABLE}.FPYTDVolume;;
  }

  measure: sum_CSDCVolume {
    type: sum
    sql: ${TABLE}.CSDCVolume;;
  }

  measure: sum_PMSDCVolume {
    type: sum
    sql: ${TABLE}.PMSDCVolume;;
  }

  measure: sum_OMSLAVolume {
    type: sum
    sql: ${TABLE}.OMSLAVolume;;
  }

  measure: sum_UVolume {
    type: sum
    sql: ${TABLE}.UVolume;;
  }

  measure: DOI {
    type: number
    sql: case when ${sum_CSDCVolume} > 0 then ${sum_OCVolume}*7.0/(${sum_CSDCVolume} )  else 0 end;;
    value_format: "#.00"
  }

  measure: PMDOI {
    type: number
    sql: case when ${sum_PMSDCVolume} > 0 then ${sum_OPMVolume}*7.0/(${sum_PMSDCVolume})  else 0 end;;
    value_format: "#.00"
  }

  measure: MissedSLA {
    type: number
    sql: case when ${sum_OCVolume} > 0 then  ${sum_OMSLAVolume} * 1.0 /(${sum_OCVolume} )  else 0 end;;
    value_format: "0.00%"
  }

  measure: ctlMissedSLA {
    type: number
    sql: case when (${sum_OCVolume} - ${sum_UVolume}) <> 0 then (${sum_OMSLAVolume} - ${sum_UVolume})*1.0 / (${sum_OCVolume} - ${sum_UVolume})  else 0 end;;
    value_format: "0.00%"
  }









}
