view: sql_runner_query {
  derived_table: {
    sql: select 'DOI' as Metric, 'OpenCurrent' as Bucket, cast(GETDATE() as Date) as AsOfDate,
      cast(cast(count(*) as float) / (select count(*)/5
        from TaxBIRptg.dbo.R3ResearchDashDetailData
        where CoreDate between cast(GETDATE()-7 as Date) and cast(GETDATE()-1 as Date)) as Decimal(10,2)) as Volume
      from TaxBIRptg.dbo.R3ResearchDashDetailData
      where StartDate < cast(GETDATE() as Date)
      and (CoreDate is null or CoreDate >= cast(GETDATE() as Date))
      and (CloseDate is null or CloseDate >= cast(GETDATE() as Date))
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
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

  set: detail {
    fields: [metric, bucket, as_of_date, volume]
  }
}
