Feature: Assign new First Call Form (FCF), Subsequent Call Form (SCF), After Hour Call Form (AHCF)

  Scenario Outline: Success Form Assign
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-1" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "2" in assigned form counter

    Examples: 
      | formType        |
      | First Call      |
      | Subsequent Call |
      | After Hour Call |

  Scenario Outline: Field Validation on Form Assign
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "4" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "3" in assigned form counter
    When I click "Edit First Call" xpath element "//*[@id='edit_BPFirstCallForm']"
    And I will wait to see "First Call Form (Read/Write)" in "h4" tag
    Then I select "Patient/Caregiver did answer phone" from "Status of attempted call" by xpath "//*[@id='bp_first_call_form_type_unanswered_reason']"
    When I fill in "Status of attempted call details" xpath "//*[@id='bp_first_call_form_type_unanswered_reason_details']" with "First Call Summary"
    When I fill in "Dialled number" xpath "//*[@id='bp_first_call_form_type_dialled_number']" with "718-534-1234"
    Then I select "No" from "Is Visiting Nurse Service Ordered ?" by xpath "//*[@id='bp_first_call_form_type_nurse_service']"
    When I fill in "Is Visiting Nurse Service Ordered ? details" xpath "//*[@id='bp_first_call_form_type_nurse_service_details']" with "Visiting Nurse details"
    Then I select "Yes, taking medications correctly" from "Review that patient has obtained and is taking all medications as ordered" by xpath "//*[@id='bp_first_call_form_type_medication_verification']"
    When I fill in "medication as ordered" xpath "//*[@id='bp_first_call_form_type_medication_verification_details']" with "Medication summary"
    Then I select "Yes patient has appt and transportation to office/clinic" from "follow up appointment" by xpath "//*[@id='bp_first_call_form_type_discharge_appointment']"
    When I fill in "Appointment details" xpath "//*[@id='bp_first_call_form_type_discharge_appointment_details']" with "Appointment summary"
    Then I select "Patient/Caregiver is aware of symptoms to report to MD" from "medical history" by xpath "//*[@id='bp_first_call_form_type_symptom_recognition']"
    When I fill in "medical history details" xpath "//*[@id='bp_first_call_form_type_symptom_recognition_details']" with "medical history details summary"
    Then I select "No" from "Is Patient currently experiencing pain ?" by xpath "//*[@id='bp_first_call_form_type_pain_evaluation']"
    Then I select "0" from "Pain Scale" by xpath "//*[@id='bp_first_call_form_type_pain_scale']"
    When I fill in "Patient experiencing pain" xpath "//*[@id='bp_first_call_form_type_pain_evaluation_details']" with "Patient experiencing pain summary"
    Then I select "Caregiver in home with patient" from "Patient has support at home" by xpath "//*[@id='bp_first_call_form_type_support_system']"
    When I fill in "Patient has support at home details" xpath "//*[@id='bp_first_call_form_type_support_system_details']" with "Patient has support at home details summary"
    Then I enter the "Prescribed medical equipment-see below" in necessary services and equipment
    #When I click "Edit First Call" xpath element "//*[@id='s2id_bp_first_call_form_type_necessary_equipment']"
    When I fill in "Patient has support at home details" xpath "//*[@id='bp_first_call_form_type_support_system_details']" with "Patient has support at home details summary"
    Then I select "Patient/Caregiver stated concerns- see below" from "expectations for recovery" by xpath "//*[@id='bp_first_call_form_type_adl']"
    When I fill in "expectations for recovery" xpath "//*[@id='bp_first_call_form_type_adl_details']" with "expectations for recovery summary"
    Then I select "Patient is not dual eligible" from "dual eligible patients" by xpath "//*[@id='bp_first_call_form_type_dual_eligible']"
    When I fill in "dual eligible" xpath "//*[@id='bp_first_call_form_type_dual_eligible_details']" with "dual eligible summary"
    When I fill in "Plan" xpath "//*[@id='bp_first_call_form_type_goals']" with "medical history details summary"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-1" days
    When I click "Assign" xpath element "//*[@id='submitButton']"

    Examples: 
      | formType        | errorMessage                                                                    |
      | First Call      | Only one First Call form can be completed per episode.                          |
      | First Call      | Patient would not talk                                                          |
      | Subsequent Call | Complete a First Call form as answered before assigning a Subsequent Call form. |
      | First Call      | Episode discharge date is not available                                         |

  Scenario: To verify PCP info on forms metadata have "edit" option
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "3" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/patient-details"
    And I will wait to see "Patient Details" in "a" tag
    And I will wait to see "Primary Care Physician" in "h3" tag
    When I edit Primary Care Physician Name with "PcpName Example"
    When I edit Primary Care Physician Phone with "(718) 534 1234"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    And I should see text of "2" in assigned form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "First Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "3" in assigned form counter
    When I click "View First Call" xpath element "//*[@id='view_BPFirstCallForm']"
    And I will wait to see "First Call Form (Read Only)" in "h4" tag
    And I will wait to see "PcpName Example" in "a" tag
    When I click "Call form pcp" xpath element "//*[@id='call-form-pcp']"
    And I will wait to see "(718) 534 1234" in "a" tag

  Scenario: To verify Dialled Number validations
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "4" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "First Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "3" in assigned form counter
    When I click "Edit First Call" xpath element "//*[@id='edit_BPFirstCallForm']"
    And I will wait to see "First Call Form (Read/Write)" in "h4" tag
    Then I select "Patient/Caregiver did answer phone" from "Status of attempted call" by xpath "//*[@id='bp_first_call_form_type_unanswered_reason']"
    When I fill in "Status of attempted call details" xpath "//*[@id='bp_first_call_form_type_unanswered_reason_details']" with "First Call Summary"
    When I fill in "Dialled number" xpath "//*[@id='bp_first_call_form_type_dialled_number']" with "123456"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I will wait to see "Please enter a valid phone number" in "span" tag
    When I fill in "Dialled number" xpath "//*[@id='bp_first_call_form_type_dialled_number']" with "a236527890"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I will wait to see "Please enter a valid phone number" in "span" tag
    When I fill in "Dialled number" xpath "//*[@id='bp_first_call_form_type_dialled_number']" with "456236527890"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I will wait to see "Please enter a valid phone number" in "span" tag

  Scenario: To verify only one active form and the existing is pushed to archive
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "4" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "First Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "3" in assigned form counter
    When I click "Edit First Call" xpath element "//*[@id='edit_BPFirstCallForm']"
    And I will wait to see "First Call Form (Read/Write)" in "h4" tag
    Then I select "Patient/Caregiver did not answer phone" from "Status of attempted call" by xpath "//*[@id='bp_first_call_form_type_unanswered_reason']"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I should see text of "2" in assigned form counter

  Scenario: Form List with more than a single form in a row
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "4" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "First Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "1" in assigned form counter
    And I should see text of "0" in active form counter
    And I should see text of "0" in archived form counter
    When I click "Edit First Call" xpath element "//*[@id='edit_BPFirstCallForm']"
    And I will wait to see "First Call Form (Read/Write)" in "h4" tag
    Then I select "Patient/Caregiver did not answer phone" from "Status of attempted call" by xpath "//*[@id='bp_first_call_form_type_unanswered_reason']"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I should see text of "0" in assigned form counter
    And I should see text of "1" in active form counter
    And I should see text of "0" in archived form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "First Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "1" in assigned form counter
    And I should see text of "1" in active form counter
    And I should see text of "0" in archived form counter
    When I click "Edit First Call" xpath element "//*[@id='edit_BPFirstCallForm']"
    And I will wait to see "First Call Form (Read/Write)" in "h4" tag
    Then I select "Patient/Caregiver did not answer phone" from "Status of attempted call" by xpath "//*[@id='bp_first_call_form_type_unanswered_reason']"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I should see text of "0" in assigned form counter
    And I should see text of "1" in active form counter
    And I should see text of "1" in archived form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "BPRAFormCRA" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "1" in assigned form counter
    Then I edit the CRA
    And I will wait to see "Clinical Risk Assessment Form (Read/Write)" in "h4" tag
    Then I select "No" from "depression signs" by xpath "//*[@id='bp_personbundle_formcratype_depressionSigns']"
    When I click "Submit" xpath element "//*[@id='submitButtonAdd']"
    And I should see text of "0" in assigned form counter
    And I should see text of "2" in active form counter
    And I should see text of "1" in archived form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "BPRAFormCRA" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "1" in assigned form counter
    Then I edit the CRA
    And I will wait to see "Clinical Risk Assessment Form (Read/Write)" in "h4" tag
    Then I select "No" from "depression signs" by xpath "//*[@id='bp_personbundle_formcratype_depressionSigns']"
    When I click "Submit" xpath element "//*[@id='submitButtonAdd']"
    And I should see text of "0" in assigned form counter
    And I should see text of "2" in active form counter
    And I should see text of "2" in archived form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "BPRAFormCRA" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    
    And I should see text of "2" in assigned form counter
    And I should see text of "2" in active form counter
    And I should see text of "2" in archived form counter

  Scenario: Forms not assigned automatically upon Transition if exists in Forms section
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "BPRAFormCRA" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I will wait to see "Form assigned" in "p" tag
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "1" in assigned form counter
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "4" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_dischargeCareType" on add a new transition
    Then I select the "Discharge" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "1" in assigned form counter

  Scenario: CRA not assigned automatically/pushed to other section upon Transition if exists in Active section
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "4" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "2" in assigned form counter
    Then I edit the CRA
    And I will wait to see "Clinical Risk Assessment Form (Read/Write)" in "h4" tag
    Then I select "No" from "depression signs" by xpath "//*[@id='bp_personbundle_formcratype_depressionSigns']"
    When I click "Submit" xpath element "//*[@id='submitButtonAdd']"
    And I should see text of "0" in assigned form counter
    And I should see text of "1" in active form counter
    And I should see text of "0" in archived form counter
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click anchor transition delete link "1"
    When I reload the page
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "4" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/careflow/Forms#/careFlowForms"
    Then I verify Clinical Risk Assessment in Assigned Form list
    And I should see text of "1" in assigned form counter
    And I should see text of "1" in active form counter
