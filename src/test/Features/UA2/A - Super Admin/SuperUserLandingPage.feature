Feature: Super Admin Landing page verification

  
  Scenario: Verification of Super Admin Landing page UI
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I verify "User table" on landing page
    And I verify "User Lock status" on landing page
    And I verify "User Name" on landing page
    And I verify "User Role" on landing page
    And I verify "User Email" on landing page
    And I verify "Creation Date" on landing page
    And I verify "Pagination" on landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I click on close icon from user creation page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

  Scenario: Verify user information in Super Admin landing page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I verify user information

  #search cases
  Scenario: Verify ability of Super Admin user to search a user by First name/Last name/Email
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "FirstName"
    And I should see "FirstName" for "First Name" in search result
    Then I enter search box in landing page with "LastName"
    And I should see "LastName" for "Last Name" in search result
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result

  Scenario Outline: Verify ability of Super Admin user to lock a user from landing page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I lock user with email "test.automatemail"
    And I verify that user is locked
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should not be able to login

    Examples: 
      | user        | Role      |
      | Super Admin | Executive |

  Scenario: Verify functionality of Cancel button on unlocking alert message
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    #Then I click on sort by lock icon
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the alert to cancel unlock
    And I verify that user is locked

  Scenario: Verify ability of Super Admin user to unlock a locked user from landing page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    #Then I click on sort by lock icon
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the alert to unlock user
    And I verify that the user is unlocked on Landing page
