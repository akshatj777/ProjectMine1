Feature: Verification of Landing Page for PTA User

Scenario: Verification of Super Admin Landing page UI, user information and pagination
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I should not see text "Unable to Load users" on Users page
    And I verify "User table" on landing page
    And I verify "Lock status Coulmn" on landing page
    And I verify "User Name Column" on landing page
    And I verify "User Role Column" on landing page
    And I verify "User Email Column" on landing page
    And I verify "Creation Date Column" on landing page
    And I verify "previous and next icons functions" on landing page
    And I verify "Pagination functionality" on landing page
    And I verify "Pagination retention" on landing page
    And I verify "Users rows allignment" on landing page
    And I verify "Users Count" on landing page
    And I verify rows allignment on landing page when the count of users is not a multiple of three
    And I verify "Long email, first name and last name" on landing page
    And I verify "Name" value for users on landing page
    And I verify "Role" value for users on landing page
    And I verify "Email" value for users on landing page
    And I verify "Creation Date" value for users on landing page
    And I verify "Account Status" value for users on landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I should see "Add New User" on the user creation page
    Then I click on close icon from user creation page
    Then I select any user
    And I verify that I am navigated to view user page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
