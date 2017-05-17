Feature: Complete CARL button

Scenario Outline: The ‘Complete CARL’ button should appear on the patient card with active Episodes 
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Transitions tab on the Patient Summary Page
    And I wait for 5000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the date from the datepicker on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care setting value on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care type value on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the facility value on add a new transition
    Then I wait for 12000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the DRG on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 10000 milli seconds
    When I switch to default window from iframe
     Then I wait for 5000 milli seconds
    Then I close the patient summary Page
    Then I verify CARL button is appearing on the patient card or not
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 10000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    Then I Verify that Carl form should appear with White bar with Patient Name "<Last name>" "<First name>" and x icon on the page
    Then I Verify that Carl form should appear with Cancel link
    Then I Verify that Carl form should appear with Save your progress link 
    Then I Verify that Carl form should appear with review the form link
    Then I Verify that Carl form should appear with review the form link
    Then I Verify that Carl form should appear Left navigator displaying four sections
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form  
    Then I close the patient summary Page
     And I wait for 10000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I verify that if user has saved a form but not submitted, status should be read as In Progress 
    Then I click on the complete CARL on the Patient Summary
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form  
    Then I click on the Submit button to submit the CARL form
    And I wait for 5000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I verify that if user submits a patient form status should be read as Active
    Then I close the patient summary Page
    Then I verify CARL button is appearing on the patient card or not
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Transitions tab on the Patient Summary Page
    And I wait for 5000 milli seconds
    Then I switch to PatientTransitions frame
    Then I select the button to delete the transition
    Then I click on the button to delete the transition
    Then I click on Ok to delete the transition
    And I wait for 10000 milli seconds
    When I switch to default window from iframe
    Then I close the patient summary Page
    Then I verify CARL button is appearing on the patient card or not
   
    
Examples:

     | First name    | Last name    | Medicare ID |
      |  PATIENT  | TRISTO  | wa984986    |
   
  
