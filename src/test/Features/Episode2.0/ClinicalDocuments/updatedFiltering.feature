
Feature: Updated Filtering
	
	Scenario Outline:Verify that user should be able to select multiple filters by checkbox

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
    And I wait for 20000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 10000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
   And  I select the value "Bedside Visit" from the topic drop down on  Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And  I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    Then I verify that Add Files link is clickable
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload files from the computer through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I wait for 12000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 15000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
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
  Then I verify the CARL Document on the Clinical Documents tab in the patient summary Page
    Then I wait for 5000 milli seconds
    Then I click on the cross button to close the CARL document form 
    Then I verify current page "Remedy Partners" title
    Then I click on the "<Last name>" searched patient which has the CARL text in it
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
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    Then I wait for 12000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I verify there should be filter link on clinical document section
    Then I click on filter link on clinical document section
    And I wait for 5000 milli seconds
    Then I Verify that Selecting Filters link when the filters drawer is open should close the drawer
    Then I click on filter link on clinical document section
    Then I Verify that Clinical Documents Filters link should display filters as below with the correct syntax and sequence
    Then I Verify that user should be able to select multiple filters by checkbox
   
   Examples:
      | First name    | Last name    | Medicare ID |
      | AUTOMATION    | DO_NOT_USE   | wa984986    |
       
         
       
    Scenario Outline: Verify the changes with multiple filter selected at the same time

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
    And I wait for 8000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 8000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    And I wait for 5000 milli seconds
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And  I select the value "Bedside Visit" from the topic drop down on  Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And  I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    Then I verify that Add Files link is clickable
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload files from the computer through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I wait for 12000 milli seconds
     Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And  I select the value "Baseline" from the topic drop down on  Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And  I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    Then I verify that Add Files link is clickable
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload files from the computer through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I wait for 12000 milli seconds
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
    Then I click on the cross button to close the CARL document form 
    Then I verify current page "Remedy Partners" title
    Then I click on the "<Last name>" searched patient which has the CARL text in it
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
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    Then I wait for 12000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
    Then I verify there should be filter link on clinical document section
    Then I click on filter link on clinical document section
    And I wait for 5000 milli seconds
    Then I Verify that checking multiple filter options should return relevant patients in return 
    And I wait for 5000 milli seconds 
    Then I Verify that clicking on Done should close the filter drawer and process the filter
    
   
    
Examples:
      | First name    | Last name    | Medicare ID | Notetext      |
      | AUTOMATIONNEW | DO NOT USENEW        | wa984986    | Sample Remedy |

      
        