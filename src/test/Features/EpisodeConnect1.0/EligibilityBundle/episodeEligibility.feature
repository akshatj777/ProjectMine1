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
    
#    And I will wait to see "New Transition" in "h4" tag
#    Then I fill in "Admit" with logic "minus" with "1" days
#    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
#    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
#    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
#    And I click on submit button present on the new filter modal
    
    Scenario: Verify Eligibility should Automatically run upon a patient admission to a SNF.
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    
    Then I click on new transition button present on the patient overview page
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the calender button present on the new tranition page
    And I select today's date as the admission date
    Then I select "SNF - Skilled Nursing Facility" from the care setting dropdown present on the add transition page
    And I select "Skilled Nursing" from admission care type drop down menu present on Add transition page
    When I click on Admitting Facility present on the Add transition page
    And I wait for 2000 milli seconds
    And I Select "Capitol Hill Healthcare Center" from the list of admitting facility present on the Add transition page
    And I wait for 4000 milli seconds
    And I click on submit button present on the new filter modal
    Then I navigate to the "/secure/person/mongoID/overview"
    And I should see "Error" in Eligibility
    	
    