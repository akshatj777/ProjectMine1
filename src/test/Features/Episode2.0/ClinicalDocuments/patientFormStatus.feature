Feature: Patient form status on the status section on clinical Documents

  Scenario: The Status section of the "Clinical Documents" table for a new patient(emblem user)
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I wait for 3000 milli seconds
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 3000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "9" on date picker
    Then I select the month "9" from calendar from date picker
    Then I select the "9" from the calendar from date picker on Transition Page
    Then I select the "9" time from the calendar from date picker on Transition Page
    Then I wait for 1000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 1000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I wait for 3000 milli seconds
    Then I select the "4" LOS days on Discharge date on Add Transition
    Then I wait for 3000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    Then I wait for 8000 milli seconds
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I wait for 3000 milli seconds
    Then I search and click on the searched patient which has the CARL text in it
    Then I wait for 1000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I click on the cross button to close the CARL document form
    Then I verify current page "Remedy Partners" title
    And I wait for 3000 milli seconds
    Then I click on the searched name on the patient card 
    Then I wait for 12000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 3000 milli seconds
    Then I verify that if user has saved a form but not submitted, status should be read as In Progress
    Then I verify that Inprogress status should be in purple color with Color code AD77B3
    Then I click on the cross button to close the CARL document form
    Then I verify current page "Remedy Partners" title
    And I wait for 2000 milli seconds
    Then I click on the searched name on the patient card 
    And I wait for 12000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I click on the Submit button to submit the CARL form
    And I wait for 7000 milli seconds
    Then I click on the searched name on the patient card 
    And I wait for 12000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I verify that if user submits a patient form status should be read as Active
    Then I verify that Active status should be in green color with Color code 4EB96F
    Then I click on the Transitions tab on the Patient Summary Page
    And I wait for 5000 milli seconds
    Then I switch to PatientTransitions frame
    And I wait for 3000 milli seconds
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the centre of the calendar header to select date and month on Transition Page
    Then I click on the previous next link to select the required year "6" on date picker
    Then I select the month "6" from calendar from date picker
    Then I select the "6" from the calendar from date picker on Transition Page
    Then I select the "6" time from the calendar from date picker on Transition Page
    Then I wait for 1000 milli seconds
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait for 1000 milli seconds
    Then I select the care type value "Inpatient" on add a new transition
    Then I wait for 2000 milli seconds
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I wait for 3000 milli seconds
    Then I select the "2" LOS days on Discharge date on Add Transition
    Then I wait for 3000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    Then I wait for 8000 milli seconds
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I click on the cross button to close the CARL document form
    Then I verify current page "Remedy Partners" title
    And I wait for 2000 milli seconds
    Then I click on the searched name on the patient card 
    And I wait for 12000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I save and continue the complete CARL form
    And I wait for 1000 milli seconds
    Then I click on the Submit button to submit the CARL form
    And I wait for 7000 milli seconds
    Then I click on the searched name on the patient card 
    And I wait for 12000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I verify that if patient has has a formed assigned that is the same as an existing form the status of the already existing form should be read as Archived
    Then I verify that Archived status should be in Grey color with Color code 959595
    