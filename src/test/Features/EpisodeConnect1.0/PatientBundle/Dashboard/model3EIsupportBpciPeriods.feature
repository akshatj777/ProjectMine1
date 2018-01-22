@EC1Smoke
Feature: Same DRG (PGP, HHH, SNF scenarios)

  Scenario: PGP A M3, PGP B M2. Different model.
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
    Then I fill in "Admit" with logic "minus" with "-268" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Emanuel County Hospital Authority" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "(6)" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I verify Episode Marker with Admit Date "-268" is created without end date
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "Episode Initiator" in "th" tag
    And I will wait to see "Unassigned" in "td" tag
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I will verify the list of options in dropdown list "Episode Initator" element xpath "//*[@id='episode_initiator_episodeInitiator']/option"
      | Unassigned                                        |
      | Envision Health Care - Kemwall Inpatient Services |
      | Saber Health - Broomall Healthcare Group, Inc.    |
      | Non-Remedy Convener                               |
    Then I select "Envision Health Care - Kemwall Inpatient Services" from "Episode Initiator" by xpath "//*[@id='episode_initiator_episodeInitiator']"
    When I click "Edit Episode Initiator" xpath element "//*[@id='episode_initiator_submitButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I verify Episode Marker with Admit Date "-268" is created without end date
    And I will wait to see "Envision Health Care - Kemwall Inpatient Services" in "td" tag
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "-268" and "add" Discharge date "-269" with "29" to show end date and Episode Status "ACTIVE"
    Then I will wait to see onboarding status "Needs Onboarding"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "Episode Initiator" in "th" tag
    And I will wait to see "Envision Health Care - Kemwall Inpatient Services" in "td" tag
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I select "Saber Health - Broomall Healthcare Group, Inc." from "Episode Initiator" by xpath "//*[@id='episode_initiator_episodeInitiator']"
    Then I click "Edit Episode Initiator" xpath element "//*[@id='episode_initiator_submitButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "-268" and "add" Discharge date "-269" with "59" to show end date and Episode Status "ACTIVE"
    And I will wait to see "Saber Health - Broomall Healthcare Group, Inc." in "td" tag
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I select "Unassigned" from "Episode Initiator" by xpath "//*[@id='episode_initiator_episodeInitiator']"
    Then I click "Edit Episode Initiator" xpath element "//*[@id='episode_initiator_submitButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "-268" and "add" Discharge date "-269" with "89" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    And I will wait to see "Unassigned" in "td" tag
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I select "Non-Remedy Convener" from "Episode Initiator" by xpath "//*[@id='episode_initiator_episodeInitiator']"
    When I click "Edit Episode Initiator" xpath element "//*[@id='episode_initiator_submitButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "-268" and "add" Discharge date "-269" with "89" to show end date and Episode Status "ACTIVE"
    And I will wait to see "Non-Remedy Convener" in "td" tag
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "-54" days
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    And I will wait to see "Envision Health Care - Kemwall Inpatient Services" in "td" tag
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I will verify the list of options in dropdown list "Episode Initator" element xpath "//*[@id='episode_initiator_episodeInitiator']/option"
      | Unassigned                                        |
      | Envision Health Care - Kemwall Inpatient Services |
      | Non-Remedy Convener                               |
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "-54" and "add" Discharge date "-55" with "89" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "20" days
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    And I will wait to see "Saber Health - Broomall Healthcare Group, Inc." in "td" tag
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I will verify the list of options in dropdown list "Episode Initator" element xpath "//*[@id='episode_initiator_episodeInitiator']/option"
      | Unassigned                                     |
      | Saber Health - Broomall Healthcare Group, Inc. |
      | Non-Remedy Convener                            |
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will verify Episode Marker Admit Date "20" and "add" Discharge date "19" with "29" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "-191" days
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    And I will wait to see "Unassigned" in "td" tag
    And I click Episode initiator Edit
    And I will wait to see "Edit Episode Initiator" in "h4" tag
    Then I will verify the list of options in dropdown list "Episode Initator" element xpath "//*[@id='episode_initiator_episodeInitiator']/option"
      | Unassigned                                        |
      | Envision Health Care - Kemwall Inpatient Services |
      | Saber Health - Broomall Healthcare Group, Inc.    |
      | Non-Remedy Convener                               |
    When I click "Cancel" xpath element "//*[@id='cancelButton']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "Admit" "caretype" "Outpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "POTENTIAL EPISODE CANCELED" state
    Then I will verify Episode Marker Admit Date "-191" and "add" Discharge date "-192" with "1" to show end date and Episode Status "POTENTIAL EPISODE CANCELED"