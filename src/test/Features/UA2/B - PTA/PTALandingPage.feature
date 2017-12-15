Feature: Landing page verification

  Scenario: Verification of PTA user Landing page UI
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
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

   
  #PTA user provision
  Scenario Outline: PTA user should see all users he has created and be able to provision user as per desired role
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I should see users with <Role>
    Then I enter search box in landing page with <Name> and verify result

    Examples:
      | Role                                                                    | Name                                                       |
      | Executive, Manager, Case Manager, Physicians, Transitional Case Manager | FirstNameA, FirstNameB, FirstNameC, FirstNameD, FirstNameE |

  #search cases
  Scenario Outline: Verify ability of PTA user to search user
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "<Search>"
    And I should see "<Search>" for "<Search By>" in search result

    Examples:
      | Search                                  | Search By                    |
      | FirstNameA, LastName, test.automatemail | First Name, Last Name, Email |

  #Lock unlock cases
  Scenario Outline: Verify ability of PTA user to lock a user and cancel unlock
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I lock user with email "test.automatemail"
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
      | user                            | Role      |
      | Partner Technical Administrator | Executive |

  Scenario Outline: Verify ability of PTA user to unlock a locked user
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result
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
      | user                            | Role      |
      | Partner Technical Administrator | Executive |