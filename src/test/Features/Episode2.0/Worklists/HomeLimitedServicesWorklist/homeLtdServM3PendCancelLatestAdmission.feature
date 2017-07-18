Feature: Patient status on Home Limited Service Worklist

  Scenario Outline: Create patient with pending cancellation M3 episode status.
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
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 2000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 2000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the edit button on the "1" transition to edit the Active transition
    Then I wait for 10000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG No JavaScript
    Then I wait for 5000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "6" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on update transition to add a new episode
    Then I wait for 10000 milli seconds
    When I switch to default window from iframe

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | ABHIS              | MTHREEHOMELIMITED |

   Scenario Outline: Verify Patient should be included in Home With Limited Services worklist latest anchor admission's with discharge care setting as HOM/REH(outpatient).
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
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 4000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 2000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    And I wait for 6000 milli seconds
    Then I delete the active transition no "1" to make the patient cancelled
    And I wait for 6000 milli seconds
    Then I click on add a new transition to add a new episode
    And I wait for 5000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "17" on date picker
    Then I select the month "17" from calendar from date picker
    Then I select the "17" from the calendar from date picker on Transition Page
    Then I select the "17" time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I select the care setting value "REH - Rehabilitation" on add a new transition
    Then I wait for 4000 milli seconds
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I wait for 4000 milli seconds
    Then I select the Discharge care setting value "REH - Rehabilitation" on add a new transition
    Then I wait for 4000 milli seconds
    Then I select the Discharge care type value "Outpatient" on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 15000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I reload my page
    Then I click on the Post Acute tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on Home with Limited Services sub tab on the patient Card Page
    Then I wait for 10000 milli seconds
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 4000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 2000 milli seconds
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | ABHIS              | MTHREEHOMELIMITED |