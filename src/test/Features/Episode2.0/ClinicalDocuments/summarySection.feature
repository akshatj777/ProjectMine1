Feature: Summary Section of the Clinical Documents

Scenario Outline: The "Summary" section of the Clinical Document table should display the message from a created "Note
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
    And I wait for 5000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And  I select the value from the topic drop down on  Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And  I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    Then I verify that Add Files link is clickable
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload files from the computer through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I wait for 8000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
    Then I verify the presence of Summary Section of the Clinical Document table 
    Then I verify body text of the Note is appearing in the summary section
    Then I verify for clinical note and baseline summary should be displayed up to 2 lines
    Then I verify if summary is longer than the character limit then Ellipsis three dots should show
    Then I verify if a note is having attachment and do not have any summary then attachment count should appear in the summary section 
    Then I click on the cross button to close the CARL document form 
    Then I verify current page "Remedy Partners" title
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
 # Then I verify the CARL Document on the Clinical Documents tab in the patient summary Page
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
    Then I verify that if user has saved a form but not submitted, status should be read as In Progress
    Then I verify forms should not display any message in the summary section and it should be greyed out blank
Examples:
      | First name    |  Last name    | Medicare ID |  Notetext |
      |  AUTOMATION      |  DO_NOT_USE      |   wa984986  | In above case we have String dateString in format dd-MMM-yyyy, so to convert the String to Date in given format we have Created Object formatter of Class SimpleDateFormat. |
      
       
      
