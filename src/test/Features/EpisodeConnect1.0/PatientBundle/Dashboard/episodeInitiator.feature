@EC1Smoke
Feature: Episode Initiator on Transition Table for Anchor Transition for New Patient
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
 
 Scenario: Display Active EI and DRG if Episode from separate EI is recently canceled (RE-6995)
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    
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
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    And I click on first gear menu under Transitions on patient overview
    And I click on "Edit" in gear menu option under Transition
    Then I select the "Final" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "1" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "Cancelled" state
    
    Then I click on new transition button present on the patient overview page
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select "HHH - Hospital" from the care setting dropdown present on the add transition page
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    When I click on Admitting Facility present on the Add transition page
    And I wait for 2000 milli seconds
    And I Select "Allentown" from the list of admitting facility present on the Add transition page
    And I wait for 4000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    And I should see "St Luke's - Allentown" in Episode Initiator
    Then I click on edit button present on the patient overview page
    Then I should see "Edit Episode Initiator" button is present on the Edit Episode Initiator modal
    Then I click on the "Cancel" button present on the Edit Episode Initiator modal
    And I am on "/secure/pn/patientslist"
    Then I click on "custom" filter tab present on the patients page
    And I enter patients fullname in the patient search box on the patient page
    Then I click on search button present on the patients page
    And I should see "St Luke's" Episode Initiator on Patient list page
    
