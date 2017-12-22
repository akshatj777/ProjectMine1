@EC1Smoke
Feature: Managing Various Episode States

  Background: Episode Active - create anchor transition
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
    Then I click on "TCRN Checklist" label tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"

  Scenario: Episode CANCELED - delete anchor transition (Episode marker will be invisible)
    When I click anchor transition delete link "1"
    When I reload the page
    And I will wait to see patient's name on patient summary page
    Then I will not see "Episode Marker" xpath element "//*[@id='s2id_episodeSelectionBox']"

  Scenario: Episode CANCELED - update anchor with final non-bpci drg
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I will wait to see and click on "Diagnosis and DRG" followed by "a" tag
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Final" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "3" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I reload the page
    When I click on episode marker drop down
    Then I will wait to see "CANCELED" state
    Then I will wait to see onboarding status "Unknown"

  Scenario: Episode PENDING CANCELLATION - update anchor with non-final non-bpci drg
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I will wait to see and click on "Diagnosis and DRG" followed by "a" tag
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "2" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "PENDING CANCELLATION" state
    Then I will wait to see onboarding status "Needs Onboarding"

  Scenario: Episode EXPIRED AS INPATIENT - Set patient as exp.
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

  Scenario: Episode NOT ELIGIBLE and Back to Active - set patient eligibility to not eligible then back to eligible
    When I click on "Eligibility" dropdown button
    When I click on eligibility set "Not Eligible" option
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see tag "Not Eligible"
    When I reload the page
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "NOT ELIGIBLE" state
    Then I will wait to see onboarding status "Unknown"
    When I click on "Eligibility" dropdown button
    When I click on eligibility set "Eligible" option
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see tag "Eligible"
    When I reload the page
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"

  Scenario: Episode COMPLETED - discharge date before 90 days
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "120" days
    Then I fill in "Discharge" with logic "minus" with "110" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "COMPLETED" state
    Then I will wait to see onboarding status "Unknown"

  Scenario: Episode COMPLETED EXPIRED - Update the discharge date and set patient as exp
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "90" days
    Then I fill in "Discharge" with logic "minus" with "30" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click on "Eligibility" dropdown button
    When I click on eligibility set "Expired" option
    When I fill in eligibility "Date of Death" with "0" days
    When I click "Confirm" xpath element "//*[@id='submitExpired']"
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see tag "Expired"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "COMPLETED EXPIRED" state

  Scenario: Episode COMPLETED-365 - Anchor admit date before 365 days
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "90" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "COMPLETED 365" state

  Scenario: EXPIRED AS INPATIENT-Removing dod should rerun episode logic and also reinstate previous eligibility status.
    When I click on "Eligibility" dropdown button
    When I click on eligibility set "Expired" option
    When I fill in eligibility "Date of Death" with "0" days
    When I click "Confirm" xpath element "//*[@id='submitExpired']"
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see tag "Expired"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "EXPIRED AS INPATIENT" state
    Then I will wait to see onboarding status "Unknown"
    And I should see tag "Expired"
    Then I navigate to the "/secure/person/mongoID/patient-details"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "General" in "h3" tag
    And I will clear the Date of death field on patient details page
    When I reload the page
    And I will wait to see patient's name on patient summary page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    And I should not see "Expired" in "h3" tag

  Scenario: COMPLETED EXPIRED -Removing dod should rerun episode logic and also reinstate previous eligibility status.
    And I should see tag "Error"
    When I click first timing transition edit link "1"
    And I will wait to see "Admission Date" in "label" tag
    Then I fill in "Admit" with logic "minus" with "90" days
    Then I fill in "Discharge" with logic "minus" with "30" days
    Then I click on update transition to add a new episode
    When I reload the page
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I scroll the page to bottom by "-50"
    When I click on "Eligibility" dropdown button
    When I click on eligibility set "Expired" option
    When I fill in eligibility "Date of Death" with "0" days
    When I click "Confirm" xpath element "//*[@id='submitExpired']"
    And I will wait to see "Your changes have been successfully saved" in "p" tag
    And I should see tag "Expired"
    When I reload the page
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "COMPLETED EXPIRED" state
    And I should see tag "Expired"
    Then I navigate to the "/secure/person/mongoID/patient-details"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "General" in "h3" tag
    And I will clear the Date of death field on patient details page
    When I edit medicare ID with "123456799A"
    And I will wait to see "123456799A" in "div" tag
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Unknown"
    And I should not see "Expired" in "h3" tag

  Scenario: EPISODE_EXCLUDED Cancelled episode terminated as excluded
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "0" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "239" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "EXCLUDED BY 239" state
    Then I will wait to see onboarding status "Needs Onboarding"

  Scenario: Potential M3 ActiveBPCI DRG M3 in the HHH's PGP
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
    Then I select the "Admit" facility "Emanuel County Hospital Authority" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "177" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "POTENTIAL MODEL3" state
    Then I will wait to see onboarding status "Needs Onboarding"

  Scenario: POTENTIAL EPISODE CANCELED
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
    Then I fill in "Admit" with logic "minus" with "40" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Emanuel County Hospital Authority" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "177" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "POTENTIAL EPISODE CANCELED" state
    Then I will wait to see onboarding status "Unknown"
