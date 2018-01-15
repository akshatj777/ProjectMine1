Feature: Landing page verification

  Scenario Outline: Verification of PTA user Landing page UI
    Given I am on the login page
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
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
    And I verify "Name, Role, Email, Creation Date, Account Status" value for users on landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I click on close icon from user creation page
    Then I select any user
    And I verify that I am navigated to view user page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

    Examples: 
      | UserName                        |
      | Partner Technical Administrator |

  #PTA user provision
  Scenario Outline: PTA user should see all users he has created and be able to provision user as per desired role
    Given I am on the login page
    Then I enter email field <UserName> for login
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
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
     Then I enter invalid data "<invalidSearch>" in search box
    Then I should see cross icon to exit search
    Then I verify that Product list on the top navigation bar is not opened
    Then I should not see search results
    Then I click on cross icon
    And I should see all users back in page
    Then I enter "<Search>" in search box
    Then I should see "<Search>" as "<Search By>" in search result
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I should see single user row in search result
    And I verify that email is displayed in same case for "<user>-<Role>"
    And I should see "<Email>" as "Email" in search result for "<user>-<Role>"

    Examples: 
      Examples:

      | UserName                        | user                            | Role      | Email             | invalidSearch | Search              | Search By             |
      | Partner Technical Administrator | Partner Technical Administrator | Executive | test.automatemail |       1768789 | FirstName, LastName | First Name, Last Name |

  #Lock unlock cases
  Scenario Outline: Verify ability of PTA user to lock a user and cancel unlock
    Given I am on the login page
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    And I should see "<Email>" as "Email" in search result for "<user>-<Role>"
    Then I "lock" user "<user>-<Role>"
    Then I "unlock" user "<user>-<Role>"
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the unlock alert
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should not be able to login

    Examples: 
      | UserName                        | user                            | Role                      | Email             |
      | Partner Technical Administrator | Partner Technical Administrator | Executive                 | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Manager                   | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Case Manager              | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Physicians                | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Transitional Case Manager | test.automatemail |

  Scenario Outline: Verify ability of PTA user to unlock a locked user
    Given I am on the login page
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    And I should see "<Email>" as "Email" in search result for "<user>-<Role>"
    Then I "unlock" user "<user>-<Role>"
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the unlock alert
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should see Tile text User Admin

    Examples: 
      | UserName                        | user                            | Role                      | Email             |
      | Partner Technical Administrator | Partner Technical Administrator | Executive                 | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Manager                   | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Case Manager              | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Physicians                | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Transitional Case Manager | test.automatemail |

  Scenario Outline: Search a non-provisioned user <Role> from PTA
    Given I am on the login page
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I should not see search results

    Examples: 
      | UserName                        | user                            | Role                            | Email             |
      | Partner Technical Administrator | Partner Technical Administrator | Partner Technical Administrator | test.automatemail |
      | Partner Technical Administrator | Partner Technical Administrator | Downstream Provider             | test.automatemail |

  Scenario Outline: Edit Role from non-provisioned role-<PreviousRole> to provisioned role-<Role> and search
    Given I am on the login page
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I should not see search results
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    When I log in as super user
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    And I should see "<Email>" as "Email" in search result for "<user>-<Role>"

    Examples: 
      | UserName                        | Email             | user                            | PreviousRole        | Role       | NPI | EnableApplications                  | Applications                                                | LearningPathwaySearchParameter |
      | Partner Technical Administrator | test.automatemail | Partner Technical Administrator | Remedy Other        | Manager    |     | Reports                    | Episodes, Episodes 2.0, Reports, Lessons                    | Learning Pathway 2             |
      | Partner Technical Administrator | test.automatemail | Partner Technical Administrator | Downstream Provider | Physicians | NPI | Reports, Physician connect | Episodes, Episodes 2.0, Reports, Lessons, Physician connect | Learning Pathway 2             |

  Scenario Outline: Edit Role from provisioned role-<PreviousRole> to non-provisioned role-<Role> and search
    Given I am on the login page
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    And I should see "<Email>" as "Email" in search result for "<user>-<PreviousRole>"
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    When I log in as super user
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I should not see search results

    Examples: 
      | UserName                        | Email             | user                            | PreviousRole | Role       | NPI | EnableApplications | Applications                                  | LearningPathwaySearchParameter |
      | Partner Technical Administrator | test.automatemail | Partner Technical Administrator | Executive    | Remedy TCS |     | TCI       | Episodes, Episodes 2.0, Reports, Lessons, TCI | Learning Pathway 2             |

  Scenario Outline: Edit Role from provisioned role-<PreviousRole> to non-provisioned role-<Role> and search
    Given I am on the login page
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    And I should see "<Email>" as "Email" in search result for "<user>-<PreviousRole>"
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    When I log in as super user
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product

    Then I click on Next button
    Then I enter characters "<Locations>" in location serach
    Then I search and select "<Locations>" locations
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I should not see search results

    Examples: 
      | UserName                        | Email             | user                            | PreviousRole | Role                | NPI | EnableApplications | Applications           | Locations                        | LearningPathwaySearchParameter |
      | Partner Technical Administrator | test.automatemail | Partner Technical Administrator | Case Manager | Downstream Provider |     |                    | Episodes, Episodes 2.0 | Baptist Hospital Of Roane County | Learning Pathway 2             |
