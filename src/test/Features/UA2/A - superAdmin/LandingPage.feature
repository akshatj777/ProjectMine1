Feature: Super Admin Landing page verification

  Scenario Outline: <Description>
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
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
      | Description                                                     | User        | UserName                               | Password | FirstName                                 | LastName                                 | Email             | Phone | Role      | Applications               | ApplicationsNotVisible                               | NPI | LearningPathwaySearchParameter         | Health System1    | Programs1   | Locations1                  | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Executive role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastNameLastNameLastNameLastNameLastName | test.automatemail |       | Executive | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI |     | i am learning path, Learning Pathway 2 | Stamford Hospital | BPCI-Model2 | 2070-015--Stamford Hospital | No               |                |           |            | No               |                |           |            |

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

  Scenario Outline: Verify ability of Super Admin user to search a user
    Given I am on the login page
    When I log in as super user
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
      | user        | Role      | Email             | invalidSearch | Search                                                                              | Search By             |
      | Super Admin | Executive | test.automatemail |       1768789 | FirstNameFirstNameFirstNameFirstNameFirst, LastNameLastNameLastNameLastNameLastName | First Name, Last Name |
      | Super Admin | Executive | test.automatemail |       1768789 | Executive                                                                           | First Name, Last Name |
      | Super Admin | Executive | test.automatemail |       1768789 | test.automatemail+mMDqWhjZ@gmail.com                                                | First Name, Last Name |
      #| Super Admin | Manager   | test.automatemail |               | FirstNameFirstNameFirstNameFirstNameFirst, LastNameLastNameLastNameLastNameLastName | First Name, Last Name |

  Scenario Outline: Verify ability of Super Admin user to lock a user and cancel unlock
    Given I am on the login page
    When I log in as super user
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
      | user        | Role      | Email             |
      | Super Admin | Executive | test.automatemail |

  Scenario Outline: Verify ability of Super Admin user to unlock a locked user
    Given I am on the login page
    When I log in as super user
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
    Then I should see header text "Users"

    Examples: 
      | user        | Role      | Email             |
      | Super Admin | Executive | test.automatemail |
