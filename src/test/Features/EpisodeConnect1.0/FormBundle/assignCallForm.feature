@EC1Smoke
Feature: Assign new First Call Form (FCF), Subsequent Call Form (SCF), After Hour Call Form (AHCF)

  Scenario Outline: Field Validation on Form Assign
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
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
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    And I should see text of "0" in assigned form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify the Form error "<errorMessageNoAnchor>"
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "5" days
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
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    And I should see text of "2" in assigned form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify the Form error "<errorMessageWithoutDischarge>"
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "6" LOS days on Discharge date on Add Transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    And I should see text of "2" in assigned form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-2" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify the Form error "<errorMessageWithFutureDischarge>"
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "125" days
    Then I fill in "Discharge" with logic "minus" with "120" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "125" and "add" Discharge date "120" with "89" to show end date and Episode Status "COMPLETED"
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    And I will wait to see Assigned Forms List
    And I should see text of "2" in assigned form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with end date "plus" "31" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify the Form error "<errorMessageNoAnchor>"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "10" days
    Then I fill in "Discharge" with logic "minus" with "6" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "10" and "add" Discharge date "6" with "89" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    And I should see text of "3" in assigned form counter
    Then I verify "First Call assigned" in "Assigned Form list" "2"
    Then I delete the assigned "First Call" "3"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I clear the "LOS value" xpath "//*[@id='bp_personbundle_bpadmissiontype_los']"
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    When I click on "Eligibility" dropdown button
    When I click on eligibility set "Expired" option
    When I fill in eligibility "Date of Death" with "0" days
    When I click "Confirm" xpath element "//*[@id='submitExpired']"
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see tag "Expired"
    When I reload the page
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "EXPIRED AS INPATIENT" state
    Then I will wait to see onboarding status "Unknown"
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "<formType>" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-2" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify the Form error "<errorExpired>"

    Examples: 
      | formType   | errorMessage                                           | errorMessageNoAnchor                                          | errorMessageWithoutDischarge            | errorMessageWithFutureDischarge         | errorExpired                    |
      | First Call | Only one First Call form can be completed per episode. | Cannot assign form because the patient must be in an episode. | Episode discharge date is not available | Episode discharge date is in the future | Can't assign to expired patient |

  Scenario Outline: Field Validation on Form Assign (Subsequent Form)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
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
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "Subsequent Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-1" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify the Form Type error "<error>"
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    And I will wait to see "Assign New Form" in "h4" tag
    Then I select "First Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify First Call in "3"
    Then I edited the assigned "First Call" "3"
    And I will wait to see "First Call Form (Read/Write)" in "h4" tag
    Then I select "Patient/Caregiver did not answer phone" from "Status of attempted call" by xpath "//*[@id='bp_first_call_form_type_unanswered_reason']"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I will wait to see patient's name on patient summary page
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "Subsequent Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-1" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify the Form Type error "<error>"
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    And I will wait to see "Assign New Form" in "h4" tag
    Then I select "First Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "0" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify First Call in "3"
    Then I edited the assigned "First Call" "3"
    And I will wait to see "First Call Form (Read/Write)" in "h4" tag
    Then I select "Patient/Caregiver did answer phone" from "Status of attempted call" by xpath "//*[@id='bp_first_call_form_type_unanswered_reason']"
    When I fill in "Status of attempted call details" xpath "//*[@id='bp_first_call_form_type_unanswered_reason_details']" with "First Call Summary"
    When I fill in "Dialled number" xpath "//*[@id='bp_first_call_form_type_dialled_number']" with "718-534-1234"
    Then I select "No (patient going home without services)" from "Is Visiting Nurse Service Ordered ?" by xpath "//*[@id='bp_first_call_form_type_nurse_service']"
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
    When I fill in "Prescribed medical equipment-see below" xpath "//*[@id='bp_first_call_form_type_support_system_details']" with "Patient has support at home details summary"
    Then I select "Patient is able to perform ADLs independently" from "expectations for recovery" by xpath "//*[@id='bp_first_call_form_type_adl']"
    When I fill in "able to perform ADLs independently" xpath "//*[@id='bp_first_call_form_type_adl_details']" with "expectations for recovery summary"
    Then I select "Patient/Caregiver stated concerns- see below" from "expectations for recovery" by xpath "//*[@id='bp_first_call_form_type_patient_concerns']"
    When I fill in "expectations for recovery" xpath "//*[@id='bp_first_call_form_type_patient_concerns_details']" with "expectations for recovery summary"
    Then I select "Patient is not dual eligible" from "dual eligible patients" by xpath "//*[@id='bp_first_call_form_type_dual_eligible']"
    When I fill in "dual eligible" xpath "//*[@id='bp_first_call_form_type_dual_eligible_details']" with "dual eligible summary"
    When I fill in "Plan" xpath "//*[@id='bp_first_call_form_type_goals']" with "medical history details summary"
    When I click "submit" xpath element "//*[@id='submitButton']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "Subsequent Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-1" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify Subsequent Call in "3"
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "After Hour Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    Then I fill in Due Date with logic "minus" with "-1" days
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify After Hour Call in "4"

    Examples: 
      | error                                                                           |
      | Complete a First Call form as answered before assigning a Subsequent Call form. |
