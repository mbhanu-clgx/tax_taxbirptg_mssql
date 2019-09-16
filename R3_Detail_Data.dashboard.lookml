# - dashboard: r3_detail_data
#   title: R3 Detail Data
#   layout: tile
#   tile_size: 100

#   filters:

#   elements:
#     - name: hello_world
#       type: looker_column

- dashboard: r3_detail_data
  title: R3 Detail Data
  layout: newspaper
  elements:
  - name: ''
    type: text
    body_text: '[**<b><font size="3" color="#E03C31">Timeliness Improvement Dashboard</font></b>**](https://sandbox-lookerbi.corelogic.net/dashboards/1258)'
    row: 11
    col: 9
    width: 5
    height: 2
  - name: '1'
    type: text
    body_text: '[**<b><font size="3" color="#E03C31">Quality Improvement Dashboard</font></b>**](https://sandbox-lookerbi.corelogic.net/dashboards/1245)'
    row: 11
    col: 4
    width: 5
    height: 2
  - name: '2'
    type: text
    body_text: '[**<b><font size="3" color="#E03C31">Productivity Improvement Dashboard</font></b>**](https://sandbox-lookerbi.corelogic.net/dashboards/1245)'
    row: 11
    col: 14
    width: 5
    height: 2
  - name: '3'
    type: text
    body_text: '[**<b><font size="3" color="black">Detail Data</font></b>**](https://sandbox-lookerbi.corelogic.net/dashboards/1260)'
    row: 11
    col: 19
    width: 5
    height: 2
  - name: '4'
    type: text
    title_text: ''
    body_text: '[**<b><font size="3" color="#E03C31">R3 Performance Dashboard</font></b>**](https://sandbox-lookerbi.corelogic.net/dashboards/1169)'
    row: 11
    col: 0
    width: 4
    height: 2
  - title: Detail Data
    name: Detail Data
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    type: looker_grid
    fields: [r3_research_dash_detail_data.case_category_id, r3_research_dash_detail_data.case_category_name, r3_research_dash_detail_data.client_id,
      r3_research_dash_detail_data.client_name, r3_research_dash_detail_data.case_priority, r3_research_dash_detail_data.case_status,
      r3_research_dash_detail_data.case_type_id, r3_research_dash_detail_data.case_type, r3_research_dash_detail_data.business_case,
      r3_research_dash_detail_data.finished_by_assignment_id, r3_research_dash_detail_data.finished_by_person_id, r3_research_dash_detail_data.finished_by_first_name,
      r3_research_dash_detail_data.finished_by_last_name, r3_research_dash_detail_data.finished_by_person_status, r3_research_dash_detail_data.finished_by_location,
      r3_research_dash_detail_data.hold_time_min, r3_research_dash_detail_data.wait_time_min, r3_research_dash_detail_data.work_time_min,
      r3_research_dash_detail_data.start_date, r3_research_dash_detail_data.core_date, r3_research_dash_detail_data.close_date, r3_research_dash_detail_data.sla_date,
      r3_research_dash_detail_data.days_open, r3_research_dash_detail_data.days_to_sla, r3_research_dash_detail_data.days_open_core,
      r3_research_dash_detail_data.days_to_sla_core, r3_research_dash_detail_data.loan_id, r3_research_dash_detail_data.qc1_count, r3_research_dash_detail_data.qc2_count,
      r3_research_dash_detail_data.start_date_ts_date, r3_research_dash_detail_data.core_date_ts_date, r3_research_dash_detail_data.close_date_ts_date,
      r3_research_dash_detail_data.sla_date_ts_date, r3_research_dash_detail_data.missed_sla, r3_research_dash_detail_data.uncontrollable,
      r3_research_dash_detail_data.uncontrollable_reason, r3_research_dash_detail_data.uncontrollable_sla, r3_research_dash_detail_data.cancelled_by_date,
      r3_research_dash_detail_data.cancelled_by_date_ts_date, r3_research_dash_detail_data.cancelled_by_person_id, r3_research_dash_detail_data.cancelled_by_person_first_name,
      r3_research_dash_detail_data.cancelled_by_person_last_name, r3_research_dash_detail_data.cancelled_by_person_status,
      r3_research_dash_detail_data.cancelled_by_person_location, r3_research_dash_detail_data.qccase_assignment_row_number,
      r3_research_dash_detail_data.qccase_assignment_type_row_number, r3_research_dash_detail_data.qccase_assignment_id,
      r3_research_dash_detail_data.qccase_assignment_date_ts_date, r3_research_dash_detail_data.qccase_assignment_type,
      r3_research_dash_detail_data.qccase_assignment_person_id, r3_research_dash_detail_data.qccase_assignment_person_first_name,
      r3_research_dash_detail_data.qccase_assignment_person_last_name, r3_research_dash_detail_data.qccase_assignment_person_status,
      r3_research_dash_detail_data.qccase_assignment_person_location, r3_research_dash_detail_data.qccase_assignment_work_start_date_ts_date,
      r3_research_dash_detail_data.qcresult_id, r3_research_dash_detail_data.qcquestion_cnt, r3_research_dash_detail_data.qcresult_create_date,
      r3_research_dash_detail_data.qcresult_create_date_ts_date, r3_research_dash_detail_data.qcfailed_question_cnt,
      r3_research_dash_detail_data.qcfailed_flag, r3_research_dash_detail_data.qctype, r3_research_dash_detail_data.qcperson_id, r3_research_dash_detail_data.qcperson_first_name,
      r3_research_dash_detail_data.qcperson_last_name, r3_research_dash_detail_data.qcperson_status, r3_research_dash_detail_data.qcperson_location,
      r3_research_dash_detail_data.qcperson_conflict_flag, r3_research_dash_detail_data.qcresearch_person_id, r3_research_dash_detail_data.qcresearch_person_first_name,
      r3_research_dash_detail_data.qcresearch_person_last_name, r3_research_dash_detail_data.qcresearch_person_status,
      r3_research_dash_detail_data.qcresearch_person_location, r3_research_dash_detail_data.qcresearch_person_conflict_flag,
      r3_research_dash_detail_data.qcdelay_minutes, r3_research_dash_detail_data.qcdelay_days, r3_research_dash_detail_data.qcduration_minutes,
      r3_research_dash_detail_data.qcduration_days]
    sorts: [r3_research_dash_detail_data.qc1_count desc]
    limit: 5000
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Case Category: r3_research_dash_detail_data.case_category_name
      Client: r3_research_dash_detail_data.client_name
      Case Priority: r3_research_dash_detail_data.case_priority
      Case Status: r3_research_dash_detail_data.case_status
      Case Type: r3_research_dash_detail_data.case_type
      Business Case: r3_research_dash_detail_data.business_case
      Finished By First Name: r3_research_dash_detail_data.finished_by_first_name
      Finished By Last Name: r3_research_dash_detail_data.finished_by_last_name
      Finished By Person Status: r3_research_dash_detail_data.finished_by_person_status
      Finished By Location: r3_research_dash_detail_data.finished_by_location
      Start Date: r3_research_dash_detail_data.start_date
      Core Date: r3_research_dash_detail_data.core_date
      Close Date: r3_research_dash_detail_data.close_date
      SLA Date: r3_research_dash_detail_data.sla_date
      Loan ID: r3_research_dash_detail_data.loan_id
      Missed SLA: r3_research_dash_detail_data.missed_sla
      Uncontrollable Reason: r3_research_dash_detail_data.uncontrollable_reason
      Uncontrollable SLA: r3_research_dash_detail_data.uncontrollable_sla
      QC Type: r3_research_dash_detail_data.qccase_assignment_type
      QC Failed Flag: r3_research_dash_detail_data.qcresearch_person_conflict_flag
    row: 0
    col: 0
    width: 24
    height: 11
  filters:
  - name: Case Category
    title: Case Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.case_category_name
  - name: Client
    title: Client
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.client_name
  - name: Case Priority
    title: Case Priority
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.case_priority
  - name: Case Status
    title: Case Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.case_status
  - name: Case Type
    title: Case Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.case_type
  - name: Business Case
    title: Business Case
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.business_case
  - name: Finished By First Name
    title: Finished By First Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.finished_by_first_name
  - name: Finished By Last Name
    title: Finished By Last Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.finished_by_last_name
  - name: Finished By Person Status
    title: Finished By Person Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.finished_by_person_status
  - name: Finished By Location
    title: Finished By Location
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.finished_by_location
  - name: Start Date
    title: Start Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.start_date
  - name: Core Date
    title: Core Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.core_date
  - name: Close Date
    title: Close Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.close_date
  - name: SLA Date
    title: SLA Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.sla_date
  - name: Loan ID
    title: Loan ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.loan_id
  - name: Missed SLA
    title: Missed SLA
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.missed_sla
  - name: Uncontrollable Reason
    title: Uncontrollable Reason
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.uncontrollable_reason
  - name: Uncontrollable SLA
    title: Uncontrollable SLA
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.uncontrollable_sla
  - name: QC Type
    title: QC Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.qccase_assignment_type
  - name: QC Failed Flag
    title: QC Failed Flag
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.qcfailed_flag
  - name: Researcher Conflict Flag
    title: Researcher Conflict Flag
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: tax_taxbirptg_mssql
    explore: r3_research_dash_detail_data
    listens_to_filters: []
    field: r3_research_dash_detail_data.qcresearch_person_conflict_flag
