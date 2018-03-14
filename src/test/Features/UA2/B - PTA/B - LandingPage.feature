Feature: Verification of Landing Page for PTA User

  Scenario Outline: <Description>
    Given I am on mail login page
    Then I enter username "test.automatemail" to login mail account
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    Then I click on delete icon in mail
    Then I signout from mail account
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    And I enter Phone field with <Phone>
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Programs1>" programs
    Then I select "<Locations1>" locations
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Programs2>" programs
    Then I select "<Locations2>" locations
    Then I click Add Organization button for "<HasHealthSystem3>" flag
    And I search for health system with <Health System3>
    And I select a <Health System3>
    Then I select "<Programs3>" programs
    Then I select "<Locations3>" locations
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    Given I am on the login page
    Then I click on "Log Out" button again
    Given I am on mail login page
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    And I wait for 3000 milli seconds
    Then I verify Account Verification in Inbox in my account
    Then I click on Account Verification mail in Inbox
    Then I verify "Confirm my account!" link in mail content
    Then I click on "Confirm my account!" link in mail content
    And I switch to new window
    Then I enter email to generate password link
    And I click on send mail button
    Then I switch back to old window
    Then I click on Inbox in mail
    Then I verify the unread mail in inbox in my account
    Then I verify Change Password mail in Inbox in my account
    Then I click on Change Password mail in Inbox
    Then I verify "Change my password" link in mail content
    Then I click on "Change my password" link in mail content
    And I switch to new window
    And I enter new password "Testing1" to set new password
    And I enter confirm new password "Testing1" to set new password
    And I click on submit button to set new password

    Examples: 
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName                                 | Email             | Phone | Role                            | Applications                                                  | ApplicationsNotVisible | NPI | LearningPathwaySearchParameter                 | Health System1 | Programs1   | Locations1                                                                                                                                                                                                        | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastNameLastNameLastNameLastNameLastName | test.automatemail |       | Partner Technical Administrator | Episodes, Reports, Physician Connect, Administration, Lessons | Episodes 2.0, TCI      |     | HZhmTBQzHtU1, Learning Pathway 2, n9yn5n0Qa581 | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center,  3056-807--Carson Nursing And Rehabilitation Center,  3056-808--Arbor Nursing Center | No               |                |           |            | No               |                |           |            |

  Scenario Outline: <Description>
    Given I am on mail login page
    Then I enter username "test.automatemail" to login mail account
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    Then I click on delete icon in mail
    Then I signout from mail account
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    And I enter Phone field with <Phone>
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Programs1>" programs
    Then I select "<Locations1>" locations for PTA user
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    Given I am on the login page
    Then I click on "Log Out" button again
    Given I am on mail login page
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    And I wait for 3000 milli seconds
    Then I verify Account Verification in Inbox in my account
    Then I click on Account Verification mail in Inbox
    Then I verify "Confirm my account!" link in mail content
    Then I click on "Confirm my account!" link in mail content
    And I switch to new window
    Then I enter email to generate password link
    And I click on send mail button
    Then I switch back to old window
    Then I click on Inbox in mail
    Then I verify the unread mail in inbox in my account
    Then I verify Change Password mail in Inbox in my account
    Then I click on Change Password mail in Inbox
    Then I verify "Change my password" link in mail content
    Then I click on "Change my password" link in mail content
    And I switch to new window
    And I enter new password "Testing1" to set new password
    And I enter confirm new password "Testing1" to set new password
    And I click on submit button to set new password

    Examples: 
      | Description                                                                         | User                            | FirstName                            | LastName                                 | Email             | Phone      | Role      | Applications               | ApplicationsNotVisible                               | NPI | LearningPathwaySearchParameter                                                                                     | Health System1 | Programs1   | Locations1                                                                                                                  | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Partner Technical Administrator User and create user with Executive role | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName | LastNameLastNameLastNameLastNameLastName | test.automatemail | 9988776655 | Executive | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI |     | Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2 | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center |                  |                |           |            |                  |                |           |            |

  Scenario: Verification of availability of fields on PTA User Landing page
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I should not see text "Unable to Load users" on Users page
    And I verify "SearchBox" on landing page
    And I verify "UsersTabOnLeftPane" on landing page
    And I verify "EmailOnTopRight" on landing page for "Super Admin-Partner Technical Administrator"
    And I verify "User table" on landing page
    And I verify "Lock status Column" on landing page
    And I verify "User Name Column" on landing page
    And I verify "User Role Column" on landing page
    And I verify "User Email Column" on landing page
    And I verify "Date Created Column" on landing page
    And I verify "Next Page Icon" on landing page
    And I verify "Last Page Icon" on landing page
    And I click on Last Page Icon on landing page
    And I verify "Previous Page Icon" on landing page
    And I verify "First Page Icon" on landing page
    And I click on First Page Icon on landing page
    And I verify "Users Count" on landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I should see "Add New User" on the user creation page
    Then I click on close icon from user creation page
    Then I verify "1" text on landing page
    And I click on "icon chevron right" on landing page
    Then I verify "2" text on landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I should see "Add New User" on the user creation page
    Then I click on close icon from user creation page
    Then I verify "2" text on landing page
    And I click on "icon chevron left" on landing page
    Then I verify "1" text on landing page
    Then I select any user
    And I verify that I am navigated to view user page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I verify "SearchBox" on landing page
    Then I enter "<InvalidSearchParameter>" in search box for "<user>-<Role>"
    Then I should see cross icon to exit search
    Then I verify No Results Found is displayed
    Then I click on cross icon
    Then I enter "<SearchParameter>" in search box for "<user>-<Role>"
    Then I verify availability of "<SearchParameter>" for "<user>-<Role>"

    Examples: 
      | Description                    | user                            | Role      | Email             | InvalidSearchParameter | SearchParameter                          |
      | Search a user using First Name | Partner Technical Administrator | Executive | test.automatemail |                1768789 | FirstNameFirstNameFirstNameFirstName     |
      | Search a user using Last Name  | Partner Technical Administrator | Executive | test.automatemail |                1768789 | LastNameLastNameLastNameLastNameLastName |
      | Search a user using Email      | Partner Technical Administrator | Executive | test.automatemail |                1768789 | FetchFromHM                              |

  Scenario Outline: Verify ability of PTA user to lock a user and cancel unlock
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I verify "SearchBox" on landing page
    Then I enter "<SearchParameter>" in search box for "<user>-<Role>"
    Then I verify availability of "<SearchParameter>" for "<user>-<Role>"
    Then I "lock" user
    Then I verify user is "Locked"
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should see User is Blocked

    Examples: 
      | user                            | Role      | Email             | SearchParameter |
      | Partner Technical Administrator | Executive | test.automatemail | FetchFromHM     |

  Scenario Outline: Verify ability of PTA user to unlock a locked user
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<SearchParameter>" in search box for "<user>-<Role>"
    Then I verify availability of "<SearchParameter>" for "<user>-<Role>"
    Then I "unlock" user
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the unlock alert
    Then I verify user is "Unlocked"
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Given I am on the login page
    Then I click on "Log Out" button again
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page

    Examples: 
      | user                            | Role      | Email             | SearchParameter | Applications |
      | Partner Technical Administrator | Executive | test.automatemail | FetchFromHM     | Episodes     |
