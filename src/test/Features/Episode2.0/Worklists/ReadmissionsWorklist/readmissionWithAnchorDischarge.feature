Feature: Verify Readmission status with anchor discharge

  Scenario Outline: Patient with anchor discharge, readmission in different facility.
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Last Name>" in the search box on the patients page
    And I wait for 30000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "12" on date picker
    Then I select the month "12" from calendar from date picker
    Then I select the "12" from the calendar from date picker on Transition Page
    Then I select the "12" time from the calendar from date picker on Transition Page
    Then I wait for 2000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I select the "5" LOS days on Discharge date on Add Transition
    Then I wait for 1000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 2000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG on the Diagnosis and DRG tab on add a new transition
    Then I wait for 3000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 10000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Transition Info on add a new transition
   Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "5" on date picker
    Then I select the month "5" from calendar from date picker
    Then I select the "5" from the calendar from date picker on Transition Page
    Then I select the "5" time from the calendar from date picker on Transition Page
    Then I wait for 2000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the facility value "Allentown" on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 10000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I click on the Impatient tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on the Readmissions sub tab on Impatient tab on patient Card Page
    Then I wait for 5000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Last Name>" in the search box on the admission tab on patients page
    Then I wait for 30000 milli seconds
    Then I verify the "<Patient Last Name>" patient not present on the Patient Card Page

 Examples: 
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | TESTAUTOMATION    |

 
  Scenario Outline: Verify Readmission status with anchor discharge, readmission in same facility
   Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Last Name>" in the search box on the patients page
    And I wait for 30000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on the edit button on the "1" transition to edit the Active transition
    And I wait for 8000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on update transition to add a new episode
    And I wait for 10000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I click on the Impatient tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on the Readmissions sub tab on Impatient tab on patient Card Page
    Then I wait for 5000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Last Name>" in the search box on the admission tab on patients page
    Then I wait for 30000 milli seconds
    Then I verify the "<Patient Last Name>" patient not present on the Patient Card Page

 Examples: 
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | TESTAUTOMATION    |  