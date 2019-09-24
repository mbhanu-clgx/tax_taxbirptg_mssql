view: researchcompleted_sincelastweekday {
  derived_table: {
    sql: select 'Research Completed' as Metric, 'SinceLastWeekDay' as Bucket,Min(CoreDate) as LastWeekDay, count(*) as Volume,  clientname, casetype, casecategoryname
      from TaxBIRptg.dbo.R3ResearchDashDetailData
      where (DATEPART(weekday, getdate()) = 2 and CoreDate >= cast(GETDATE()-3 as date))
      or (DATEPART(weekday, getdate()) = 1 and CoreDate >= cast(GETDATE()-2 as date))
      or (DATEPART(weekday, getdate()) not in (1,2) and CoreDate = cast(GETDATE()-1 as date))
      group by coredate, clientname, casetype, casecategoryname
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

  dimension: last_week_day {
    type: date
    sql: ${TABLE}.LastWeekDay ;;
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
