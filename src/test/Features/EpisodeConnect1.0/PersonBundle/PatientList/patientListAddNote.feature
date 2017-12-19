Feature: New Note from patient list actions

 Scenario: Verify that note is created from patient list and displayed properly on care plan->Notes list
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
#    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
#    Then I Expand to the patient summary page
#    And I will wait to see "Attestation" in "span" tag
#    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
#    And I will wait to see patient's name on patient summary page
#    And I am on "/secure/pn/patientslist"
    Then I click on "custom" filter tab present on the patients page
    Then I enter patient's firstname in the patient search box present on the patient page 
    Then I click on search button present on the patients page
    Then I click on the patient name present on the patient list
    And I click on Agree button present on the Attestation page
    
    
    
    Then I click on "custom" filter tab present on the patients page
    Then I enter FirstNfbynigj in the patient search box present on the patient page
    Then I click on search button present on the patients page
    Then I click on the patient name present on the patient list
    And I click on Agree button present on the Attestation page
    
    Then follow "Add Note" from patients list patient gear menu
    And I will wait to see "Create Note"
    When I fill in 'Body' with "Note from patients list"
    And I choose "Baseline" from 'Topic' select
    When I press "Create Note"
#    And I will wait flash message to appear
#    Then I will wait to see "Note created."
    And I wait 1 seconds
    When I am on "/secure/person/100000000000000000000001/overview"
    Then I will wait to see "Attestation"
    And I should see "Agree"
    And I press "Agree"
    And I wait 2 seconds
    Then I will wait to see "Patient1"
    When I follow visible "Care Plan"
    Then I will wait to see "Notes"
    When I follow visible "Notes"
    Then I will wait to see "Note from patients list"