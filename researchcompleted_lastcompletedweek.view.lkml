view: researchcompleted_lastcompletedweek {
  derived_table: {
    sql: select 'Research Completed' as Metric, 'LastCompletedWeek' as Bucket,Cast(DATEADD(wk, datediff(wk, 0, getdate()) - 1, 0) as date) as LastWeekStart,count(*) as Volume, clientname, casetype, casecategoryname
      from TaxBIRptg.dbo.R3ResearchDashDetailData
      where CoreDate >= Cast(DATEADD(wk, datediff(wk, 0, getdate()) - 1, 0) as date)
      and CoreDate < Cast(DATEADD(wk, datediff(wk, 0, getdate()) - 0, 0) as date)
      group by clientname, casetype, casecategoryname
       ;;
  }


  dimension: metric {
    type: string
    sql: ${TABLE}.Metric ;;
  }

  dimension: bucket {
    type: string
    sql: ${TABLE}.Bucket ;;
  }

  dimension: last_week_start {
    type: date
    sql: ${TABLE}.LastWeekStart ;;
  }

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  dimension: clientname {
    type: string
    sql: ${TABLE}.clientname ;;
  }

  dimension: casetype {
    type: string
    sql: ${TABLE}.casetype ;;
  }

  dimension: casecategoryname {
    type: string
    sql: ${TABLE}.casecategoryname ;;
  }

  measure: total_volume {
    type: sum
    sql: ${volume} ;;
  }
}
