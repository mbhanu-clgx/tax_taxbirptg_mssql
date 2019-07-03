view: r3_main_dash_qtpfinal {
  sql_table_name: dbo.R3MainDashQTPFinal ;;

  dimension: case_category_name {
    type: string
    sql: ${TABLE}.CaseCategoryName ;;
    suggest_persist_for: "1 minute"
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.CaseType ;;
    suggest_persist_for: "1 minute"
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: finished_by_location {
    type: string
    sql: ${TABLE}.FinishedByLocation ;;
    suggest_persist_for: "1 minute"
  }

  dimension: lmmet_sla {
    type: number
    sql: ${TABLE}.LMMetSla ;;
  }

  dimension: lmpeople_days {
    type: number
    sql: ${TABLE}.LMPeopleDays ;;
  }

  dimension: lmqccase_cnt {
    type: number
    sql: ${TABLE}.LMQCCaseCnt ;;
  }

  dimension: lmqcfail_cnt {
    type: number
    sql: ${TABLE}.LMQCFailCnt ;;
  }

  dimension: lmtotal_sla {
    type: number
    sql: ${TABLE}.LMTotalSla ;;
  }

  dimension: lmvolume {
    type: number
    sql: ${TABLE}.LMVolume ;;
  }

  dimension: lrqmet_sla {
    type: number
    sql: ${TABLE}.LRQMetSla ;;
  }

  dimension: lrqpeople_days {
    type: number
    sql: ${TABLE}.LRQPeopleDays ;;
  }

  dimension: lrqqccase_cnt {
    type: number
    sql: ${TABLE}.LRQQCCaseCnt ;;
  }

  dimension: lrqqcfail_cnt {
    type: number
    sql: ${TABLE}.LRQQCFailCnt ;;
  }

  dimension: lrqtotal_sla {
    type: number
    sql: ${TABLE}.LRQTotalSla ;;
  }

  dimension: lrqvolume {
    type: number
    sql: ${TABLE}.LRQVolume ;;
  }

  dimension: pmmet_sla {
    type: number
    sql: ${TABLE}.PMMetSla ;;
  }

  dimension: pmpeople_days {
    type: number
    sql: ${TABLE}.PMPeopleDays ;;
  }

  dimension: pmqccase_cnt {
    type: number
    sql: ${TABLE}.PMQCCaseCnt ;;
  }

  dimension: pmqcfail_cnt {
    type: number
    sql: ${TABLE}.PMQCFailCnt ;;
  }

  dimension: pmtotal_sla {
    type: number
    sql: ${TABLE}.PMTotalSla ;;
  }

  dimension: pmvolume {
    type: number
    sql: ${TABLE}.PMVolume ;;
  }

  dimension: prqmet_sla {
    type: number
    sql: ${TABLE}.PRQMetSla ;;
  }

  dimension: prqpeople_days {
    type: number
    sql: ${TABLE}.PRQPeopleDays ;;
  }

  dimension: prqqccase_cnt {
    type: number
    sql: ${TABLE}.PRQQCCaseCnt ;;
  }

  dimension: prqqcfail_cnt {
    type: number
    sql: ${TABLE}.PRQQCFailCnt ;;
  }

  dimension: prqtotal_sla {
    type: number
    sql: ${TABLE}.PRQTotalSla ;;
  }

  dimension: prqvolume {
    type: number
    sql: ${TABLE}.PRQVolume ;;
  }

  dimension: pymmet_sla {
    type: number
    sql: ${TABLE}.PYMMetSla ;;
  }

  dimension: pympeople_days {
    type: number
    sql: ${TABLE}.PYMPeopleDays ;;
  }

  dimension: pymqccase_cnt {
    type: number
    sql: ${TABLE}.PYMQCCaseCnt ;;
  }

  dimension: pymqcfail_cnt {
    type: number
    sql: ${TABLE}.PYMQCFailCnt ;;
  }

  dimension: pymtotal_sla {
    type: number
    sql: ${TABLE}.PYMTotalSla ;;
  }

  dimension: pymvolume {
    type: number
    sql: ${TABLE}.PYMVolume ;;
  }

  dimension: pyrqmet_sla {
    type: number
    sql: ${TABLE}.PYRQMetSla ;;
  }

  dimension: pyrqpeople_days {
    type: number
    sql: ${TABLE}.PYRQPeopleDays ;;
  }

  dimension: pyrqqccase_cnt {
    type: number
    sql: ${TABLE}.PYRQQCCaseCnt ;;
  }

  dimension: pyrqqcfail_cnt {
    type: number
    sql: ${TABLE}.PYRQQCFailCnt ;;
  }

  dimension: pyrqtotal_sla {
    type: number
    sql: ${TABLE}.PYRQTotalSla ;;
  }

  dimension: pyrqvolume {
    type: number
    sql: ${TABLE}.PYRQVolume ;;
  }

  dimension: pytdmet_sla {
    type: number
    sql: ${TABLE}.PYTDMetSla ;;
  }

  dimension: pytdpeople_days {
    type: number
    sql: ${TABLE}.PYTDPeopleDays ;;
  }

  dimension: pytdqccase_cnt {
    type: number
    sql: ${TABLE}.PYTDQCCaseCnt ;;
  }

  dimension: pytdqcfail_cnt {
    type: number
    sql: ${TABLE}.PYTDQCFailCnt ;;
  }

  dimension: pytdtotal_sla {
    type: number
    sql: ${TABLE}.PYTDTotalSla ;;
  }

  dimension: pytdvolume {
    type: number
    sql: ${TABLE}.PYTDVolume ;;
  }

  dimension: ytdmet_sla {
    type: number
    sql: ${TABLE}.YTDMetSla ;;
  }

  dimension: ytdpeople_days {
    type: number
    sql: ${TABLE}.YTDPeopleDays ;;
  }

  dimension: ytdqccase_cnt {
    type: number
    sql: ${TABLE}.YTDQCCaseCnt ;;
  }

  dimension: ytdqcfail_cnt {
    type: number
    sql: ${TABLE}.YTDQCFailCnt ;;
  }

  dimension: ytdtotal_sla {
    type: number
    sql: ${TABLE}.YTDTotalSla ;;
  }

  dimension: ytdvolume {
    type: number
    sql: ${TABLE}.YTDVolume ;;
  }

  measure: count {
    type: count
#     drill_fields: [case_category_name]
  }

  measure: sum_LMMetSla {
    type: sum
    sql: ${TABLE}.LMMetSla;;
  }

  measure: sum_LMPeopleDays {
    type: sum
    sql: ${TABLE}.LMPeopleDays;;
  }

  measure: sum_LMQCCaseCnt {
    type: sum
    sql: ${TABLE}.LMQCCaseCnt;;
    value_format: "0.00"
  }

  measure: sum_LMQCFailCnt {
    type: sum
    sql: ${TABLE}.LMQCFailCnt;;
#     value_format: "0.00"
  }

  measure: sum_LMTotalSla {
    type: sum
    sql: ${TABLE}.LMTotalSla;;
  }

  measure: sum_LMVolume {
    type: sum
    sql: ${TABLE}.LMVolume;;
  }

  measure: sum_LRQMetSla {
    type: sum
    sql: ${TABLE}.LRQMetSla;;
  }

  measure: sum_LRQPeopleDays {
    type: sum
    sql: ${TABLE}.LRQPeopleDays;;
  }

  measure: sum_LRQQCCaseCnt {
    type: sum
    sql: ${TABLE}.LRQQCCaseCnt;;
  }

  measure: sum_LRQQCFailCnt {
    type: sum
    sql: ${TABLE}.LRQQCFailCnt;;
  }

  measure: sum_LRQTotalSla {
    type: sum
    sql: ${TABLE}.LRQTotalSla;;
  }

  measure: sum_LRQVolume {
    type: sum
    sql: ${TABLE}.LRQVolume;;
  }

  measure: sum_PMMetSla {
    type: sum
    sql: ${TABLE}.PMMetSla;;
  }

  measure: sum_PMPeopleDays {
    type: sum
    sql: ${TABLE}.PMPeopleDays;;
  }

  measure: sum_PMQCCaseCnt {
    type: sum
    sql: ${TABLE}.PMQCCaseCnt;;
  }

  measure: sum_PMQCFailCnt {
    type: sum
    sql: ${TABLE}.PMQCFailCnt;;
  }

  measure: sum_PMTotalSla {
    type: sum
    sql: ${TABLE}.PMTotalSla;;
  }

  measure: sum_PMVolume {
    type: sum
    sql: ${TABLE}.PMVolume;;
  }

  measure: sum_PRQMetSla {
    type: sum
    sql: ${TABLE}.PRQMetSla;;
  }

  measure: sum_PRQPeopleDays {
    type: sum
    sql: ${TABLE}.PRQPeopleDays;;
  }

  measure: sum_PRQQCCaseCnt {
    type: sum
    sql: ${TABLE}.PRQQCCaseCnt;;
  }

  measure: sum_PRQQCFailCnt {
    type: sum
    sql: ${TABLE}.PRQQCFailCnt;;
  }

  measure: sum_PRQTotalSla {
    type: sum
    sql: ${TABLE}.PRQTotalSla;;
  }

  measure: sum_PRQVolume {
    type: sum
    sql: ${TABLE}.PRQVolume;;
  }

  measure: sum_PYMMetSla {
    type: sum
    sql: ${TABLE}.PYMMetSla;;
  }

  measure: sum_PYMPeopleDays {
    type: sum
    sql: ${TABLE}.PYMPeopleDays;;
  }

  measure: sum_PYMQCCaseCnt {
    type: sum
    sql: ${TABLE}.PYMQCCaseCnt;;
  }

  measure: sum_PYMQCFailCnt {
    type: sum
    sql: ${TABLE}.PYMQCFailCnt;;
  }

  measure: sum_PYMTotalSla {
    type: sum
    sql: ${TABLE}.PYMTotalSla;;
  }

  measure: sum_PYMVolume {
    type: sum
    sql: ${TABLE}.PYMVolume;;
  }

  measure: sum_PYRQMetSla {
    type: sum
    sql: ${TABLE}.PYRQMetSla;;
  }

  measure: sum_PYRQPeopleDays {
    type: sum
    sql: ${TABLE}.PYRQPeopleDays;;
  }

  measure: sum_PYRQQCCaseCnt {
    type: sum
    sql: ${TABLE}.PYRQQCCaseCnt;;
  }

  measure: sum_PYRQQCFailCnt {
    type: sum
    sql: ${TABLE}.PYRQQCFailCnt;;
  }

  measure: sum_PYRQTotalSla {
    type: sum
    sql: ${TABLE}.PYRQTotalSla;;
  }

  measure: sum_PYRQVolume {
    type: sum
    sql: ${TABLE}.PYRQVolume;;
  }

  measure: sum_PYTDMetSla {
    type: sum
    sql: ${TABLE}.PYTDMetSla;;
  }

  measure: sum_PYTDPeopleDays {
    type: sum
    sql: ${TABLE}.PYTDPeopleDays;;
  }

  measure: sum_PYTDQCCaseCnt {
    type: sum
    sql: ${TABLE}.PYTDQCCaseCnt;;
  }

  measure: sum_PYTDQCFailCnt {
    type: sum
    sql: ${TABLE}.PYTDQCFailCnt;;
  }

  measure: sum_PYTDTotalSla {
    type: sum
    sql: ${TABLE}.PYTDTotalSla;;
  }

  measure: sum_PYTDVolume {
    type: sum
    sql: ${TABLE}.PYTDVolume;;
  }

  measure: sum_YTDMetSla {
    type: sum
    sql: ${TABLE}.YTDMetSla;;
  }

  measure: sum_YTDPeopleDays {
    type: sum
    sql: ${TABLE}.YTDPeopleDays;;
  }

  measure: sum_YTDQCCaseCnt {
    type: sum
    sql: ${TABLE}.YTDQCCaseCnt;;
  }

  measure: sum_YTDQCFailCnt {
    type: sum
    sql: ${TABLE}.YTDQCFailCnt;;
  }

  measure: sum_YTDTotalSla {
    type: sum
    sql: ${TABLE}.YTDTotalSla;;
  }

  measure: sum_YTDVolume {
    type: sum
    sql: ${TABLE}.YTDVolume;;
  }

  measure: lm_quality {
    type: number
    sql: case when ${sum_LMQCCaseCnt} > 0 then (1-(${sum_LMQCFailCnt}*1.00/${sum_LMQCCaseCnt})) else 0 end;;
    value_format: "0.00%"
  }


  measure: lrq_quality {
    type: number
    sql: case when ${sum_LRQQCCaseCnt} > 0 then 1-(${sum_LRQQCFailCnt}*1.00/${sum_LRQQCCaseCnt})  else 0 end;;
    value_format: "0.00%"
  }

  measure: pm_quality {
    type: number
    sql: case when ${sum_PMQCCaseCnt} > 0 then 1-(${sum_PMQCFailCnt}*1.00/${sum_PMQCCaseCnt}) else 0 end ;;
    value_format: "0.00%"
  }

  measure: prq_quality {
    type: number
    sql: case when ${sum_PRQQCFailCnt} > 0 then 1-(${sum_PRQQCFailCnt}*1.00/${sum_PRQQCCaseCnt}) else 0 end ;;
    value_format: "0.00%"
  }

  measure: pym_quality {
    type: number
    sql: case when ${sum_PYMQCCaseCnt} > 0 then 1-(${sum_PYMQCFailCnt}*1.00/${sum_PYMQCCaseCnt}) else 0 end ;;
    value_format: "0.00%"
  }

  measure: pyrq_quality {
    type: number
    sql: case when ${sum_PYRQQCCaseCnt} > 0 then 1-(${sum_PYRQQCFailCnt}*1.00/${sum_PYRQQCCaseCnt}) else 0 end ;;
    value_format: "0.00%"
  }

  measure: pytd_quality {
    type: number
    sql: case when ${sum_PYTDQCCaseCnt} > 0 then 1-(${sum_PYTDQCFailCnt}*1.00/${sum_PYTDQCCaseCnt}) else 0 end ;;
    value_format: "0.00%"
  }

  measure: ytd_quality {
    type: number
    sql: case when ${sum_YTDQCCaseCnt} > 0 then 1-(${sum_YTDQCFailCnt}*1.00/${sum_YTDQCCaseCnt}) else 0 end ;;
    value_format: "0.00%"
  }

  measure: lm_timeliness {
    type: number
    sql: case when ${sum_LMTotalSla} > 0 then ${sum_LMMetSla}*1.00/${sum_LMTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: lrq_timeliness {
    type: number
    sql: case when ${sum_LRQTotalSla} > 0 then ${sum_LRQMetSla}*1.00/${sum_LRQTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: pm_timeliness {
    type: number
    sql: case when ${sum_PMTotalSla} > 0 then ${sum_PMMetSla}*1.00/${sum_PMTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: prq_timeliness {
    type: number
    sql: case when ${sum_PRQTotalSla} > 0 then ${sum_PRQMetSla}*1.00/${sum_PRQTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: pym_timeliness {
    type: number
    sql: case when ${sum_PYMTotalSla} > 0 then ${sum_PYMMetSla}*1.00/${sum_PYMTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: pyrq_timeliness {
    type: number
    sql: case when ${sum_PYRQTotalSla} > 0 then ${sum_PYRQMetSla}*1.00/${sum_PYRQTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: pytd_timeliness {
    type: number
    sql: case when ${sum_PYTDTotalSla} > 0 then ${sum_PYTDMetSla}*1.00/${sum_PYTDTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: ytd_timeliness {
    type: number
    sql: case when ${sum_YTDTotalSla} > 0 then ${sum_YTDMetSla}*1.00/${sum_YTDTotalSla} else 0 end;;
    value_format: "0.00%"
  }

  measure: lm_productivity  {
    type: number
    sql: case when ${sum_LMPeopleDays} > 0 then ${sum_LMVolume}*1.00/${sum_LMPeopleDays} else 0 end;;
    value_format: "0.00"
  }

  measure: lrq_productivity {
    type: number
    sql: case when ${sum_LRQPeopleDays} > 0 then ${sum_LRQVolume}*1.00/${sum_LRQPeopleDays}  else 0 end;;
    value_format: "0.00"
  }

  measure: pm_productivity {
    type: number
    sql: case when ${sum_PMPeopleDays} > 0 then ${sum_PMVolume}*1.00/${sum_PMPeopleDays} else 0 end ;;
    value_format: "0.00"
  }

  measure: prq_productivity {
    type: number
    sql: case when ${sum_PRQPeopleDays} > 0 then ${sum_PRQVolume}*1.00/${sum_PRQPeopleDays} else 0 end ;;
    value_format: "0.00"
  }

  measure: pym_productivity {
    type: number
    sql: case when ${sum_PYMPeopleDays} > 0 then ${sum_PYMVolume}*1.00/${sum_PYMPeopleDays} else 0 end ;;
    value_format: "0.00"
  }

  measure: pyrq_productivity {
    type: number
    sql: case when ${sum_PYRQPeopleDays} > 0 then ${sum_PYRQVolume}*1.00/${sum_PYRQPeopleDays} else 0 end ;;
    value_format: "0.00"
  }

  measure: pytd_productivity {
    type: number
    sql: case when ${sum_PYTDPeopleDays} > 0 then ${sum_PYTDVolume}*1.00/${sum_PYTDPeopleDays} else 0 end ;;
    value_format: "0.00"
  }

  measure: ytd_productivity {
    type: number
    sql: case when ${sum_YTDPeopleDays} > 0 then ${sum_YTDVolume}*1.00/${sum_YTDPeopleDays} else 0 end ;;
    value_format: "0.00"
  }


}
