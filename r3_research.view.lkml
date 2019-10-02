view: r3_research {
  sql_table_name: dbo.R3Research ;;

  dimension: business_case {
    type: number
    sql: ${TABLE}.BusinessCase ;;
  }

  dimension_group: cancelled_by {
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
    sql: ${TABLE}.CancelledByDate ;;
  }

  dimension_group: cancelled_by_date_ts {
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
    sql: ${TABLE}.CancelledByDateTS ;;
  }

  dimension: cancelled_by_person_first_name {
    type: string
    sql: ${TABLE}.CancelledByPersonFirstName ;;
  }

  dimension: cancelled_by_person_id {
    type: number
    sql: ${TABLE}.CancelledByPersonId ;;
  }

  dimension: cancelled_by_person_last_name {
    type: string
    sql: ${TABLE}.CancelledByPersonLastName ;;
  }

  dimension: cancelled_by_person_location {
    type: string
    sql: ${TABLE}.CancelledByPersonLocation ;;
  }

  dimension: cancelled_by_person_status {
    type: string
    sql: ${TABLE}.CancelledByPersonStatus ;;
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

  dimension: days_open {
    type: number
    sql: ${TABLE}.DaysOpen ;;
  }

  dimension: days_open_core {
    type: number
    sql: ${TABLE}.DaysOpenCore ;;
  }

  dimension: days_to_sla {
    type: number
    sql: ${TABLE}.DaysToSla ;;
  }

  dimension: days_to_sla_core {
    type: number
    sql: ${TABLE}.DaysToSlaCore ;;
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

  dimension: hold_time_min {
    type: number
    sql: ${TABLE}.HoldTimeMin ;;
  }

  dimension: loan_id {
    type: string
    sql: ${TABLE}.LoanId ;;
  }

  dimension: missed_sla {
    type: number
    sql: ${TABLE}.MissedSla ;;
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

  dimension_group: sla_date_ts {
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
    sql: ${TABLE}.SlaDateTS ;;
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

  dimension: uncontrollable {
    type: number
    sql: ${TABLE}.Uncontrollable ;;
  }

  dimension: uncontrollable_reason {
    type: string
    sql: ${TABLE}.UncontrollableReason ;;
  }

  dimension: uncontrollable_sla {
    type: number
    sql: ${TABLE}.UncontrollableSLA ;;
  }

  dimension: wait_time_min {
    type: number
    sql: ${TABLE}.WaitTimeMin ;;
  }

  dimension: work_time_min {
    type: number
    sql: ${TABLE}.WorkTimeMin ;;
  }

  dimension: current_date{
    type: date
    sql: cast(getdate() AS date) ;;
  }

  dimension: one_day_ago{
    type: date
    sql: DATEADD(DD,-1,CAST(GETDATE() AS DATE)) ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_opened_one_day_ago{
    type: count
    label: "Opened 1 day ago"
    filters: {
      field: start_date
      value: "1 day ago"
      }
  }

  measure: count_opened_two_days_ago{
    type: count
    label: "Opened 2 days ago"
    filters: {
      field: start_date
      value: "2 days ago"
    }
  }
  measure: count_opened_three_days_ago{
    type: count
    label: "Opened 3 days ago"
    filters: {
      field: start_date
      value: "3 days ago"
    }
  }
  measure: count_opened_four_days_ago{
    type: count
    label: "Opened 4 days ago"
    filters: {
      field: start_date
      value: "4 days ago"
    }
  }
  measure: count_opened_five_days_ago{
    type: count
    label: "Opened 5 days ago"
    filters: {
      field: start_date
      value: " 5 days ago"
    }
  }

  measure: count_closed_one_day_ago{
    type: count
    label: "Closed 1 day ago"
    filters: {
      field: core_date
      value: "1 day ago"
    }
  }

  measure: count_closed_two_days_ago{
    type: count
    label: "Closed 2 days ago"
    filters: {
      field: core_date
      value: "2 days ago"
    }
  }
  measure: count_closed_three_days_ago{
    type: count
    label: "Closed 3 days ago"
    filters: {
      field: core_date
      value: "3 days ago"
    }
  }
  measure: count_closed_four_days_ago{
    type: count
    label: "Closed 4 days ago"
    filters: {
      field: core_date
      value: "4 days ago"
    }
  }
  measure: count_closed_five_days_ago{
    type: count
    label: "Closed 5 days ago"
    filters: {
      field: core_date
      value: " 5 days ago"
    }
  }

  measure: remaining_balance{
    type: count
    label: "Remaining Balance"
    filters: {
      field: core_date
      value: "NULL"
    }
    filters: {
      field: close_date
      value: "NULL"
    }

    filters: {
      field: case_status
      value: "PROCESSING"
    }

  }

  measure: count_in_standard{
    type: count
    label: "In Standard"
    filters: {
      field: days_to_sla_core
      value: ">0"
    }
  }

  measure: count_oos_today{
    type: count
    label: "OOS Today"

    filters: {
      field: core_date
      value: "NULL"
    }
    filters: {
      field: close_date
      value: "NULL"
    }

    filters: {
      field: case_status
      value: "PROCESSING"
    }

    filters: {
      field: days_to_sla_core
      value: "0"
    }
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      case_category_name,
      client_name,
      finished_by_first_name,
      finished_by_last_name,
      cancelled_by_person_first_name,
      cancelled_by_person_last_name,
      qccase_assignment_person_first_name,
      qccase_assignment_person_last_name,
      qcperson_first_name,
      qcperson_last_name,
      qcresearch_person_first_name,
      qcresearch_person_last_name
    ]
  }
}
