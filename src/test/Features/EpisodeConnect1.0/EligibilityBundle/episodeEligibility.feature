@EC1Smoke
Feature: Episode eligibility status

  Background: Patient Creation
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
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the Cancel Button on the New Transition on Add Patient page

  Scenario: Not Eligible patient does not start the episode
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I click on Eligibility dropdown
    And I select "Not Eligible" in Eligibility dropdown
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see "Not Eligible" in Eligibility
    Then I click on new transition button present on the patient overview page
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the calender button present on the new tranition page
    And I select today's date as the admission date
    Then I select "HHH - Hospital" from the care setting dropdown present on the add transition page
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    When I click on Admitting Facility present on the Add transition page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add transition page
    And I wait for 4000 milli seconds
    When I click on Diagnosis and DRG tab present on the patient overview page
    Then I verify ICD is present in the Diagnosis and DRG tab
    And I verify Predict DRG is present in the Diagnosis and DRG tab
    And I verify Add a New DRG is present in the Diagnosis and DRG tab
    When I click on DRG Type to Add a New DRG present on the patient overview page
    Then I select Possible from the DRG type dropdown present on the patient overview page
    Then I Click on DRG dropdown menu present on the patient overview page
    And I wait for 4000 milli seconds
    Then I Search DRG 177 on the search box on the DRG present on the patient overview page
    And I wait for 4000 milli seconds
    Then I select RESPIRATORY INFECTIONS & INFLAMATIONS from the DRG list present on the patient overview page
    And I wait for 4000 milli seconds
    Then I click on Update Transition button present on the patient overview page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I should see "Not Eligible" in Eligibility
    And I should see "Unknown" in Onboarding Status

  Scenario: Transition: Eligibility service is triggered on DRG BPCI update
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I should see "Unknown" in Eligibility
    And I click on Eligibility dropdown
    And I select "Run Service" in Eligibility dropdown
    And I click on "Run" button
    And I click on "Cancel" button
    Then I navigate to the "/secure/person/mongoID/overview"
    And I should see "Error" in Eligibility
    And I click on Eligibility dropdown
    And I select "Unknown" in Eligibility dropdown
    And I should see "Unknown" in Onboarding Status
    Then I click on new transition button present on the patient overview page
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the calender button present on the new tranition page
    And I select today's date as the admission date
    Then I select "HHH - Hospital" from the care setting dropdown present on the add transition page
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    When I click on Admitting Facility present on the Add transition page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add transition page
    And I wait for 4000 milli seconds
    And I click on submit button present on the new filter modal
    And I should see "Error" in Eligibility

  Scenario: Verify Eligibility should Automatically run upon a patient admission to a SNF.
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    Then I click on new transition button present on the patient overview page
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the calender button present on the new tranition page
    And I select today's date as the admission date
    Then I select "HHH - Hospital" from the care setting dropdown present on the add transition page
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    When I click on Admitting Facility present on the Add transition page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add transition page
    And I wait for 4000 milli seconds
    And I click on submit button present on the new filter modal
    Then I navigate to the "/secure/person/mongoID/overview"
    And I should see "Error" in Eligibility

  Scenario: Set ESRD from Eligibility modal
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I should see "Unknown" in Eligibility
    And I click on Eligibility dropdown
    And I select "Not Eligible – ESRD" in Eligibility dropdown
    Then I navigate to the "/secure/person/mongoID/overview"
    And I should see "Not Eligible – ESRD" in Eligibility
    And I am on "/secure/pn/patientslist"
    Then I click on "custom" filter tab present on the patients page
    And I enter patients fullname in the patient search box on the patient page 
    Then I click on search button present on the patients page
    And I verify "NOT_ELIGIBLE_ESRD" Eligibility on patient list page

  Scenario: Set ESRD from Patient Card Actions
	  Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    Then I click on "custom" filter tab present on the patients page
    And I enter patients fullname in the patient search box on the patient page 
    Then I click on search button present on the patients page
    And I click on first patient gear menu
    When I click on "Set as Not Eligible - ESRD" from patients list patient gear menu
    And I verify "NOT_ELIGIBLE_ESRD" Eligibility on patient list page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I should see "NOT_ELIGIBLE_ESRD" in Eligibility
