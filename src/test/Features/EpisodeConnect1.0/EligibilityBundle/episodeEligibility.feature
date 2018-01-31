@EC1Smoke
Feature: Episode eligibility status

  Background: Patient Creation
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

  Scenario: Not Eligible patient does not start the episode
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I click on Eligibility dropdown
    And I select "Not Eligible" in Eligibility dropdown
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see "Not Eligible" in Eligibility
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
    Then I will not see "Episode Marker" xpath element "//*[@id='s2id_episodeSelectionBox']"
    And I should see "Not Eligible" in Eligibility
    And I should see "Unknown" in Onboarding Status

  Scenario: Verify Eligibility should Automatically run upon a patient admission to a SNF.
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "5" days
    Then I select "SNF - Skilled Nursing Facility" from the care setting dropdown present on the add transition page
    And I select "TCU" from admission care type drop down menu present on Add transition page
    Then I select the "Admit" facility "Coosa valley health care" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I should see "Error" in Eligibility

  Scenario: Set ESRD from Eligibility modal
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I should see "Unknown" in Eligibility
    And I click on Eligibility dropdown
    When I click on eligibility set "Not Eligible – ESRD" option
    Then I will wait to see "Your changes have been successfully saved." in "p" tag
    And I wait for "Unknown" to disappear in Eligibility
    And I should see Not Eligible ESRD in Eligibility
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I verify "NOT_ELIGIBLE_ESRD" Eligibility on patient list page

  Scenario: Set ESRD from Patient Card Actions
    And I click on first patient gear menu
    When I click on Not Eligible ESRD from patients list patient gear menu
    And I verify "NOT_ELIGIBLE_ESRD" Eligibility on patient list page
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I should see Not Eligible ESRD in Eligibility
