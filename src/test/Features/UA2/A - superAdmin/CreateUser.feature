Feature: Create User - Super Admin User

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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    #And I clear the browser history
    Given I am on mail login page
    #Then I enter username "test.automatemail" to login mail account
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
      | Description                                                        | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role         | Applications                                       | ApplicationsNotVisible            | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Executive role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Executive    | Episodes, Episodes 2.0, Reports                    | Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Manager role      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Manager      | Episodes, Episodes 2.0, Reports                    | Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Case Manager role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Case Manager | Episodes, Episodes 2.0, Reports                    | Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Physicians role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Physicians   | Episodes, Episodes 2.0, Reports, Physician Connect | Administration                    | NPI | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy TCS role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy TCS   | Episodes, Episodes 2.0, Reports, TCI               | Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy LPN role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy LPN   | Episodes, Episodes 2.0, Reports, TCI               | Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page
    Then I verify "<ApplicationsNotVisible>" product is not visible on SPOE page
    Then I click on Hamburger menu on top left of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "Overall Program" for "<User>-<Role>" user
    Then I click on "Performance (Claims)" report text for Overall Program Reports for "<User>-<Role>" user
    When I click on field-panel-icon button for "<User>-<Role>" user
    When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "FirstName LastName" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "Learning Pathway 2" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
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
      | Description                                                             | User        | Role         | Applications                                            | ApplicationsNotVisible            | Roletext       | Health System     |
      | Login with Executive and verify Product Tiles and their redirections    | Super Admin | Executive    | Episodes, Episodes 2.0, Reports, TCI                    | Administration, Physician Connect | ROLE_PRM       | Stamford Hospital |
      | Login with Manager and verify Product Tiles and their redirections      | Super Admin | Manager      | Episodes, Episodes 2.0, Reports, TCI                    | Administration, Physician Connect | ROLE_PRM       | Stamford Hospital |
      | Login with Case Manager and verify Product Tiles and their redirections | Super Admin | Case Manager | Episodes, Episodes 2.0, Reports, TCI                    | Administration, Physician Connect | ROLE_TCS       | Stamford Hospital |
      | Login with Physicians and verify Product Tiles and their redirections   | Super Admin | Physicians   | Episodes, Episodes 2.0, Reports, Physician Connect, TCI | Administration                    | ROLE_CLINICIAN | Stamford Hospital |
      | Login with Remedy TCS and verify Product Tiles and their redirections   | Super Admin | Remedy TCS   | Episodes, Episodes 2.0, Reports, TCI                    | Administration, Physician Connect | ROLE_TCS       | Stamford Hospital |
      | Login with Remedy LPN and verify Product Tiles and their redirections   | Super Admin | Remedy LPN   | Episodes, Episodes 2.0, Reports, TCI                    | Administration, Physician Connect | ROLE_LPN       | Stamford Hospital |

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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
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
      | Description                                                             | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role              | Applications                         | ApplicationsNotVisible                                    | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Remedy RN role         | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy RN         | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Field RN role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Field RN   | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy PM role         | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy PM         | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Sales Team role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Sales Team | Reports, TCI                         | Administration, Physician Connect, Episodes, Episodes 2.0 |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Executive role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Executive  | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         |     | Learning Pathway 2             | Stamford Hospital |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page
    Then I verify "<ApplicationsNotVisible>" product is not visible on SPOE page
    Then I click on Hamburger menu on top left of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "Overall Program" for "<User>-<Role>" user
    Then I click on "Performance (Claims)" report text for Overall Program Reports for "<User>-<Role>" user
    When I click on field-panel-icon button for "<User>-<Role>" user
    When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "FirstName LastName" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "Learning Pathway 2" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
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
      | Description                                                                  | User        | Role              | Applications                         | ApplicationsNotVisible                                    | Roletext | Health System     |
      | Login with Remedy RN and verify Product Tiles and their redirections         | Super Admin | Remedy RN         | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         | ROLE_RN  | Stamford Hospital |
      | Login with Remedy Field RN and verify Product Tiles and their redirections   | Super Admin | Remedy Field RN   | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         | ROLE_FRN | Stamford Hospital |
      | Login with Remedy PM and verify Product Tiles and their redirections         | Super Admin | Remedy PM         | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         | ROLE_PM  | Stamford Hospital |
      | Login with Remedy Sales Team and verify Product Tiles and their redirections | Super Admin | Remedy Sales Team | Reports, TCI                         | Administration, Physician Connect, Episodes, Episodes 2.0 |          | Stamford Hospital |
      | Login with Remedy Executive and verify Product Tiles and their redirections  | Super Admin | Remedy Executive  | Episodes, Episodes 2.0, Reports, TCI | Administration, Physician Connect                         | ROLE_PRM | Stamford Hospital |

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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
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
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role                            | Applications                                                            | ApplicationsNotVisible                          | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Remedy Other role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Other                    | Episodes, Episodes 2.0, TCI                                             | Administration, Physician Connect, Reports      |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Partner Program Administrator role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Physician Connect                      | Administration                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Program Administrator role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Physician Connect, TCI                 | Administration                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Physician Connect, Administration      |                                                 |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Technical Administrator role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Physician Connect, Administration, TCI |                                                 |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Transitional Case Manager role       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Transitional Case Manager       | Episodes, Reports                                                       | Episodes 2.0, Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page
    Then I verify "<ApplicationsNotVisible>" product is not visible on SPOE page
    Then I click on Hamburger menu on top left of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "Overall Program" for "<User>-<Role>" user
    Then I click on "Performance (Claims)" report text for Overall Program Reports for "<User>-<Role>" user
    When I click on field-panel-icon button for "<User>-<Role>" user
    When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "FirstName LastName" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "Learning Pathway 2" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
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
      | Description                                                                                | User        | Role                            | Applications                                                                     | ApplicationsNotVisible                          | Roletext   | Health System     |
      | Login with Remedy Other and verify Product Tiles and their redirections                    | Super Admin | Remedy Other                    | Episodes, Episodes 2.0, TCI                                                      | Administration, Physician Connect, Reports      | ROLE_PRM   | Stamford Hospital |
      | Login with Partner Program Administrator and verify Product Tiles and their redirections   | Super Admin | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Physician Connect, TCI                          | Administration                                  | ROLE_PRM   | Stamford Hospital |
      | Login with Remedy Program Administrator and verify Product Tiles and their redirections    | Super Admin | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Physician Connect, TCI                          | Administration                                  | ROLE_PRM   | Stamford Hospital |
      | Login with Partner Technical Administrator and verify Product Tiles and their redirections | Super Admin | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Physician Connect, Administration, TCI          |                                                 | ROLE_PRM   | Stamford Hospital |
      | Login with Remedy Technical Administrator and verify Product Tiles and their redirections  | Super Admin | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration, TCI |                                                 | ROLE_ADMIN | Stamford Hospital |
      | Login with Transitional Case Manager and verify Product Tiles and their redirections       | Super Admin | Transitional Case Manager       | Episodes, Reports, TCI                                                           | Episodes 2.0, Administration, Physician Connect | ROLE_TCS   | Stamford Hospital |

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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
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
      | Description                                                        | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role         | Applications                         | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Executive role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Executive    | Episodes                             | Episodes 2.0, Reports, Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Manager role      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Manager      | Episodes 2.0, Reports                | Episodes, Administration, Physician Connect              |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Case Manager role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Case Manager | Episodes, Episodes 2.0               | Reports, Administration, Physician Connect               |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Physicians role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Physicians   | Episodes, Reports, Physician Connect | Episodes 2.0, Administration                             | NPI | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy TCS role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy TCS   | Episodes 2.0                         | Episodes, Reports, Administration, Physician Connect     |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy LPN role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy LPN   | Episodes, Episodes 2.0, Reports      | Administration, Physician Connect                        |     | Learning Pathway 2             | Stamford Hospital |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page
    Then I verify "<ApplicationsNotVisible>" product is not visible on SPOE page
    Then I click on Hamburger menu on top left of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "Overall Program" for "<User>-<Role>" user
    Then I click on "Performance (Claims)" report text for Overall Program Reports for "<User>-<Role>" user
    When I click on field-panel-icon button for "<User>-<Role>" user
    When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "FirstName LastName" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "Learning Pathway 2" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
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
      | Description                                                             | User        | Role         | Applications                              | ApplicationsNotVisible            | Roletext       | Health System     |
      | Login with Executive and verify Product Tiles and their redirections    | Super Admin | Executive    | Episodes, TCI                             | Administration, Physician Connect | ROLE_PRM       | Stamford Hospital |
      | Login with Manager and verify Product Tiles and their redirections      | Super Admin | Manager      | Episodes 2.0, Reports, TCI                | Administration, Physician Connect | ROLE_PRM       | Stamford Hospital |
      | Login with Case Manager and verify Product Tiles and their redirections | Super Admin | Case Manager | Episodes, Episodes 2.0, TCI               | Administration, Physician Connect | ROLE_TCS       | Stamford Hospital |
      | Login with Physicians and verify Product Tiles and their redirections   | Super Admin | Physicians   | Episodes, Reports, Physician Connect, TCI | Administration                    | ROLE_CLINICIAN | Stamford Hospital |
      | Login with Remedy TCS and verify Product Tiles and their redirections   | Super Admin | Remedy TCS   | Episodes 2.0, TCI                         | Administration, Physician Connect | ROLE_TCS       | Stamford Hospital |
      | Login with Remedy LPN and verify Product Tiles and their redirections   | Super Admin | Remedy LPN   | Episodes, Episodes 2.0, Reports, TCI      | Administration, Physician Connect | ROLE_LPN       | Stamford Hospital |

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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
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
      | Description                                                             | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role              | Applications           | ApplicationsNotVisible                                             | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Remedy RN role         | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy RN         | Episodes, Reports, TCI | Episodes 2.0, Administration, Physician Connect                    |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Field RN role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Field RN   | Episodes 2.0,  TCI     | Episodes, Reports, Administration, Physician Connect               |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy PM role         | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy PM         | TCI                    | Episodes, Episodes 2.0, Reports, Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Sales Team role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Sales Team | Reports                | Administration, Physician Connect, Episodes, Episodes 2.0          |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Executive role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Executive  | Episodes 2.0           | Episodes, Reports, Administration, Physician Connect               |     | Learning Pathway 2             | Stamford Hospital |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page
    Then I verify "<ApplicationsNotVisible>" product is not visible on SPOE page
    Then I click on Hamburger menu on top left of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "Overall Program" for "<User>-<Role>" user
    Then I click on "Performance (Claims)" report text for Overall Program Reports for "<User>-<Role>" user
    When I click on field-panel-icon button for "<User>-<Role>" user
    When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "FirstName LastName" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "Learning Pathway 2" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
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
      | Description                                                                  | User        | Role              | Applications           | ApplicationsNotVisible                                    | Roletext | Health System     |
      | Login with Remedy RN and verify Product Tiles and their redirections         | Super Admin | Remedy RN         | Episodes, Reports, TCI | Administration, Physician Connect                         | ROLE_RN  | Stamford Hospital |
      | Login with Remedy Field RN and verify Product Tiles and their redirections   | Super Admin | Remedy Field RN   | Episodes 2.0,  TCI     | Administration, Physician Connect                         | ROLE_FRN | Stamford Hospital |
      | Login with Remedy PM and verify Product Tiles and their redirections         | Super Admin | Remedy PM         | TCI                    | Administration, Physician Connect                         | ROLE_PM  | Stamford Hospital |
      | Login with Remedy Sales Team and verify Product Tiles and their redirections | Super Admin | Remedy Sales Team | Reports, TCI           | Administration, Physician Connect, Episodes, Episodes 2.0 |          | Stamford Hospital |
      | Login with Remedy Executive and verify Product Tiles and their redirections  | Super Admin | Remedy Executive  | Episodes 2.0, TCI      | Administration, Physician Connect                         | ROLE_PRM | Stamford Hospital |

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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
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
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role                            | Applications                                       | ApplicationsNotVisible                                             | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Remedy Other role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Other                    | Episodes 2.0, TCI                                  | Episodes, Administration, Physician Connect, Reports               |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Partner Program Administrator role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Program Administrator   | Episodes,  Reports, Physician Connect              | Episodes 2.0, Administration                                       |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Program Administrator role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports,  TCI              | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Physician Connect | Administration                                                     |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Remedy Technical Administrator role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Technical Administrator  | Physician Connect, Administration                  | Episodes, Episodes 2.0, Reports                                    |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Transitional Case Manager role       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Transitional Case Manager       | Reports                                            | Episodes, Episodes 2.0, Reports, Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product on SPOE page
    Then I verify "<ApplicationsNotVisible>" product is not visible on SPOE page
    Then I click on Hamburger menu on top left of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I redirect to Remedy connect page
    And I click on Episode1 tile for "<User>-<Role>" user
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Health System>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "Overall Program" for "<User>-<Role>" user
    Then I click on "Performance (Claims)" report text for Overall Program Reports for "<User>-<Role>" user
    When I click on field-panel-icon button for "<User>-<Role>" user
    When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "FirstName LastName" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "Learning Pathway 2" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
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
      | Description                                                                                | User        | Role                            | Applications                                            | ApplicationsNotVisible                          | Roletext   | Health System     |
      | Login with Remedy Other and verify Product Tiles and their redirections                    | Super Admin | Remedy Other                    | Episodes 2.0, TCI                                       | Administration, Physician Connect, Reports      | ROLE_PRM   | Stamford Hospital |
      | Login with Partner Program Administrator and verify Product Tiles and their redirections   | Super Admin | Partner Program Administrator   | Episodes,  Reports, Physician Connect, TCI              | Administration                                  | ROLE_PRM   | Stamford Hospital |
      | Login with Remedy Program Administrator and verify Product Tiles and their redirections    | Super Admin | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports,  TCI                   | Administration                                  | ROLE_PRM   | Stamford Hospital |
      | Login with Partner Technical Administrator and verify Product Tiles and their redirections | Super Admin | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Physician Connect, TCI |                                                 | ROLE_PRM   | Stamford Hospital |
      | Login with Remedy Technical Administrator and verify Product Tiles and their redirections  | Super Admin | Remedy Technical Administrator  | Physician Connect, Administration, TCI                  |                                                 | ROLE_ADMIN | Stamford Hospital |
      | Login with Transitional Case Manager and verify Product Tiles and their redirections       | Super Admin | Transitional Case Manager       | Reports, TCI                                            | Episodes 2.0, Administration, Physician Connect | ROLE_TCS   | Stamford Hospital |
