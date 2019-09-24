view: wip_openpriorweek {
  derived_table: {
    sql: select 'WIP' as Metric, 'OpenPriorWeek' as Bucket, cast(DATEADD(Week, -1, GETDATE()) as date) as AsOfDate, count(*) as Volume, clientname, casetype, casecategoryname
      from TaxBIRptg.dbo.R3ResearchDashDetailData
      where StartDate < cast(DATEADD(Week, -1, GETDATE()) as date)
      and (CoreDate is null or CoreDate >= cast(DATEADD(Week, -1, GETDATE()) as date))
      and (CloseDate is null or CloseDate >= cast(DATEADD(Week, -1, GETDATE()) as date))
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

  dimension: as_of_date {
    type: date
    sql: ${TABLE}.AsOfDate ;;
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
