
Feature: Patient Notes

Scenario: Verify click on patient card to be navigated to patient summary 
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
Then I click on the patient card
Then I verify click on patient card to be navigated to patient summary 

Scenario: To Verify Patient Summary includes quick action button for note creation

Verify click on patient card to be navigated to patient summary 
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
Then I click on the patient card
And I wait for 30000 milli seconds
Then I verify Patient Summary includes quick action button for note creation



Scenario: To Verify Quick Action has the following criteria on Patient Summary 
                 a)Topic drop down
                 b)Activity Date drop down calendar
                 c)Body text box 
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
Then I click on the patient card
And I wait for 30000 milli seconds
Then I click on quick action button for note creation on Patient Summary page
Then I verify whether topic drop down appears on the Add Clinical Document on Note Creation
And  I select the Baseline value from the topic drop down on Note Creation
And I wait for 25000 milli seconds
Then I verify Activity Date drop down calendar appears on the Add Clinical Document on Note Creation
And I verify Activity Body text box appears on the Add Clinical Document on Note Creation



 