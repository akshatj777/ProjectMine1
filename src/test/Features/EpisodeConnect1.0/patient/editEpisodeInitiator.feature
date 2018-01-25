@EC1Smoke
Feature: Episode connect 1 edit Episode

  Scenario Outline: User can navigate to patient overview page and edit an episode
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
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "-120" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    Then I click on edit button present on the patient overview page
    And I wait for 5000 milli seconds
    Then I should see "Edit Episode Initiator" button is present on the Edit Episode Initiator modal
    Then I should see "Cancel Episode" button is present on the Edit Episode Initiator modal
    Then I should see "Cancel" button is present on the Edit Episode Initiator modal
    When I click on the Episode Initiator dropdown present on the Edit Episode Initiator modal
    Then I should see "Unassigned" option is present on the Edit Episode Initiator modal
    Then I should see "Stamford - Stamford Hospital" option is present on the Edit Episode Initiator modal
    Then I should see "Non-Remedy Convener" option is present on the Edit Episode Initiator modal
    Then I click on the "Cancel" button present on the Edit Episode Initiator modal

    Examples: 
      | email                | password  |
      | qa.adminuser@yopmail.com | Episode1! |

  Scenario: : Setting to Non-Remedy Convener - episode length updated to 90 days countdown 
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
    Then I verify Episode Marker with Admit Date "30" is created without end date
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "15" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "SNF - Skilled Nursing Facility" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I select the "Discharge" "caretype" "Skilled Nursing" by "#bp_personbundle_bpadmissiontype_dischargeCareType" on add a new transition
    Then I select the "Discharge" facility "Coosa valley health care" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "15" with "89" to show end date and Episode Status "ACTIVE"
    And I will wait to see "Episode Initiator" in "th" tag
    And I will wait to see "Unassigned" in "td" tag
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I select "Envision Health Care - Stadion Inpatient Services" from "Episode Initiator" by xpath "//*[@id='episode_initiator_episodeInitiator']"
    When I click "Edit Episode Initiator" xpath element "//*[@id='episode_initiator_submitButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "15" with "29" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I select "Non-Remedy Convener" from "Episode Initiator" by xpath "//*[@id='episode_initiator_episodeInitiator']"
    When I click "Edit Episode Initiator" xpath element "//*[@id='episode_initiator_submitButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "15" with "89" to show end date and Episode Status "ACTIVE"
