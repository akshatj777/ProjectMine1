@EC1Smoke
Feature: Managing Various Episode States - Removing DOD

  Background: Patient with no Episode
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

  Scenario: EXPIRED AS INPATIENT-Edit dod (future,before DOB,current) should rerun episode logic and also reinstate previous eligibility status.
    Then I navigate to the "/secure/person/mongoID/patient-details"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "General" in "h3" tag
    And I edit date of death with "-30"
    Then I verify error "The date of death can not be in the future." in DOD field
    And I edit date of death with "15000"
    Then I verify error "The date of death can not come before dob." in DOD field
    And I edit date of death with "1"
    When I reload the page
    And I will wait to see patient's name on patient summary page
    And I should see tag "Expired"

  Scenario: EXPIRED AS INPATIENT-Active episode with discharge
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
    Then I verify potential m3 Episode Marker Admit Date "5" is created without end date
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I verify DRG "(63) ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC" "(BPCI)" in transition "1" in transition modal
    Then I navigate to the "/secure/person/mongoID/patient-details"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "General" in "h3" tag
    And I edit date of death with "1"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I should see tag "Expired"
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "5" and "add" Discharge date "0" with "2" to show end date and Episode Status "EXPIRED AS INPATIENT"
    Then I will wait to see "EXPIRED AS INPATIENT" state
    Then I navigate to the "/secure/person/mongoID/patient-details"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "General" in "h3" tag
    And I will clear the Date of death field on patient details page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I verify potential m3 Episode Marker Admit Date "5" is created without end date
    And I should see tag "Error"

  Scenario: Completed Expired-Active episode With discharge disposition
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "5" days
    Then I fill in "Discharge" with logic "minus" with "3" days
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
    Then I will verify Episode Marker Admit Date "5" and "add" Discharge date "3" with "89" to show end date and Episode Status "EXPIRED AS INPATIENT"
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I verify DRG "(63) ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC" "(BPCI)" in transition "1" in transition modal
    Then I navigate to the "/secure/person/mongoID/patient-details"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "General" in "h3" tag
    And I edit date of death with "1"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I should see tag "Expired"
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "5" and "add" Discharge date "0" with "2" to show end date and Episode Status "EXPIRED AS INPATIENT"
    Then I will wait to see "COMPLETED EXPIRED" state
