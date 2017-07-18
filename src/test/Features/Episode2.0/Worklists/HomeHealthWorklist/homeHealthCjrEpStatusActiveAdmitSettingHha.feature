Feature: Patient status on Home Health Worklist

  Scenario Outline: Patient with Episode status as Pending cancellation CJR with a Readmission to HHA active care setting facility
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 5000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 3000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 1000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 8000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I wait for 3000 milli seconds
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 5000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "20" on date picker
    Then I select the month "20" from calendar from date picker
    Then I select the "20" from the calendar from date picker on Transition Page
    Then I select the "20" time from the calendar from date picker on Transition Page
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 1000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "65" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 4000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 8000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "19" on date picker
    Then I select the month "19" from calendar from date picker
    Then I select the "19" from the calendar from date picker on Transition Page
    Then I select the "19" time from the calendar from date picker on Transition Page
    Then I select the care setting value "HHA - Home Health Agency" on add a new transition
    Then I select the care type value "Skilled services" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the facility value "Amedisys Home Health - Stamford" on add a new transition
    Then I wait for 2000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 8000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I reload my page
    Then I wait for 3000 milli seconds
    Then I click on the Post Acute tab on the patient Card Page
    Then I click on Home Health sub tab on the patient Card Page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I wait for 4000 milli seconds
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 2000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 1000 milli seconds
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | TESTAUTOMATEUSER  |

  Scenario Outline: Patient's current Admit Care Setting is HHA with Episode status as Pending Cancellation CJR
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 8000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 3000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 1000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 8000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on the edit button on the "2" transition to edit the Active transition
    Then I wait for 10000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "6" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    Then I wait for 8000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I wait for 1000 milli seconds
    Then I reload my page
    Then I wait for 3000 milli seconds
    Then I click on the Post Acute tab on the patient Card Page
    Then I click on Exceed SNF LOS sub tab on the patient Card Page
    Then I wait for 1000 milli seconds
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I wait for 3000 milli seconds
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 3000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 3000 milli seconds
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | TESTAUTOMATEUSER  |
