view: doi_opencurrent {
  derived_table: {
    sql: with cte as (select count(*)/5 as cnt
        from TaxBIRptg.dbo.R3ResearchDashDetailData
        where CoreDate between cast(GETDATE()-7 as Date) and cast(GETDATE()-1 as Date)
            and {% condition clientname %} R3ResearchDashDetailData.clientname {% endcondition %}
            and {% condition casetype %} R3ResearchDashDetailData.casetype {% endcondition %}
            and {% condition casecategoryname %} R3ResearchDashDetailData.casecategoryname {% endcondition %})
      select 'DOI' as Metric, 'OpenCurrent' as Bucket, cast(GETDATE() as Date) as AsOfDate, count(*)*1.00/max(cte.cnt) as volume, clientname, casetype, casecategoryname
            from TaxBIRptg.dbo.R3ResearchDashDetailData, cte
            where StartDate < cast(GETDATE() as Date)
            and (CoreDate is null or CoreDate >= cast(GETDATE() as Date))
            and (CloseDate is null or CloseDate >= cast(GETDATE() as Date))
            group by  clientname, casetype, casecategoryname
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
    sql: ${TABLE}.volume ;;
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
