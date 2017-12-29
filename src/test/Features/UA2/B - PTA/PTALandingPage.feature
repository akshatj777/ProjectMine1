Feature: Landing page verification

  Scenario Outline: Verification of PTA user Landing page UI
    Given I am on the login page
    Then I enter email field UserName for login
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

    Examples: 
      | UserName                        |
      | Partner Technical Administrator |

  #PTA user provision
  Scenario Outline: PTA user should see all users he has created and be able to provision user as per desired role
    Given I am on the login page
    Then I enter email field UserName for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I verify that only provisioned users "<Role>" are present in PTA landing page
    Then I verify that users created by PTA user "<user>-<Role>" are present in landing page

    Examples: 
      | UserName                        | user                            | Role                                                                    | UserName                        |
      | Partner Technical Administrator | Partner Technical Administrator | Executive, Manager, Case Manager, Physicians, Transitional Case Manager | Partner Technical Administrator |

  #search cases
  Scenario Outline: Verify ability of PTA user to search user
    Given I am on the login page
    Then I enter email field UserName for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Search>" in search box for "<user>-<Role>"
    And I should see "<Search>" as "<Search By>" in search result for "<user>-<Role>"

    Examples: 
      | UserName                        | user                            | Role      | Search                                 | Search By                    |
      | Partner Technical Administrator | Partner Technical Administrator | Executive | FirstName, LastName, test.automatemail | First Name, Last Name, Email |

  #Lock unlock cases
  Scenario Outline: Verify ability of PTA user to lock a user and cancel unlock
    Given I am on the login page
    Then I enter email field UserName for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Search>" in search box for "<user>-<Role>"
    Then I lock user "test.automatemail"
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
      | UserName                        | user                            | Role                      |
      | Partner Technical Administrator | Partner Technical Administrator | Executive                 |
      | Partner Technical Administrator | Partner Technical Administrator | Manager                   |
      | Partner Technical Administrator | Partner Technical Administrator | Case Manager              |
      | Partner Technical Administrator | Partner Technical Administrator | Physicians                |
      | Partner Technical Administrator | Partner Technical Administrator | Transitional Case Manager |

  Scenario Outline: Verify ability of PTA user to unlock a locked user
    Given I am on the login page
    Then I enter email field UserName for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Search>" in search box for "<user>-<Role>"
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
      | UserName                        | user                            | Role                      |
      | Partner Technical Administrator | Partner Technical Administrator | Executive                 |
      | Partner Technical Administrator | Partner Technical Administrator | Manager                   |
      | Partner Technical Administrator | Partner Technical Administrator | Case Manager              |
      | Partner Technical Administrator | Partner Technical Administrator | Physicians                |
      | Partner Technical Administrator | Partner Technical Administrator | Transitional Case Manager |
