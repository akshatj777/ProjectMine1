Feature: Episode 2.0 Anchor Discharge Facility Filters

  Scenario Outline: verify Admit Reason filter is present under list of Filter options on Patient Page
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 3000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 3000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I wait for 3000 milli seconds
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 3000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "30" on date picker
    Then I select the month "30" from calendar from date picker
    Then I select the "30" from the calendar from date picker on Transition Page
    Then I select the "30" time from the calendar from date picker on Transition Page
    Then I wait for 1000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 1000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 1000 milli seconds
    Then I select the facility value "Stamford" on add a new transition
    Then I wait for 1000 milli seconds
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I wait for 1000 milli seconds
    Then I select the Discharge care setting value "HHH - Hospital" on add a new transition
    Then I wait for 1000 milli seconds
    Then I select the Discharge care type value "Inpatient" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the Discharge facility value "Stamford Hospital" on add a new transition
    Then I wait for 4000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 1000 milli seconds
    Then I select the "Possible" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 4000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 8000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 8000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I reload my page
    Then I wait for 5000 milli seconds
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify Anchor Discharge Facility Filter is displayed under List of Filter Options
    When I click on Anchor Discharge Facility Filter present on Filter Page
    And I wait for 3000 milli seconds
    And I click on Anchor Discharge Facility dropdown to select the Facilty on the Filter Page
    When I type <anchor discharge facility> in the search field to search the Anchor Discharge Facility
    And I wait for 5000 milli seconds
    And I select Stamford hospital checkbox present in the Filter Page
    And I wait for 9000 milli seconds
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 3000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 15000 milli seconds
    Then I verify the total number of patients present on the Patients Page
    And I wait for 5000 milli seconds
    Then I click on "Agree" button appearing on the patient card after applying filter
    And I wait for 5000 milli seconds
    Then I verify <anchor discharge facility> is appearing under selected filters for Anchor Discharge Facility

    Examples: 
      | anchor discharge facility | Patient First Name | Patient Last Name     |
      | Stamford Hospital         | PATIENT            | TESTADMITREASONFILTER |
