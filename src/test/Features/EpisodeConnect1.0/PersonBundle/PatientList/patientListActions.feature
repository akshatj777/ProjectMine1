@EC1Smoke
Feature: Patient list action

  Scenario: Verify Add Form(s) from Patient List
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
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    And I click on submit button present on the new filter modal
    
 	Then I click on "custom" filter tab present on the patients page
    Then I enter patient's firstname in the patient search box on the patient page 
    Then I click on search button present on the patients page
    And I verify "Needs Onboarding" onboarding status on patient list page
    And I click on first patient gear menu
    When I click on "Add Form(s)" from patients list patient gear menu
    Then I verify "Assign New Form" header on popup
    Then I select "Clinical Risk Assessment" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    And I click on "Assign" button
    And I refresh the page 
    And I verify "Unknown" onboarding status on patient list page
    
  Scenario: Add New Clinician for specific patient from patient list
   	Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    
    Then I click on "custom" filter tab present on the patients page
    Then I enter patient's firstname in the patient search box on the patient page 
    Then I click on search button present on the patients page
    
    When I click on "Add New Clinician" from patients list patient gear menu
    Then I verify "Add New Clinician" header on popup

#     When I check second clinician
#     And I click 'Assign' popup button
#     And I will wait flash message to appear
#     Then I will wait to see "Clinicians assigned to patient correctly"
#     And I should be on "/secure/pn/patientslist"
