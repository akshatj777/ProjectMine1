Feature: Notes Read-Only
	
Scenario Outline: Upon selecting the note title in the clinical documents section, user should see a read only version of that note

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
    And I wait for 10000 milli seconds
    #Then I click on quick action button for note creation on Patient Card page
    #Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    #And  I select the value "Bedside Visit" from the topic drop down on  Add Clinical Document on Patient Card
    #Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    #And I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    #Then I verify that Add Files link is clickable
    #And I wait for 8000 milli seconds
    #Then I verify that user should be able to select and upload files from the computer through Add files link
    #Then I wait for 8000 milli seconds
    #Then I click on the create Note Button on Add Clinical Document on Patient Card
    #Then I verify that create Note has been successfully created
    #Then I wait for 8000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 10000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I click on the document to open the Notes on the Clinical Documents
    And I wait for 5000 milli seconds
    Then I Verify that Notes - Read only form should be accessible
    Then I verify Topic should be the note title
    Then I verify Body text box should be there on Notes - Read only form
    Then I Verify that Username should be displayed under notes read only form
    Then I Verify that User role should be displayed under notes read only form
    Then I Verify that User email should be displayed under notes read only form
    Then I verify the Activity Date and time of the note under notes read only form
    Then I verify that there is an Attachments section that should display all attachments
    Then I verify that user should be able to download all the attachment attached under the notes by selecting download link
   
    Examples:
    |   First name      |    Last name       | Medicare ID | Notetext |
    |   AUTOMATIONNEW   |     DO NOT USENEW  | wa984986    | In above case we have String dateString in format dd-MMM-yyyy, so to convert the String to Date in given format we have Created Object formatter of Class SimpleDateFormat.|
     
    
    