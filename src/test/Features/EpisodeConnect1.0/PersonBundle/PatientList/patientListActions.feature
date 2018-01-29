@EC1Smoke
Feature: Patient list action

  Background: Patient creation
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
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page

  Scenario: Verify Add Form(s) from Patient List
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I click on first patient gear menu
    When I click on "Add Form(s)" from patients list patient gear menu
    Then I verify "Assign New Form" header on popup
    Then I select "Clinical Risk Assessment" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    And I click on "Assign" button
    And I refresh the page
    And I verify "Needs Onboarding" onboarding status on patient list page
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow#/careFlowForms"
    And I should see "Clinical Risk Assessment" in Assigned forms under Care Plan on Patient page

  Scenario: Add New Clinician for specific patient from patient list
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I click on first patient gear menu
    When I click on Add New Clinician from patients list patient gear menu
    Then I verify "Add New Clinician" header on popup
    And I click on first checkbox on Clinician modal
    And I click on "Assign" button
    And I will wait to see "Clinicians assigned to patient correctly" in "p" tag
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I should see Physician card under Physicians under Care Team on Patient page
