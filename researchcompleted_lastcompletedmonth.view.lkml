view: researchcompleted_lastcompletedmonth {
  derived_table: {
    sql: select 'Research Completed' as Metric, 'LastCompletedMonth' as Bucket, Year(CoreDate) as Year, Month(CoreDate) as Month, count(*) as Volume, clientname, casetype, casecategoryname
      from TaxBIRptg.dbo.R3ResearchDashDetailData
      where Year(CoreDate) = Year(cast(DATEADD(MONTH, -1, GETDATE()) as date))
      and Month(CoreDate) = Month(cast(DATEADD(MONTH, -1, GETDATE()) as date))
      group by Year(CoreDate), Month(CoreDate), clientname, casetype, casecategoryname
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

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
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
