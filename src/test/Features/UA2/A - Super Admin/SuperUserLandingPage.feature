Feature: Super Admin Landing page verification

  Scenario: Verification of Super Admin Landing page UI, user information and pagination
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I verify "User table" on landing page
    And I verify "Lock status Coulmn" on landing page
    And I verify "User Name Column" on landing page
    And I verify "User Role Column" on landing page
    And I verify "User Email Column" on landing page
    And I verify "Creation Date Column" on landing page
    And I verify "previous and next icons functions" on landing page
    And I verify "Pagination functionality" on landing page
    And I verify "Pagination retention" on landing page
    And I verify "Users Count" on landing page
    And I verify "Users rows allignment" on landing page
    And I verify "Long email, first name and last name" on landing page
    And I verify "Name, Role, Email, Creation Date, Account Status" value for users on landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I click on close icon from user creation page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

  #search cases
  Scenario Outline: Verify ability of Super Admin user to search a user
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter invalid data "<invalidSearch>" in search box
    Then I should see error message "No Results Found"
    Then I should see cross icon to exit search
    Then I click on cross icon
    And I should see all users back in page
    Then I enter "<Search>" in search box
    Then I enter "<Email>" in search box for "<user>-<Role>"
    And I should see "<Search>" as "<Search By>" in search result for "<user>-<Role>"

    Examples: 
      | user        | Role      | Email             |invalidSearch |Search              | Search By                    |
      | Super Admin | Executive | test.automatemail | 1|FirstName, LastName | First Name, Last Name, Email |

  Scenario Outline: Verify ability of Super Admin user to lock a user and cancel unlock
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "test.automatemail" in search box for "<user>-<Role>"
    Then I lock user "<user>-<Role>"
    And I verify that user is locked
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the alert to cancel unlock
    And I verify that user is locked
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should not be able to login

    Examples: 
      | user        | Role                            |
      | Super Admin | Executive, Manager              |
      | Super Admin | Manager                         |
      | Super Admin | Case Manager                    |
      | Super Admin | Physicians                      |
      | Super Admin | Remedy TCS                      |
      | Super Admin | Remedy LPN                      |
      | Super Admin | Remedy RN                       |
      | Super Admin | Remedy Field RN                 |
      | Super Admin | Remedy PM                       |
      | Super Admin | Remedy Sales Team               |
      | Super Admin | Remedy Executive                |
      | Super Admin | Prospective Partner Executive   |
      | Super Admin | Remedy Other                    |
      | Super Admin | Partner Program Administrator   |
      | Super Admin | Remedy Program Administrator    |
      | Super Admin | Partner Technical Administrator |
      | Super Admin | Remedy Technical Administrator  |
      | Super Admin | Transitional Case Manager       |
      | Super Admin | Downstream Provider             |

  Scenario Outline: Verify ability of Super Admin user to unlock a locked user
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "test.automatemail" in search box for "<user>-<Role>"
    And I should see "test.automatemail" as "Email" in search result for "<user>-<Role>"
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the alert to unlock user
    And I verify that the user is unlocked on Landing page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should see Tile text User Admin

    Examples: 
      | user        | Role                            |
      | Super Admin | Executive, Manager              |
      | Super Admin | Manager                         |
      | Super Admin | Case Manager                    |
      | Super Admin | Physicians                      |
      | Super Admin | Remedy TCS                      |
      | Super Admin | Remedy LPN                      |
      | Super Admin | Remedy RN                       |
      | Super Admin | Remedy Field RN                 |
      | Super Admin | Remedy PM                       |
      | Super Admin | Remedy Sales Team               |
      | Super Admin | Remedy Executive                |
      | Super Admin | Prospective Partner Executive   |
      | Super Admin | Remedy Other                    |
      | Super Admin | Partner Program Administrator   |
      | Super Admin | Remedy Program Administrator    |
      | Super Admin | Partner Technical Administrator |
      | Super Admin | Remedy Technical Administrator  |
      | Super Admin | Transitional Case Manager       |
      | Super Admin | Downstream Provider             |
