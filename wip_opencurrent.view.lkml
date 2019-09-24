view: wip_opencurrent {
  derived_table: {
    sql: select 'WIP' as Metric, 'OpenCurrent' as Bucket, cast(GETDATE() as Date) as AsOfDate, clientname, casetype, casecategoryname,
      count(*) as Volume
      from TaxBIRptg.dbo.R3ResearchDashDetailData
      where StartDate < cast(GETDATE() as Date)
      and (CoreDate is null or CoreDate >= cast(GETDATE() as Date))
      and (CloseDate is null or CloseDate >= cast(GETDATE() as Date))
      group by clientname, casetype, casecategoryname
       ;;
  }

  measure: count {
    type: count
#     drill_fields: [detail*]
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

  dimension: volume {
    type: number
    sql: ${TABLE}.Volume ;;
  }

  measure: total_volume {
    type: sum
    sql: ${volume} ;;
  }

#   set: detail {
#     fields: [
#       metric,
#       bucket,
#       as_of_date,
#       clientname,
#       casetype,
#       casecategoryname,
#       volume
#     ]
#   }
}
