Feature: Patient status on Readmission Discharges Work List

  Scenario Outline: Patient with Episode status as Potential M3 with a Readmission to SNF (any care type) discharge care setting facility within last 7 days
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
    And I wait for 3000 milli seconds
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 3000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 1000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I wait for 7000 milli seconds
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 7000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "10" on date picker
    Then I select the month "10" from calendar from date picker
    Then I select the "10" from the calendar from date picker on Transition Page
    Then I select the "10" time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the facility value "Emanuel County Hospital Authority" on add a new transition
    Then I wait for 3000 milli seconds
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I wait for 3000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "177" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 8000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    Then I wait for 15000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "7" on date picker
    Then I select the month "7" from calendar from date picker
    Then I select the "7" from the calendar from date picker on Transition Page
    Then I select the "7" time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I click on datepicker button to select the discharge date on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the centre of the calendar header to select discharge date and month on Transition Page
    Then I wait for 2000 milli seconds
    Then I click on the previous next link to select the required year "6" on date picker
    Then I wait for 5000 milli seconds
    Then I select the month "6" from calendar from date picker on Discharge
    Then I wait for 5000 milli seconds
    Then I select the calendar date "6" from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I click on datepicker button to select the discharge date on add a new transition
    Then I select the midnight time from the calendar from date picker on Transition Page
    Then I wait for 5000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the Discharge care setting value "SNF - Skilled Nursing Facility" on add a new transition
    Then I wait for 4000 milli seconds
    Then I select the Discharge care type value "Skilled Nursing" on add a new transition
    Then I wait for 4000 milli seconds
    Then I select the Discharge facility value "Coosa valley health care" on add a new transition
    Then I wait for 8000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I reload my page
    Then I wait for 3000 milli seconds
    Then I click on the Post Acute tab on the patient Card Page
    Then I wait for 5000 milli seconds
    Then I click on Readmission Discharges Facility sub tab on the patient Card Page
    Then I wait for 10000 milli seconds
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    And I wait for 3000 milli seconds
    Then I verify Last Name Filter is displayed under List of Filter Options
    When I click on last name Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter <Patient Last Name> under first name filter
    And I wait for 3000 milli seconds
    Then I click on Done button present on the Filter Page
    And I wait for 1000 milli seconds
    Then I verify the "<Patient Last Name>" patient present on the Patient Card Page

    Examples: 
      | email                | password  | Patient First Name | Patient Last Name    |
      | qa.admin@yopmail.com | Episode1! | PATIENT            | READMISSIONDISCHARGE |