
Feature: Notes - Selecting a topic


Scenario: Verify that user should be able to select any topic from the Note>Topic dropdown bar.
 To verify user should be able to add a new note
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
And  I select the value "Bedside Visit" from the topic drop down on  Add Clinical Document on Patient Card

Scenario: Verify that Note>Topic dropdown bar should display the required value

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
And  I click the value from the topic drop down on  Add Clinical Document on Patient Card
Then I verify Topicdropdownbar has the placeholder Select a topic or not
And  I verify the drop down values on  Add Clinical Document on Patient Card



