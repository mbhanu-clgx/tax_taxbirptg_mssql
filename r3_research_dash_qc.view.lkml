view: r3_research_dash_qc {
  sql_table_name: dbo.R3ResearchDashQC ;;

  dimension: business_case {
    type: number
    sql: ${TABLE}.BusinessCase ;;
  }

  dimension: case_category_id {
    type: number
    sql: ${TABLE}.CaseCategoryId ;;
  }

  dimension: case_category_name {
    type: string
    sql: ${TABLE}.CaseCategoryName ;;
  }

  dimension: case_priority {
    type: number
    sql: ${TABLE}.CasePriority ;;
  }

  dimension: case_status {
    type: string
    sql: ${TABLE}.CaseStatus ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.CaseType ;;
  }

  dimension: case_type_id {
    type: number
    sql: ${TABLE}.CaseTypeId ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.ClientId ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.ClientName ;;
  }

  dimension_group: close {
    type: time
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
    sql: ${TABLE}.CloseDate ;;
  }

  dimension_group: close_date_ts {
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
    sql: ${TABLE}.CloseDateTS ;;
  }

  dimension_group: core {
    type: time
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
    sql: ${TABLE}.CoreDate ;;
  }

  dimension_group: core_date_ts {
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
    sql: ${TABLE}.CoreDateTS ;;
  }

  dimension: finished_by_assignment_id {
    type: string
    sql: ${TABLE}.FinishedByAssignmentId ;;
  }

  dimension: finished_by_first_name {
    type: string
    sql: ${TABLE}.FinishedByFirstName ;;
  }

  dimension: finished_by_last_name {
    type: string
    sql: ${TABLE}.FinishedByLastName ;;
  }

  dimension: finished_by_location {
    type: string
    sql: ${TABLE}.FinishedByLocation ;;
  }

  dimension: finished_by_person_id {
    type: number
    sql: ${TABLE}.FinishedByPersonId ;;
  }

  dimension: finished_by_person_status {
    type: string
    sql: ${TABLE}.FinishedByPersonStatus ;;
  }

  dimension: loan_id {
    type: string
    sql: ${TABLE}.LoanId ;;
  }

  dimension: qc1_count {
    type: number
    sql: ${TABLE}.QC1Count ;;
  }

  dimension: qc2_count {
    type: number
    sql: ${TABLE}.QC2Count ;;
  }

  dimension_group: qccase_assignment_date_ts {
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
    sql: ${TABLE}.QCCaseAssignmentDateTS ;;
  }

  dimension: qccase_assignment_id {
    type: number
    sql: ${TABLE}.QCCaseAssignmentId ;;
  }

  dimension: qccase_assignment_person_first_name {
    type: string
    sql: ${TABLE}.QCCaseAssignmentPersonFirstName ;;
  }

  dimension: qccase_assignment_person_id {
    type: number
    sql: ${TABLE}.QCCaseAssignmentPersonId ;;
  }

  dimension: qccase_assignment_person_last_name {
    type: string
    sql: ${TABLE}.QCCaseAssignmentPersonLastName ;;
  }

  dimension: qccase_assignment_person_location {
    type: string
    sql: ${TABLE}.QCCaseAssignmentPersonLocation ;;
  }

  dimension: qccase_assignment_person_status {
    type: string
    sql: ${TABLE}.QCCaseAssignmentPersonStatus ;;
  }

  dimension: qccase_assignment_row_number {
    type: number
    sql: ${TABLE}.QCCaseAssignmentRowNumber ;;
  }

  dimension: qccase_assignment_type {
    type: string
    sql: ${TABLE}.QCCaseAssignmentType ;;
  }

  dimension: qccase_assignment_type_row_number {
    type: number
    sql: ${TABLE}.QCCaseAssignmentTypeRowNumber ;;
  }

  dimension_group: qccase_assignment_work_start_date_ts {
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
    sql: ${TABLE}.QCCaseAssignmentWorkStartDateTS ;;
  }

  dimension: qcdelay_days {
    type: number
    sql: ${TABLE}.QCDelayDays ;;
  }

  dimension: qcdelay_minutes {
    type: number
    sql: ${TABLE}.QCDelayMinutes ;;
  }

  dimension: qcduration_days {
    type: number
    sql: ${TABLE}.QCDurationDays ;;
  }

  dimension: qcduration_minutes {
    type: number
    sql: ${TABLE}.QCDurationMinutes ;;
  }

  dimension: qcfailed_flag {
    type: number
    sql: ${TABLE}.QCFailedFlag ;;
  }

  dimension: qcfailed_question_cnt {
    type: number
    sql: ${TABLE}.QCFailedQuestionCnt ;;
  }

  dimension: qcperson_conflict_flag {
    type: number
    sql: ${TABLE}.QCPersonConflictFlag ;;
  }

  dimension: qcperson_first_name {
    type: string
    sql: ${TABLE}.QCPersonFirstName ;;
  }

  dimension: qcperson_id {
    type: number
    sql: ${TABLE}.QCPersonId ;;
  }

  dimension: qcperson_last_name {
    type: string
    sql: ${TABLE}.QCPersonLastName ;;
  }

  dimension: qcperson_location {
    type: string
    sql: ${TABLE}.QCPersonLocation ;;
  }

  dimension: qcperson_status {
    type: string
    sql: ${TABLE}.QCPersonStatus ;;
  }

  dimension: qcquestion_cnt {
    type: number
    sql: ${TABLE}.QCQuestionCnt ;;
  }

  dimension: qcresearch_person_conflict_flag {
    type: number
    sql: ${TABLE}.QCResearchPersonConflictFlag ;;
  }

  dimension: qcresearch_person_first_name {
    type: string
    sql: ${TABLE}.QCResearchPersonFirstName ;;
  }

  dimension: qcresearch_person_id {
    type: number
    sql: ${TABLE}.QCResearchPersonId ;;
  }

  dimension: qcresearch_person_last_name {
    type: string
    sql: ${TABLE}.QCResearchPersonLastName ;;
  }

  dimension: qcresearch_person_location {
    type: string
    sql: ${TABLE}.QCResearchPersonLocation ;;
  }

  dimension: qcresearch_person_status {
    type: string
    sql: ${TABLE}.QCResearchPersonStatus ;;
  }

  dimension_group: qcresult_create {
    type: time
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
    sql: ${TABLE}.QCResultCreateDate ;;
  }

  dimension_group: qcresult_create_date_ts {
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
    sql: ${TABLE}.QCResultCreateDateTS ;;
  }

  dimension: qcresult_id {
    type: number
    sql: ${TABLE}.QCResultId ;;
  }

  dimension: qctype {
    type: number
    sql: ${TABLE}.QCType ;;
  }

  dimension_group: sla {
    type: time
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
    sql: ${TABLE}.SlaDate ;;
  }

  dimension_group: start {
    type: time
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension_group: start_date_ts {
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
    sql: ${TABLE}.StartDateTS ;;
  }

  measure: count {
    type: count
#     drill_fields: [detail*]
  }

  measure: sum_qcdelay_minutes {
    type:  sum
    sql: ${qcdelay_minutes} ;;
  }

  measure: sum_qcduration_minutes {
    type:  sum
    sql: ${qcduration_minutes} ;;
  }

  measure: QCTime {
    type: number
    sql: (${sum_qcdelay_minutes} * 1.00 + ${sum_qcduration_minutes})/1440 / ${count} ;;
    value_format: "0.00"
  }

#   measure: cont_businesscase {
#     type: count_distinct
#     filters: {
#       field: QCTime
#       value: "<=5"
#     }
#     sql: ${business_case} ;;
#   }

  measure: cnt_qcresultid {
    type:  sum
    sql: case when ${TABLE}.QCResultId is not null then 1 else 0 end ;;
  }

  measure: sum_QCFailedFlag {
    type: sum
    sql: ${TABLE}.QCFailedFlag ;;
  }

  measure: QCQuality  {
    type: number
    sql: case when ${cnt_qcresultid} >0 then 1- (${sum_QCFailedFlag} * 1.00/${cnt_qcresultid}) else 0 end ;;
    value_format: "0.00%"
  }


  # ----- Sets of fields for drilling ------
#   set: detail {
#     fields: [
#       case_category_name,
#       client_name,
#       finished_by_first_name,
#       finished_by_last_name,
#       qccase_assignment_person_first_name,
#       qccase_assignment_person_last_name,
#       qcperson_first_name,
#       qcperson_last_name,
#       qcresearch_person_first_name,
#       qcresearch_person_last_name
#     ]
#   }
}
