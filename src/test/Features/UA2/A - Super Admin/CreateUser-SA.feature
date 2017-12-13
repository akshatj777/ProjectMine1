Feature: UA2 Front End Automation

  Scenario Outline: <Description>
    Given I am on mail login page
    Then I enter username "test.automatemail" to login mail account
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    Then I click on select all checkbox in mail
    Then I click on delete icon in mail
    Then I signout form mail account
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    And I clear the browser history
    Given I am on mail login page
    Then I enter username "test.automatemail" to login mail account
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
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role                            | Applications                                                                     | ApplicationsNotVisible                                             | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Executive role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Manager role                         | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Manager                         | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Case Manager role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Case Manager                    | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Physicians role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     | NPI | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy TCS role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy TCS                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy LPN role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy LPN                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy RN role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy RN                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Field RN role                 | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy PM role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy PM                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Sales Team role               | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Sales Team               | Reports, Lessons, TCI                                                            | Administration, Physician Connect, Episodes, Episodes 2.0          |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Executive role                | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Executive                | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Prospective Partner Executive role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Prospective Partner Executive   | Lessons                                                                          | Administration, Physician Connect, Episodes, Episodes 2.0, Reports |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Other role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Other                    | Episodes, Episodes 2.0, Lessons, TCI                                             | Administration, Physician Connect, Reports                         |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Partner Program Administrator role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Program Administrator role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, TCI                 | Administration                                                     |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration      |                                                                    |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Technical Administrator role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration, TCI |                                                                    |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Transitional Case Manager role       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Transitional Case Manager       | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect                    |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Downstream Provider role             | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Downstream Provider             | Episodes 2.0                                                                     | Episodes, Reports, Lessons, Physician Connect, Administration      |     | Learning Pathway 2             | Stamford Hospital |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I click on username icon on right top corner and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I wait to see "Dashboards" under reports tile text
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Program Overview" reports text for "Dashboards" report tile
    Then I click on Show Summary button to unhide the available global filters
    Then I see <Health System> appearing under payer filter of global filters
    Then I see <Health System> appearing under participant filter of global filters
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I redirect to Remedy connect page
    And I click on the top user account link
    And I verify "Support" in dropdown on profile icon
    And I verify "Reset Password" in dropdown on profile icon
    And I verify "Log Out" in dropdown on profile icon
    And I click on "Support" in dropdown on profile icon
    And I switch to new window
    And I verify page header "Login" for "Support" on Remedy Connect
    And I switch back to old window
    And I click on "Reset Password" in dropdown on profile icon
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "We have sent you an e-mail with a link to reset your password. Please check your e-mail."
    And I click Okay button for reset password popup
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Description                                                                                | User        | Role                            | Applications                                                                     | ApplicationsNotVisible                                             | Roletext       | Health System     |
      | Login with Executive and verify Product Tiles and their redirections                       | Super Admin | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | ROLE_PRM       | Stamford Hospital |
      | Login with Manager and verify Product Tiles and their redirections                         | Super Admin | Manager                         | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | ROLE_PRM       | Stamford Hospital |
      | Login with Case Manager and verify Product Tiles and their redirections                    | Super Admin | Case Manager                    | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | ROLE_TCS       | Stamford Hospital |
      | Login with Physicians and verify Product Tiles and their redirections                      | Super Admin | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     | ROLE_CLINICIAN | Stamford Hospital |
      | Login with Remedy TCS and verify Product Tiles and their redirections                      | Super Admin | Remedy TCS                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_TCS       | Stamford Hospital |
      | Login with Remedy LPN and verify Product Tiles and their redirections                      | Super Admin | Remedy LPN                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_LPN       | Stamford Hospital |
      | Login with Remedy RN and verify Product Tiles and their redirections                       | Super Admin | Remedy RN                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_RN        | Stamford Hospital |
      | Login with Remedy Field RN and verify Product Tiles and their redirections                 | Super Admin | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_FRN       | Stamford Hospital |
      | Login with Remedy PM and verify Product Tiles and their redirections                       | Super Admin | Remedy PM                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_PM        | Stamford Hospital |
      | Login with Remedy Sales Team and verify Product Tiles and their redirections               | Super Admin | Remedy Sales Team               | Reports, Lessons, TCI                                                            | Administration, Physician Connect, Episodes, Episodes 2.0          |                | Stamford Hospital |
      | Login with Remedy Executive and verify Product Tiles and their redirections                | Super Admin | Remedy Executive                | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_PM        | Stamford Hospital |
      | Login with Prospective Partner Executive and verify Product Tiles and their redirections   | Super Admin | Prospective Partner Executive   | Lessons                                                                          | Administration, Physician Connect, Episodes, Episodes 2.0, Reports |                | Stamford Hospital |
      | Login with Remedy Other and verify Product Tiles and their redirections                    | Super Admin | Remedy Other                    | Episodes, Episodes 2.0, Lessons, TCI                                             | Administration, Physician Connect, Reports                         | ROLE_PRM       | Stamford Hospital |
      | Login with Partner Program Administrator and verify Product Tiles and their redirections   | Super Admin | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     | ROLE_PRM       | Stamford Hospital |
      | Login with Remedy Program Administrator and verify Product Tiles and their redirections    | Super Admin | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, TCI                 | Administration                                                     | ROLE_PRM       | Stamford Hospital |
      | Login with Partner Technical Administrator and verify Product Tiles and their redirections | Super Admin | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration      |                                                                    | ROLE_PM        | Stamford Hospital |
      | Login with Remedy Technical Administrator and verify Product Tiles and their redirections  | Super Admin | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration, TCI |                                                                    | ROLE_ADMIN     | Stamford Hospital |
      | Login with Transitional Case Manager and verify Product Tiles and their redirections       | Super Admin | Transitional Case Manager       | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect                    | ROLE_TCS       | Stamford Hospital |
      | Login with Downstream Provider and verify Product Tiles and their redirections             | Super Admin | Downstream Provider             | Episodes 2.0                                                                     | Episodes, Reports, Lessons, Physician Connect, Administration      | ROLE_SNF       | Stamford Hospital |

  Scenario: Verify availability of fields on General Information tab while adding a user.
    	Also, Verify availability of values in Role dropdown for Super Admin.

    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I wait for 10000 milli seconds
    When I click on Add User button
    And I wait for 3000 milli seconds
    Then I should see "Add New User" on the user creation page
    Then I verify the availability of fields "First Name"
    Then I verify the availability of fields "Last Name"
    Then I verify the availability of fields "Email"
    Then I verify the availability of fields "Phone"
    Then I verify the availability of fields "Role"
    When I click the Organizational Role Field
    Then I verify the availability of role "Executive"
    Then I verify the availability of role "Manager"
    Then I verify the availability of role "Case Manager"
    Then I verify the availability of role "Physicians"
    Then I verify the availability of role "Remedy Technical Administrator"
    Then I verify the availability of role "Remedy TCS"
    Then I verify the availability of role "Remedy LPN"
    Then I verify the availability of role "Remedy RN"
    Then I verify the availability of role "Remedy Field RN"
    Then I verify the availability of role "Remedy PM"
    Then I verify the availability of role "Remedy Sales Team"
    Then I verify the availability of role "Remedy Executive"
    Then I verify the availability of role "Prospective Partner Executive"
    Then I verify the availability of role "Remedy Other"
    Then I verify the availability of role "Partner Program Administrator"
    Then I verify the availability of role "Remedy Program Administrator"
    Then I verify the availability of role "Partner Technical Administrator"
    Then I verify the availability of role "Transitional Case Manager"
    Then I verify the availability of role "Downstream Provider"

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
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    And I switch the focus to Next button
    Then I verify the validation message "<ValidationMsg>" on Create User Page

    Examples: 
      | Description                                           | FirstName  | LastName  | Email             | Phone      | Role       | NPI        | ValidationMsg          |
      | Verify validation message for blank First name        |            | Last Name | test.automatemail | 9874563210 | Executive  |            | First Name is required |
      | Verify validation message for blank Last name         | First Name |           | test.automatemail | 9874563210 | Executive  |            | Last Name is required  |
      | Verify validation message for blank Email             | First Name | Last Name |                   | 9874563210 | Executive  |            | Email is required      |
      | Verify validation message for blank Role              | First Name | Last Name | test.automatemail | 9874563210 |            |            | Role is required       |
      | Verify validation message for blank NPI               | First Name | Last Name | test.automatemail | 9874563210 | Physicians |            | NPI is required        |
      | Verify validation message for invalid Email           | First Name | Last Name | abc               | 9874563210 | Physicians | NPI        | Email is required      |
      | Verify validation message for invalid Phone           | First Name | Last Name | test.automatemail |     123564 | Physicians | NPI        | Email is required      |
      | Verify validation message for NPI less than 10 digits | First Name | Last Name | test.automatemail | 9874563210 | Physicians |     123564 | NPI is required        |
      | Verify validation message for NPI as alphabets        | First Name | Last Name | test.automatemail | 9874563210 | Physicians | abcdefgihj | NPI is required        |
      | Verify validation message for NPI as alphanumeric     | First Name | Last Name | test.automatemail | 9874563210 | Physicians | abcde12345 | NPI is required        |

  Scenario Outline: Verify list of applications are enabled/disabled for role <Role> and Super User
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "NPI" for role "<Role>"
    Then I click on Next button
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I unselect "<Applications>" product
    Then I verify applications "<Applications>" are unchecked

    Examples: 
      | Role                            | Applications                                                                     |
      | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                         |
      | Manager                         | Episodes, Episodes 2.0, Reports, Lessons                                         |
      | Case Manager                    | Episodes, Episodes 2.0, Reports, Lessons                                         |
      | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      |
      | Remedy TCS                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    |
      | Remedy LPN                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    |
      | Remedy RN                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    |
      | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    |
      | Remedy PM                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    |
      | Remedy Sales Team               | Reports, Lessons, TCI                                                            |
      | Remedy Executive                | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    |
      | Prospective Partner Executive   | Lessons                                                                          |
      | Remedy Other                    | Episodes, Episodes 2.0, Lessons, TCI                                             |
      | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      |
      | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, TCI                 |
      | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration      |
      | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration, TCI |
      | Transitional Case Manager       | Episodes, Reports, Lessons                                                       |
      | Downstream Provider             | Episodes 2.0                                                                     |

  Scenario Outline: <Scenario Description>
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I verify Learning Pathway search box is available

    Examples: 
      | Scenario Description                                           | FirstName | LastName | Email             | Role      | Applications                             |
      | Verify availability and non availability of Lessons search box | FirstName | LastName | test.automatemail | Executive | Episodes, Episodes 2.0, Reports, Lessons |

  Scenario Outline: Select multiple learning pathways and create user
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwayName>" in Learning Pathway search box
    Then I select "<LearningPathwayName>" from the results
    Then I clear the Learning Pathway search box
    Then I enter "<LearningPathwayID>" in Learning Pathway search box
    Then I select "<LearningPathwayID>" from the results
    Then I click on Next button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button
    Then I should see header text "Users"

    Examples: 
      | Scenario Description                     | FirstName | LastName | Email             | Role      | Applications                             | LearningPathwayName | LearningPathwayID | Health System     |
      | Create user with multiple Learning Paths | FirstName | LastName | test.automatemail | Executive | Episodes, Episodes 2.0, Reports, Lessons | i am learning path  | NFdw0Kts2C01      | Stamford Hospital |

  Scenario Outline: Verify validation message for invalid lesson name in search box
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "First Name"
    Then I fill in Last Name with Last Name
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I enter "<LearningPathwayName>" in Learning Pathway search box

    Examples: 
      | Role      | Applications                             | LearningPathwayName |
      | Executive | Episodes, Episodes 2.0, Reports, Lessons | Test                |

  Scenario Outline: Verify auto selected programs in Organizations
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I verify default program "BPCI-Model2" associated with organization

    Examples: 
      | Role      | Applications                             | Health System     |
      | Executive | Episodes, Episodes 2.0, Reports, Lessons | Stamford Hospital |

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
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select button
    Then I select "<Programs>" programs
    Then I enter characters "<Locations>" in location serach
    Then I search and select "<Locations>" locations
    Then I click on Submit button
    Then I should see header text "Users"

    Examples: 
      | Description                                                        | FirstName | LastName | Email             | Phone | Role      | Applications                             | NPI | Health System    | Programs                | Locations                                                      |
      | Create user with only one program all locations - Super User       | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2             | All Locations                                                  |
      | Create user with only one program one location  - Super User       | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard                              |
      | Create user with only one program multiple locations - Super User  | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard,Adventist Health Bakersfield |
      | Create user with multiple programs all locations - Super User      | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | All Locations                                                  |
      | Create user with multiple programs one location - Super User       | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Mission Trails Baptist                                         |
      | Create user with multiple programs multiple locations - Super User | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Warren Memorial Hospital, Blessing Hospital - Quincy           |

  Scenario Outline: <Scenario Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select button
    Then I select "<Programs>" programs
    Then I enter characters "<Loc>" in location serach
    Then I should not see "All Location" field
    Then I verify text present in location "Location" field label

    Examples: 
      | Scenario Description                                      | FirstName | LastName | Email             | Phone | Role      | Applications                             | NPI | Health System    | Programs    | Location                          | Loc                               |
      | Search by location by partial name while creation of user | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2 | Bap                               | Bap                               |
      | Search by location by full name while creation of user    | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2 | Baptist Medical Center - Vanguard | Baptist Medical Center - Vanguard |
