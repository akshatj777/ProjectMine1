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
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I verify potential m3 Episode Marker Admit Date "1" is created without end date
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I verify DRG "(63) ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC" "(BPCI)" in transition "1" in transition modal

  Scenario: Active with discharge & verify end date
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    Then I fill in "Admit" with logic "minus" with "5" days
    Then I fill in "Discharge" with logic "minus" with "3" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "5" and "add" Discharge date "3" with "89" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I am on "/secure/dashboard"
    Then I verify "My patients" as selected tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I enter patients fullname in the patient search box under active tab on Dashboard
    And I should see patient first name appearing under search on Dashboard
    And I should see "86 days left" appearing under search on "PROGRESS" "progress-column" Dashboard
    And I should see "(63) ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC" appearing under search on "EPISODE DRG" "episode-column" Dashboard
    And I should see "(HHH) Stamford Hospital" appearing under search on "ANCHOR FACILITY" "anchor_facility-column" Dashboard
    And I should see " " appearing under search on "CURRENT FACILITY" "current_facility-column" Dashboard
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I should see "86 days left" appearing under progress on patient card
    And I should see "(UNK)" "Facility not assigned" appearing under current location on patient card
    And I should see "(63) ACUTE ISCHEMIC STROKE W USE OF" appearing under drg on patient card
    And I should see "Stamford" Episode Initiator on Patient list page
    And I should see "(HHH) Stamford Hospital" Anchor Facility on Patient list page

  Scenario: Episode CANCELED - delete anchor transition (Episode marker will be invisible)
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    When I click anchor transition delete link "1"
    And I will wait to see patient's name on patient summary page
    Then I will not see "Episode Marker" xpath element "//*[@id='s2id_episodeSelectionBox']"

  Scenario: Episode CANCELED - update anchor with final non-bpci drg
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I will wait to see and click on "Diagnosis and DRG" followed by "a" tag
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Final" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "3" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "CANCELED" state
    Then I will verify Episode Marker Admit Date "1" and "add" Discharge date "0" with "1" to show end date and Episode Status "CANCELED"
    Then I will wait to see onboarding status "Unknown"

  Scenario: Episode PENDING CANCELLATION - update anchor with non-final non-bpci drg
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
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
    Then I verify potential m3 Episode Marker Admit Date "1" is created without end date
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I will wait to see and click on "Diagnosis and DRG" followed by "a" tag
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "(63)" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I verify potential m3 Episode Marker Admit Date "1" is created without end date
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I verify DRG "(63) ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC" "(BPCI)" in transition "1" in transition modal

  Scenario: Episode EXPIRED AS INPATIENT - Set patient as exp.
    Then I navigate to the "/secure/person/mongoID/overview"
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
    Then I will verify Episode Marker Admit Date "1" and "add" Discharge date "0" with "1" to show end date and Episode Status "CANCELED"
    Then I will wait to see onboarding status "Unknown"

  Scenario: Episode NOT ELIGIBLE and Back to Active - set patient eligibility to not eligible then back to eligible
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
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
   Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "10" days
    Then I fill in "Discharge" with logic "minus" with "3" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "9" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Allentown" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    And I am on "/secure/dashboard"
    Then I verify "My patients" as selected tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I enter patients fullname in the patient search box under active tab on Dashboard
    And I should see patient first name appearing under search on Dashboard
    And I should see "1" appearing under search on "Readmission" "readmission-column" Dashboard
    Then I navigate to the "/secure/person/mongoID/careflow/forms"
    And I will wait to see patient's name on patient summary page
    Then I verify "Clinical Risk Assessment assigned" in "Assigned Form list" "2"
    And I should see text of "2" in assigned form counter
    Then I edit the CRA
    And I will wait to see "Clinical Risk Assessment Form (Read/Write)" in "h4" tag
    Then I submit the Clinical Risk Assessment Form
    And I will wait to see patient's name on patient summary page
    Then I will wait to see onboarding status "Onboarded"
    And I should see text of "1" in active form counter
    Then I verify "Clinical Risk Assessment" in "Active Form list" "3"
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "95" days
    Then I fill in "Discharge" with logic "minus" with "92" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "COMPLETED" state
    Then I will wait to see onboarding status "Unknown"
    And I am on "/secure/dashboard"
    Then I verify "My patients" as selected tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I enter patients fullname in the patient search box under active tab on Dashboard
    And I should see patient first name appearing under search on Dashboard
    And I should see "0" appearing under search on "Readmission" "readmission-column" Dashboard

  Scenario: Episode COMPLETED EXPIRED - Update the discharge date and set patient as exp
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "90" days
    Then I fill in "Discharge" with logic "minus" with "30" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
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
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "400" days
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "COMPLETED 365" state
    Then I will wait to see onboarding status "Unknown"

 
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
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "0" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "(6)" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "EXCLUDED BY 6" state
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I verify potential m3 Episode Marker Admit Date "0" is created without end date
    Then I will verify Episode Marker Admit Date "1" and "add" Discharge date "1" with "0" to show end date and Episode Status "EXCLUDED BY 6"
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I verify DRG "(63) ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC" "(BPCI)" in transition "2" in transition modal
    Then I verify DRG "(6) LIVER TRANSPLANT W/O MCC" "(BPCI)" in transition "1" in transition modal
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    And I am on "/secure/dashboard"
    Then I verify "My patients" as selected tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I enter patients fullname in the patient search box under active tab on Dashboard
    And I should see "0 days to anchor admission" appearing under search on "PROGRESS" "progress-column" Dashboard
    And I should see "(6) LIVER TRANSPLANT W/O MCC" appearing under search on "EPISODE DRG" "episode-column" Dashboard
    And I should see "(HHH) Stamford Hospital" appearing under search on "ANCHOR FACILITY" "anchor_facility-column" Dashboard
    And I should see " " appearing under search on "CURRENT FACILITY" "current_facility-column" Dashboard
    And I should see "0" appearing under search on "Readmission" "readmission-column" Dashboard
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see patient's name on patient summary page
    And I should see "0 days to anchor admission" appearing under progress on patient card
    And I should see "(HHH) Inpatient" "Stamford - Stamford Hospital" appearing under current location on patient card
    And I should see "(6) LIVER TRANSPLANT W/O MCC" appearing under drg on patient card
    And I should see "Stamford" Episode Initiator on Patient list page
    And I should see "(HHH) Stamford Hospital" Anchor Facility on Patient list page
