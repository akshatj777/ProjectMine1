Feature: Create Episode from admin center
@EC1Smoke
Scenario: To verify user (admin) is able to register new Episode from Register Episode page.
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/episode/new"
    Then I will wait to see "New Episode" on new episode creation page
    And I fill in "name" with "test9" on new episode page
    And I fill in "drg" with "randomDrg" on new episode page
    And press save button on New Episode page
    Then I will wait to see "The object was successfully saved" in "p" tag