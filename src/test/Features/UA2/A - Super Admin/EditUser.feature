Feature: Edit page for superuser verification

  Scenario Outline: Login as superUser to verify edit page components and non-editable email field
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail" for "<user>-<Role>"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the availability of fields "First Name"
    Then I verify the availability of fields "Last Name"
    Then I verify the availability of fields "Email"
    And I should not be able to edit Email
    Then I verify the availability of fields "Phone"
    Then I verify the availability of fields "Role"
    Then I select "Applications" tab
    Then I select "Permissions" tab
    Then I click on Submit button
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | user        | Role      |
      | Super Admin | Executive |

  Scenario Outline: <Description> then verify its product tiles and redirections
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail" for "<user>-<Role>"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I cleared the textbox under edit user "First Name"
    And I fill in First Name with "<FirstName>"
    And I cleared the textbox under edit user "Last Name"
    Then I fill in Last Name with <LastName>
    And I cleared the textbox under edit user "Phone"
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on delete organisation icon
    And I click on "Remove" button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify First Name <FirstName> in user page
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify Role <Role> in user page
    And I verify that "<Applications>" are "Enabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
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
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
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
      | Description                                                                       | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | Role                            | NPI | Applications                                  | Health System     | LearningPathwaySearchParameter |
      | Login with Super Admin User and Edit user to Manager role                         | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Manager                         |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Executive role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Executive                       |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy Executive role                | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Executive                |     | Episodes, Lessons, TCI, Episodes 2.0, Reports | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Case Manager role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Case Manager                    |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Physicians role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Physicians                      | NPI | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy TCS role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy TCS                      |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy LPN role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy LPN                      |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy RN role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy RN                       |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy Field RN role                 | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Field RN                 |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy PM role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy PM                       |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy Sales Team role               | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Sales Team               |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Prospective Partner Executive role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Prospective Partner Executive   |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy Other role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Other                    |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Partner Program Administrator role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Partner Program Administrator   |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy Program Administrator role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Program Administrator    |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Partner Technical Administrator |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Remedy Technical Administrator role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Technical Administrator  |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |
      | Login with Super Admin User and Edit user to Transitional Case Manager role       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Transitional Case Manager       |     | Episodes, Lessons                             | Stamford Hospital | Learning Pathway 2             |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail" for "<user>-<Role>"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I unselect "<DisableApplications>" product
    Then I click on Next button
    Then I click on delete organisation icon
    And I click on "Remove" button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                                                                                | user        | Role                            | EnableApplications                                                               | DisableApplications                                      | Applications                                | ApplicationsNotVisible                                   | LearningPathwaySearchParameter | Health System     | NPI |
      | Edit user to Executive role to verify enable/disable user applications functionality                       | Super Admin | Executive                       | Reports, Lessons, Episodes                                                       | Lessons, Episodes                                        | Reports                                     | Episodes 2.0, Episodes, Lessons                          | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Manager role to verify enable/disable user applications functionality                         | Super Admin | Manager                         | Reports, Lessons, Episodes, Episodes 2.0                                         | Episodes 2.0, Episodes                                   | Reports, Lessons                            | Episodes, Episodes 2.0                                   | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Physicians role to verify enable/disable user applications functionality                      | Super Admin | Physicians                      | Physician Connect, Episodes 2.0, Episodes, Lessons                               | Physician Connect, Episodes 2.0                          | Episodes, Lessons                           | Reports, Physician Connect, Episodes 2.0                 | Learning Pathway 2             | Stamford Hospital | NPI |
      | Edit user to Remedy TCS role to verify enable/disable user applications functionality                      | Super Admin | Remedy TCS                      | TCI, Episodes 2.0, Lessons                                                       | TCI                                                      | Episodes 2.0, Lessons                       | Reports, Episodes, TCI                                   | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Remedy Program Administrator role to verify enable/disable user applications functionality    | Super Admin | Remedy Program Administrator    | Physician Connect, Episodes 2.0, Episodes, Lessons, TCI                          | Episodes 2.0, Lessons                                    | Physician Connect, Episodes, TCI            | Reports, Episodes 2.0, Lessons                           | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Partner Technical Administrator role to verify enable/disable user applications functionality | Super Admin | Partner Technical Administrator | Physician Connect, Episodes 2.0, Episodes, Lessons, Administration               | Episodes 2.0, Lessons                                    | Physician Connect, Episodes, Administration | Reports, Episodes 2.0, Lessons                           | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Remedy Technical Administrator role to verify enable/disable user applications functionality  | Super Admin | Remedy Technical Administrator  | Physician Connect, Episodes 2.0, Episodes, Lessons, Administration, TCI, Reports | Physician Connect, Administration, Episodes 2.0, Lessons | Episodes, TCI, Reports                      | Physician Connect, Administration, Episodes 2.0, Lessons | Learning Pathway 2             | Stamford Hospital |     |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail" for "<user>-<Role>"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on delete organisation icon
    And I click on "Remove" button
    Then I click on Select button
    And I search for health system with <Health System1>
    And I wait for 3000 milli seconds
    And I select a <Health System1>
    Then I click on Select All Locations button
    Then I click on "Add Another Organization" button
    Then I click on Select button
    And I search for health system with <Health System2>
    And I wait for 3000 milli seconds
    And I select a <Health System2>
    Then I click on Select button
    Then I select "<Programs>" programs
    Then I click on Select All Locations button for "Second" Organisation
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 7000 milli seconds
    Then I verify "<Health System1>, <Health System2>" under Data Permissions
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                                                 | user        | Role      | Health System1    | Health System2   | Programs    |
      | Remove existing organisation and add Stamford Hospital and Sound Physicians | Super Admin | Executive | Stamford Hospital | Sound Physicians | BPCI-Model2 |
