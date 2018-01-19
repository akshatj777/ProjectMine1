@EC1Smoke
Feature: Store Correct Admit Facilities

 Scenario: Patient with No admissions, then only admin user can see the patients
  	Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    Then I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Allentown" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on "/secure/pn/patientslist"
    Then I click on "custom" filter tab present on the patients page
    And I enter patients fullname in the patient search box on the patient page
    Then I click on search button present on the patients page
    And I should see patient fullname appearing on patient card on patient search 
    Then I switch back to old window
    Then I click on profile icon on Remedy Connect page
    Then I select "Log Out" from profile icon dropdown 
    Given I am on the login page
    When I enter email field qa.lpn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    When I click on "Patients" in the left navigator present on the episode dashboard page
    When I click on "Patient List" in the Patients dropdown menu
    Then I click on "custom" filter tab present on the patients page
    And I enter patients fullname in the patient search box on the patient page
    Then I click on search button present on the patients page 
    And I should see "Showing 0 to 0 of 0 results" on patient search on patient list
    
    Then I switch back to old window
    Then I click on profile icon on Remedy Connect page
    Then I select "Log Out" from profile icon dropdown 
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    Then I click on new transition button present on the patient overview page
    And I will wait to see "New Transition" in "h4" tag
    And I click on admit date calender button present on the new transition page
    And I select today's date as the admission date
    Then I select "HHH - Hospital" from the care setting dropdown present on the add transition page
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    Then I select the "Admit" facility "Allentown" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    And I wait for 4000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    Then I switch back to old window
    Then I click on profile icon on Remedy Connect page
    Then I select "Log Out" from profile icon dropdown 
    Given I am on the login page
    When I enter email field qa.lpn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    Then I click on "custom" filter tab present on the patients page
    And I enter patients fullname in the patient search box on the patient page 
    Then I click on search button present on the patients page
    And I should see patient fullname appearing on patient card on patient search 
    
    
     
