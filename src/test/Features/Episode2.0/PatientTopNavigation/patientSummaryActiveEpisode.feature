Feature: Patient Summary Verification for Active Episodes

Scenario Outline: Create a Patient with M2 active episode,no discharge date and verify patient summary

    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I verify "20" Patient Cards are present on patients page
    Then I verify Add Patient button is present on patients page

    When I click on Add Patient button present on the patients page
    And I wait for 15000 milli seconds
    Then I verify "Add Patient" text is present on the add patient page
    And I switch to Add Patient embedded iframe
    Then I verify "Patient Information" text is present on the add patient page
    Then I enter "<First name>" in the first name text box present on the Add Patient page
    And I enter  "<Last name>" in the last name text box present on the Add Patient page
    And I enter date of birth "01/05/2011" present on the Add Patient Page
    And I wait for 4000 milli seconds
    And I selected "Male" from the gender drop down list present on the Add Patient page

    When I click on Admitting Facility present on the Add Patient page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I wait for 4000 milli seconds
    And I enter "<Medicare ID>" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 8000 milli seconds

    Then I verify "Primary Care Physician Information" text is present on the add patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 15000 milli seconds

    When I click on Calender button present on the Add Patient page
    And I wait for 2000 milli seconds
    And I select today's date as the admission date
    And I wait for 2000 milli seconds 
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    And I wait for 4000 milli seconds
    When I click on Diagnosis and DRG tab present on the patient overview page
    Then I verify ICD is present in the Diagnosis and DRG tab
    And I verify Predict DRG is present in the Diagnosis and DRG tab
    And I verify Add a New DRG is present in the Diagnosis and DRG tab

    When I click on DRG Type to Add a New DRG present on the patient overview page
    Then I select Possible from the DRG type dropdown present on the patient overview page
    Then I Click on DRG dropdown menu present on the patient overview page
    And I wait for 4000 milli seconds
    Then I Search DRG 177 on the search box on the DRG present on the patient overview page
    And I wait for 4000 milli seconds
    Then I select RESPIRATORY INFECTIONS & INFLAMATIONS from the DRG list present on the patient overview page
    And I wait for 4000 milli seconds
    Then I click on Create Transition button present on the patient overview page
    And I wait for 10000 milli seconds
    
    Examples:
      | First name | Last name   | Medicare ID |
      | FirstName  | ActiveState | WA725644986 |
      
 Scenario Outline: Create a Patient with CJR active episode,no episodes in history and verify patient summary
 
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I verify "20" Patient Cards are present on patients page
    Then I verify Add Patient button is present on patients page

    When I click on Add Patient button present on the patients page
    And I wait for 15000 milli seconds
    Then I verify "Add Patient" text is present on the add patient page
    And I switch to Add Patient embedded iframe
    Then I verify "Patient Information" text is present on the add patient page
    Then I enter "<First name>" in the first name text box present on the Add Patient page
    And I enter  "<Last name>" in the last name text box present on the Add Patient page
    And I enter date of birth "01/05/2011" present on the Add Patient Page
    And I wait for 4000 milli seconds
    And I selected "Male" from the gender drop down list present on the Add Patient page

    When I click on Admitting Facility present on the Add Patient page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I wait for 4000 milli seconds
    And I enter "<Medicare ID>" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 8000 milli seconds

    Then I verify "Primary Care Physician Information" text is present on the add patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 15000 milli seconds

    When I click on Calender button present on the Add Patient page
    And I wait for 2000 milli seconds
    And I select today's date as the admission date
    And I wait for 2000 milli seconds 
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    And I wait for 4000 milli seconds
    When I click on Diagnosis and DRG tab present on the patient overview page
    Then I verify ICD is present in the Diagnosis and DRG tab
    And I verify Predict DRG is present in the Diagnosis and DRG tab
    And I verify Add a New DRG is present in the Diagnosis and DRG tab

    When I click on DRG Type to Add a New DRG present on the patient overview page
    Then I select Possible from the DRG type dropdown present on the patient overview page
    Then I Click on DRG dropdown menu present on the patient overview page
    And I wait for 4000 milli seconds
    Then I Search DRG 6 on the search box on the DRG present on the patient overview page
    And I wait for 4000 milli seconds
    #Then I select RESPIRATORY INFECTIONS & INFLAMATIONS from the DRG list present on the patient overview page
    And I wait for 4000 milli seconds
    Then I click on Create Transition button present on the patient overview page
    And I wait for 10000 milli seconds
    
    Examples:
      | First name   | Last name   | Medicare ID |
      | FirstNameCJR | ActiveState | WA725644786 |