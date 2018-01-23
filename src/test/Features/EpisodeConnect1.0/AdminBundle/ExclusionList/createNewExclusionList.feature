Feature: Create Exclusion List
@EC1Smoke
  Scenario: Create new Exclusion List
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/exclusionlist/new"
    And I wait untill "New object for AdminBundle" text is appearing on the new exclusions lists page
    And I fill in "name" with "test list" on new exclusion lists page
    And I fill in "type" with "test type" on new exclusion lists page
    And I fill in "description" with "test description" on new exclusion lists page
    And I fill in "ids" with "112" on new exclusion lists page
    And I press "Save" on new exclusion lists page
    Then I will wait to see "The object was successfully saved" in "p" tag
