@EC1Smoke
Feature: Activity List
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
    
 Scenario: Verify activity UI
	Then I navigate to the "/secure/person/mongoID/recentactivity"
	And I should see "All" buttons under Recent Activity
	And I should see "Alerts" buttons under Recent Activity
	And I should see "Hl7" buttons under Recent Activity
	And I should see "Notifications" buttons under Recent Activity
	Then I click on "Notifications" button under Recent Activity
	And I should see "New Episode has been created" in Notification column on Recent Activity Notification tab 
	And I should see "QA ADMIN" in By column on Recent Activity Notification tab 
	And I click on View Changes under Activity
	And I should see "id" under chnages in view changes
	And I should see "startDate" under chnages in view changes
	And I should see "readmissionCounter" under chnages in view changes
	And I should see "duration" under chnages in view changes
	And I should see "patient" under chnages in view changes
	And I should see "episode" under chnages in view changes
	And I should see "episodeStatus" under chnages in view changes
	And I should see "episodeState" under chnages in view changes
	And I should see "carePlan" under chnages in view changes
	And I should see "episodeAssignment" under chnages in view changes
	And I should see "episodeModel" under chnages in view changes
	And I should see "episodeInitiator" under chnages in view changes
	And I should see "payer" under chnages in view changes
	And I should see "tags" under chnages in view changes
	
	
