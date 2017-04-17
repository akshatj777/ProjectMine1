
Feature: Patient Notes

Scenario: Patient Summary Quick Action Notes should match patient card design
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
When I click on the patient card button on the patient page


