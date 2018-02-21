Feature: Delete a user from SA

  Scenario Outline: Login from SA and delete an existing user
    Given I am on the login page
    When I enter email field test.automatemail+sPMRSgQG@gmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
   Then I enter "phys1_may24@yopmail.com" in search box for "<user>-<Role>"
   Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the header "General Information"
    Then I verify availability of link "Delete User"
    Then I click on "Delete User" link on general information tab
    Then I verify text "Are you sure you want to delete"
    Then I verify "Cancel" button on deletion alert
    Then I click on "Cancel" button on deletion alert
    Then I verify the header "General Information"
    Then I click on "Delete User" link on general information tab
    Then I verify availability of "Delete" button on deletion alert
    Then I click on "Delete" button to delete user
    Then I should see header text "Users"
    Then I enter "phys1_may24@yopmail.com" in search box for "<user>-<Role>"
    Then I verify No Results Found is displayed

    Examples: 
      | User        | Role      | Email             |
      | Super Admin | Executive | test.automatemail |
