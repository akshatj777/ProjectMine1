@EC1Smoke
Feature: Add New Clinician

  Background: Episode Active - create anchor transition
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
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
    And I Select "Home" from the list of address type present on the Add Patient page
    And I enter "Street" in "address_street" field on add Patient page
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
    Then I click on "TCRN Checklist" label tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page

  Scenario: Functionality of buttons present under Care Team
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Add New Clinician" button under "Care Team" on Patient overview
    And I click on first checkbox on Clinician modal
    And I click on "Assign" button
    And I will wait to see "Clinicians assigned to patient correctly" in "p" tag
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I should see Physician card under Physicians under Care Team on Patient page
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Assign Team Member" button under "Care Team" on Patient overview
    And I will wait to see "Assign Team Member" in "h4" tag
    And I select first facility checkbox on Assign Team Member modal
    And I click on "Assign" button
    And I will wait to see "Employees assigned to patient(s) correctly" in "p" tag
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Add Family" button under "Care Team" on Patient overview
    And I will wait to see "Add Family" in "h4" tag
    And I enter "First Name" details in "firstName" under Add famaily modal
    And I enter "Last Name" details in "lastName" under Add famaily modal
    And I click on Add Family button on Add Family modal
    And I will wait to see "New relative created." in "p" tag
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    Then I click on Alert Icon on header navigation bar
    And I click on first alert message under alert
    Then I verify "Dashboard" tab is present under header navigation on patient overview

  Scenario: Verify functionality of dismiss all alerts
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    Then I click on Alert Icon on header navigation bar
    And I click on "Dismiss All" button
    And I should not see any count appearing on Alert Icon
