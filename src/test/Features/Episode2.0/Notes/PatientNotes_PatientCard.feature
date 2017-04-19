
Feature: Patient Note on the Patient Card

Scenario: To Verify Quick Action has the following criteria on Patient Summary 
                 a)Topic drop down
                 b)Activity Date drop down calendar
                 c)Body text box 
                 d)Attach files link
                 e)create note link
                 f)Cancel link

Given I am on the login page
When I enter email field qa.admin@yopmail.com for login
And I enter password field Episode1! for Login
Then I click Access button
And I wait for 2000 milli seconds
Then I should see Tile text Episodes 2.0
When I click on the "Episodes 2.0" tile
And I wait for 25000 milli seconds
Then I verify current page "Remedy Partners" title
And I wait for 30000 milli seconds
Then I click on quick action button for note creation on Patient Card page
And I wait for 30000 milli seconds
Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
And  I select the value from the topic drop down on Patient Card
And I wait for 25000 milli seconds
Then I verify Activity Date drop down calendar appears on the Add Clinical Document on Patient Card
And I verify Activity Body text box appears on the Add Clinical Document on Patient Card
And I verify attach files link appears on the Add Clinical Document on Patient Card
And I verify Cancel button appears on the Add Clinical Document on Patient Card
And I verify Create note appears on the Add Clinical Document on Patient Card

Scenario: To verify user should be able to add a new note
Given I am on the login page
When I enter email field qa.admin@yopmail.com for login
And I enter password field Episode1! for Login
Then I click Access button
And I wait for 2000 milli seconds
Then I should see Tile text Episodes 2.0
When I click on the "Episodes 2.0" tile
And I wait for 25000 milli seconds
Then I verify current page "Remedy Partners" title
And I wait for 30000 milli seconds
Then I click on quick action button for note creation on Patient Card page
And I wait for 30000 milli seconds
Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
And  I select the value from the topic drop down on  Add Clinical Document on Patient Card
And I wait for 25000 milli seconds
Then I select the date from date picker on Add Clinical Document on Patient Card
And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
Then I click on the create Note Button on Add Clinical Document on Patient Card










