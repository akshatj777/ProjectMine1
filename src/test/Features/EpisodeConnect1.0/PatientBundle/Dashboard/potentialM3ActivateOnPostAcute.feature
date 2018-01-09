@EC1Smoke
Feature: POT3 will get activated on post acute admission

  Background: Potential M3 Active
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
    Then I fill in "Admit" with logic "minus" with "30" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Emanuel County Hospital Authority" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "177" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "POTENTIAL MODEL 3" state
    Then I verify potential m3 Episode Marker Admit Date "30" is created without end date
    
  Scenario: POT3 will get activated on post acute admission, which its admit date is between HHH discharge to the POT3 episode end date.
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "15" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "SNF - Skilled Nursing Facility" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I select the "Discharge" "caretype" "Skilled Nursing" by "#bp_personbundle_bpadmissiontype_dischargeCareType" on add a new transition
    Then I select the "Discharge" facility "Coosa valley health care" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    And I will verify Episode Marker Admit Date "30" and Termination date "-74" and Episode Status "ACTIVE"
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "30" admit date with "1" hour "later" in transition "1"
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    And I will verify Episode Marker Admit Date "30" and Termination date "-74" and Episode Status "ACTIVE"
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "30" admit date with "-2" hour "before" in transition "1"
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    And I will verify Episode Marker Admit Date "15" and Termination date "1" and Episode Status "CANCELED"
    And I will verify Episode Marker Admit Date "30" and Termination date "16" and Episode Status "POTENTIAL MODEL 3"
    When I click anchor transition delete link "1"
    And I will wait to see patient's name on patient summary page
    And I will verify Episode Marker Admit Date "15" and Termination date "-74" and Episode Status "ACTIVE"
    When I click "Care Plan" xpath element "//*[@id='carePlanButton']"
    When I click "Forms" xpath element "//*[@id='careFlowFormsTab']"
    Then I verify Clinical Risk Assessment in Assigned Form list
    Then I edit the CRA
    When I click "Submit" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    Then I will wait to see onboarding status "Onboarded"
    When I click Start CARL tool link "1"
    When I click "Submit" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click Start CARL tool link "2"
    When I click "Submit" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Care Plan" xpath element "//*[@id='carePlanButton']"
    When I click "Forms" xpath element "//*[@id='careFlowFormsTab']"
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "After Hour Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    When I click "Assign" xpath element "//*[@id='submitButton']"
    When I click anchor transition delete link "1"
    When I reload the page
    And I will wait to see patient's name on patient summary page
