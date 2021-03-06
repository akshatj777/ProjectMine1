@EC1Smoke
Feature: Assign Care Plan

  Background: Patient not in episode "Assign Care Plan" button disabled
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
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "No care plans assigned." in "span" tag
    And I should see Assign Care Plan Button disabled

  Scenario: Assign and Review carePlan by Bundle after search
    Then I navigate to the "/secure/person/mongoID/overview"
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
    Then I navigate to the "/secure/person/mongoID/careflow"
    And I will wait to see "No care plans assigned." in "span" tag
    Then I click on Assign Care Plan
    And I will wait to see "Assign Care Plan" in "h4" tag
    And I will wait to see "by Bundle" in "a" tag
    And I will wait to see "by Issue" in "a" tag
    Then I fill in Care Plan Search with "Acute Myocardial Infarction"
    And I will wait to see "Acute Myocardial Infarction" in "h4" tag
    Then I will not see Care Plan "3"
    Then I will "check in" the "Acute Myocardial Infarction" Care Plan radio button at index "1"
    Then I click "Save changes" text in tag "button"
    And I will wait to see "Acute Myocardial Infarction" in "h4" tag
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow"
    And I will wait to see "Review Care Plan" in "a" tag
    Then I click "Review Care Plan" text in tag "a"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I click on first gear menu under Transitions on patient overview
    And I click on "Edit" in gear menu option under Transition
    And I will wait to see "Edit Transition" in "h4" tag
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "(1)" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    And I should see Assign Care Plan Button enabled

  Scenario: Assign and Review carePlan by Issue after search
    Then I navigate to the "/secure/person/mongoID/overview"
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
    Then I navigate to the "/secure/person/mongoID/careflow"
    And I will wait to see "No care plans assigned." in "span" tag
    Then I click on Assign Care Plan
    And I will wait to see "Assign Care Plan" in "h4" tag
    And I will wait to see "by Bundle" in "a" tag
    And I will wait to see "by Issue" in "a" tag
    And I press "by Issue"
    Then I fill in Care Plan Search with "Hypertension (HTN)"
    And I will wait to see "Hypertension (HTN)" in "h4" tag
    Then I will not see Care Plan "3"
    Then I will "check in" the "Hypertension (HTN)" Care Plan radio button at index "2"
    Then I click "Save changes" text in tag "button"
    And I will wait to see "Hypertension (HTN)" in "h4" tag
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/careflow"
    And I will wait to see "Review Care Plan" in "a" tag
    Then I click "Review Care Plan" text in tag "a"
