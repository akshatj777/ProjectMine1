Feature: Clinical Documents - Patient Notes History Section

  Scenario Outline: The Last saved section on the clinical documents table should display the information of the last user who saved the individual form (To verify information Activity column in Clinical Documents table)
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
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    Then I click on Add Files link on Note Section on Patient Card
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload file "Sample.txt" through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I wait for 8000 milli seconds
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
    Then I wait for 3000 milli seconds
    Then I click on the searched name on the patient card 
    Then I wait for 6000 milli seconds
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
    And I wait for 2000 milli seconds
    Then I verify LastName FirstName and userrole appears in last saved section
    Then I click on the Show History Button to see the list of user who saved the form 
    Then I verify that upon Selecting Show History should display the information of all users who have saved that form
    Then I verify that Show History section should not be applicable for note section
    Then I verify that Hide History link should appear when user currently on Show History section
    Then I verify that upon selecting Hide History user should only see the information of the last user who saved the form
    Then I verify that there should be an Attachment icon on Clinical Documents Activity Section
    Examples: 
      | First name | Last Name | Medicare ID | date | Notetext                |
      | DO_NOT_USE | CROSSES   | wa984986    |   12 | Remedy Document Section |
