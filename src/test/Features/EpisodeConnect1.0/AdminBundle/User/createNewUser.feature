Feature: Create new User
@EC1Smoke
  Scenario: Create new user with success
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/user/new"
    And I wait untill "Register a User" text is appearing on the user creation page
    And I fill in "firstName" with "TestFirstName" on register user page
    And I fill in "lastName" with "TestLastName" on register user page
    And I fill in "phone" with "111-222-333" on register user page
    And I fill in user email with "randomemail" on register user page
    And I fill in Password with "Testing1" on registeres user page
    And I fill in Confirm Password with "Testing1" on register user page
    And I select "Admin" from "new_bppatientnavigator_user_roles"
    And I press "Save" on the register user page
    Then I will wait to see "The object was successfully saved" in "p" tag
