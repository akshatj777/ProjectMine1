Feature: Note - Add files

Scenario Outline: To verify that user should be able to upload the file with different extensions or not
Given I am on the login page
When I enter email field qa.admin@yopmail.com for login
And  I enter password field Episode1! for Login
Then I click Access button
And  I wait for 2000 milli seconds
Then I should see Tile text Episodes 2.0
When I click on the "Episodes 2.0" tile
And  I wait for 8000 milli seconds
Then I verify current page "Remedy Partners" title
Then I click on the Impatient tab on the patient Card Page  
And  I wait for 10000 milli seconds
Then I click on quick action button for note creation on Patient Card page
Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
And  I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
Then I click on Add Files link on Note Section on Patient Card
And I wait for 10000 milli seconds
Then I verify that user should be able to select and upload file "<FileName>" through Add files link
And I wait for 10000 milli seconds
Then I verify the image is attached or not
Then I click on the create Note Button on Add Clinical Document on Patient Card
Then I verify that create Note has been successfully created
Then I verify Dismiss button should be there on notification message 
Then I check clicking on cross icon of green bar green bar notification should get removed 

Examples:
           |  FileName      |
           |  Sample.csv    |
           |  sample.doc    |
           |  Sample.gif    |
           |  Sample.txt    |
           |  Sample.xls    |
           |  Sample.xlsx   |

Scenario: To verify that User should be able upload multiple files at once on Notes on Patient Card
Given I am on the login page
When I enter email field qa.admin@yopmail.com for login
And  I enter password field Episode1! for Login
Then I click Access button
And  I wait for 2000 milli seconds
Then I should see Tile text Episodes 2.0
When I click on the "Episodes 2.0" tile
And  I wait for 8000 milli seconds
Then I verify current page "Remedy Partners" title
Then I click on the ALL Tab on Patient page 
And  I wait for 20000 milli seconds
Then I get the name of the first patient from the patient list on patient card page
Then I click on quick action button for note creation on Patient Card page
Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
And  I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
Then I click on Add Files link on Note Section on Patient Card
And I wait for 5000 milli seconds
Then I verify that user should be able to select and upload file "Sample.csv" through Add files link
Then I verify the image is attached or not
Then I click on Add Files link on Note Section on Patient Card
Then I verify that user should be able to select and upload file "sample.doc" through Add files link
And I wait for 8000 milli seconds
Then I verify the image is attached or not
Then I click on Add Files link on Note Section on Patient Card
And I wait for 8000 milli seconds
Then I verify that user should be able to select and upload file "Sample.docx" through Add files link
And I wait for 8000 milli seconds
Then I verify the image is attached or not
Then I verify that trash icon is available for each file after uploading all file 
Then I verify user should be able to remove the file by selecting the trash icon
Then I wait for 3000 milli seconds
Then I click on the create Note Button on Add Clinical Document on Patient Card
Then I wait for 3000 milli seconds
Then I verify that create Note has been successfully created
Then I verify message should display in green color Your clinical document for Angela Pena has been added
Then I verify on notification there should be link to View clinical document

Scenario Outline:  To verify user should be able to cancel the Note creation
Given I am on the login page
When I enter email field qa.admin@yopmail.com for login
And  I enter password field Episode1! for Login
Then I click Access button
And  I wait for 2000 milli seconds
Then I should see Tile text Episodes 2.0
When I click on the "Episodes 2.0" tile
And  I wait for 8000 milli seconds
Then I verify current page "Remedy Partners" title
Then I click on the ALL Tab on Patient page 
And  I wait for 20000 milli seconds
Then I click on quick action button for note creation on Patient Card page
Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
And  I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
Then I click on Activity Date on  Add Clinical Document on Patient Card
Then I click on the centre of the calendar header to select date and month
Then I click on the next link to select the required year "<date>" on date picker
Then I select the month "<date>" from calendar from date picker
Then I select the "<date>" from the calendar from date picker
And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
Then I click on Add Files link on Note Section on Patient Card
And I wait for 5000 milli seconds
Then I verify that user should be able to select and upload file "Sample.csv" through Add files link
Then I wait for 7000 milli seconds
Then I verify the image is attached or not
Then I wait for 3000 milli seconds
Then I click on the Cancel button on the Note Section on Patient Card
Then I verify create note successful message doesnot appear on Patient Card
Then I verify on canceling Note creation Note window should get close

Examples:
           | date |  
         | 12/07/2014 | 
         | 15/05/2017 |
         | 26/10/2022 |  

  Scenario: To verify that User should be able upload multiple files at once on Notes on Patient Card
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And  I enter password field Episode1! for Login
    Then I click Access button
    And  I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And  I wait for 8000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And  I wait for 20000 milli seconds
    Then I get the name of the first patient from the patient list on patient card page
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And  I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
    And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
    Then I click on Add Files link on Note Section on Patient Card
    And I wait for 5000 milli seconds
    Then I verify that user should be able to select and upload file "Sample.csv" through Add files link
    Then I verify the image is attached or not
    Then I click on Add Files link on Note Section on Patient Card
    Then I verify that user should be able to select and upload file "sample.doc" through Add files link
    And I wait for 8000 milli seconds
    Then I verify the image is attached or not
    Then I click on Add Files link on Note Section on Patient Card
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload file "Sample.txt" through Add files link
    And I wait for 8000 milli seconds
    Then I verify the image is attached or not
    Then I verify that trash icon is available for each file after uploading all file
    Then I verify user should be able to remove the file by selecting the trash icon
    Then I wait for 3000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I wait for 3000 milli seconds
    Then I verify that create Note has been successfully created
    Then I verify message should display in green color Your clinical document for Angela Pena has been added
    Then I verify on notification there should be link to View clinical document

  Scenario Outline:  To verify user should be able to cancel the Note creation
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And  I enter password field Episode1! for Login
    Then I click Access button
    And  I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And  I wait for 8000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And  I wait for 20000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And  I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
    Then I click on Activity Date on  Add Clinical Document on Patient Card
    Then I click on the centre of the calendar header to select date and month
    Then I click on the next link to select the required year "<date>" on date picker
    Then I select the month "<date>" from calendar from date picker
    Then I select the "<date>" from the calendar from date picker
    And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
    Then I click on Add Files link on Note Section on Patient Card
    And I wait for 5000 milli seconds
    Then I verify that user should be able to select and upload file "Sample.csv" through Add files link
    Then I wait for 7000 milli seconds
    Then I verify the image is attached or not
    Then I wait for 3000 milli seconds
    Then I click on the Cancel button on the Note Section on Patient Card
    Then I verify create note successful message doesnot appear on Patient Card
    Then I verify on canceling Note creation Note window should get close

    Examples:
      | date       |
      | 12/07/2014 |
      | 15/05/2017 |
      | 26/10/2022 |
