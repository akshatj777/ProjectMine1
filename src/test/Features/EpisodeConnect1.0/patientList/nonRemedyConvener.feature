@EC1Smoke
Feature: Verify visibility and functionality of Non Remedy Convener under EI 

Scenario: Create Active Patient and verify avaliablity of Non Remedy Convener under EI
    
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter "ECFirstNfbynigj" in the first name text box present on the Add Patient page
    And I enter "ECLastNabynjjifh" in the last name text box present on the Add Patient page
    And I enter date of birth "01/05/2011" present on the Add Patient Page
    And I wait for 4000 milli seconds
    And I selected "Male" from the gender drop down list present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I wait for 4000 milli seconds
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 8000 milli seconds
    Then I verify "Primary Care Physician Information" text is present on the add patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 15000 milli seconds
    When I click on Calender button present on the Add Patient page
    And I wait for 2000 milli seconds
    And I select today's date as the admission date
    And I wait for 2000 milli seconds
    And I select "Inpatient" from admission care type drop down menu present on Add Patient page
    And I wait for 4000 milli seconds
    When I click on Add Transition button present on the Add Patient page
    And I wait for 10000 milli seconds
    And I click on Agree button present on the Attestation page
    When I click on Diagnosis and DRG tab present on the patient overview page
    When I click on DRG Type to Add a New DRG present on the patient overview page
    Then I select Possible from the DRG type dropdown present on the patient overview page
    Then I Click on DRG dropdown menu present on the patient overview page
    And I wait for 4000 milli seconds
    Then I Search DRG 177 on the search box on the DRG present on the patient overview page
    And I wait for 4000 milli seconds
    Then I select RESPIRATORY INFECTIONS & INFLAMATIONS from the DRG list present on the patient overview page
    And I wait for 4000 milli seconds
    Then I click on Add Transition button present on the Add Patient page
	
	Then I click on edit button present on the patient overview page
	Then I click on the Episode Initiator dropdown present on the Edit Episode Initiator modal
	And I should see "Non-Remedy Convener" option is present on the Edit Episode Initiator modal
	
