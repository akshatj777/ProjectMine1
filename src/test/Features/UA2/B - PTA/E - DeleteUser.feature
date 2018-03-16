Feature: Delete a user from PTA

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
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName                                 | Email             | Phone | Role                            | Applications                                                  | ApplicationsNotVisible | NPI | LearningPathwaySearchParameter   | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastNameLastNameLastNameLastNameLastName | test.automatemail |       | Partner Technical Administrator | Episodes, Reports, Physician Connect, Administration, Lessons | Episodes 2.0, TCI      |     | HZhmTBQzHtU1, Learning Pathway 2 | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-811--Buena Vista Care Center, 3056-812--Gilroy Healthcare And Rehabilitation Center, 3056-813--Eagle Point Nursing & Rehabilitation Center, 3056-814--Cedar Ridge Health Rehab Center, 3056-815--Ennoble Skilled Nursing And Rehabilitation Center, 3056-816--Friendship Skilled Nursing & Rehabilitation Center, 3056-817--Covington Manor Health And  Rehabilitation Center, 3056-818--Clinton House Health And Rehab Center, 3056-819--Edgewood Manor Nursing Center, 3056-820--Fairview Skilled Nursing And Rehabilitation Center, 3056-i37--Pacific Coast Manor, 3056-i38--Sunrise Skilled Nursing & Rehabilitation Center, 3056-i39--Pyramid Point Post, 3056-i40--Hilltop Skilled Nursing, 3056-i41--Mccormick, 3056-i42--Palo Alto Sub, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown, 3056-i45--Highland Health | No               |                |           |            | No               |                |           |            |

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
      | Description                                                                       | User                            | FirstName | LastName                                 | Email             | Phone | Role    | Applications               | ApplicationsNotVisible                               | NPI | LearningPathwaySearchParameter                         | Health System1 | Programs1   | Locations1                     | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Partner Technical Administrator User and create user with Manager role | Partner Technical Administrator | FirstName | LastNameLastNameLastNameLastNameLastName | test.automatemail |       | Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI |     | p11D0Vl2FSg1, qfy2xp8zSFc1, 18h7phZr1h81, n9yn5n0Qa581 | Covenant       | BPCI-Model3 | 3056-808--Arbor Nursing Center |                  |                |           |            |                  |                |           |            |

  Scenario Outline: Login from PTA and delete an existing user and Login with the verified deleted user
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the header "General Information"
    Then I verify availability of link "Delete User"
    Then I click on "Delete User" link on general information tab
    Then I verify text "Are you sure you want to delete"
    Then I verify "Cancel" button on deletion alert
    Then I click on "Cancel" button on deletion alert
    Then I verify the header "General Information"
    Then I click on "Delete User" link on general information tab
    Then I verify availability of "Delete" button on deletion alert
    Then I click on "Delete" button to delete user
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I verify No Results Found is displayed
    And I click on the top user account link
    Then I click on "Log Out" button
    Given I am on the login page
    Then I click on "Log Out" button again
    And I should see Log in widget
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should see User is Blocked

    Examples: 
      | User                            | Role    |
      | Partner Technical Administrator | Manager |

  Scenario Outline: <Description> then delete that user and Login with unverified deleted user
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
    And I wait for 3000 milli seconds
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the header "General Information"
    Then I verify availability of link "Delete User"
    Then I click on "Delete User" link on general information tab
    Then I verify text "Are you sure you want to delete"
    Then I verify "Cancel" button on deletion alert
    Then I click on "Cancel" button on deletion alert
    Then I verify the header "General Information"
    Then I click on "Delete User" link on general information tab
    Then I verify availability of "Delete" button on deletion alert
    Then I click on "Delete" button to delete user
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I verify No Results Found is displayed
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
    Given I am on the login page
    Then I enter newuser email for "<User>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I should see User is Blocked

    Examples: 
      | Description                                                                                         | User                            | FirstName                                 | LastName | Email             | Phone      | Role                      | Applications | ApplicationsNotVisible                              | NPI | LearningPathwaySearchParameter  | Health System1 | Programs1   | Locations1                                                                                             | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Partner Technical Administrator User and create user with Transitional Case Manager role | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Transitional Case Manager | Reports      | Episodes 2.0,Administration, Physician Connect, TCI |     | 5HDc3E6aK_E1, Remedy University | Covenant       | BPCI-Model3 | 3056-i42--Palo Alto Sub, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown, 3056-i45--Highland Health |                  |                |           |            |                  |                |           |            |

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
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName                                 | Email             | Phone | Role                            | Applications                                                  | ApplicationsNotVisible | NPI | LearningPathwaySearchParameter   | Health System1   | Programs1                | Locations1                                                                                                                                                                                                        | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastNameLastNameLastNameLastNameLastName | test.automatemail |       | Partner Technical Administrator | Episodes, Reports, Physician Connect, Administration, Lessons | Episodes 2.0, TCI      |     | HZhmTBQzHtU1, Learning Pathway 2 | Sound Physicians | BPCI-Model2, BPCI-Model3 | 3090-066--Presence Saint Joseph Medical Center, 3090-069--Penobscot Bay Medical Center, 3090-079--Aiken Regional Medical Center, 6005-059--Adventist Bolingbrook Hospital, 6005-059--Adventist Health Bakersfield | No               |                |           |            | No               |                |           |            |

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
      | Description                                                                       | User                            | FirstName | LastName                                 | Email             | Phone | Role    | Applications               | ApplicationsNotVisible                               | NPI | LearningPathwaySearchParameter                         | Health System1   | Programs1   | Locations1                             | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Partner Technical Administrator User and create user with Manager role | Partner Technical Administrator | FirstName | LastNameLastNameLastNameLastNameLastName | test.automatemail |       | Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI |     | p11D0Vl2FSg1, qfy2xp8zSFc1, 18h7phZr1h81, n9yn5n0Qa581 | Sound Physicians | BPCI-Model2 | 6005-059--Adventist Health Bakersfield |                  |                |           |            |                  |                |           |            |

  Scenario Outline: <Description>
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I verify the header "Applications"
    Then I unselect "<RemoveApplications>" product
    Then I select "Permissions" tab
    Then I deselect "<RemovePrograms>" programs
    Then I select "<AddPrograms>" programs for existing organisation
    Then I deselect "<RemoveLocations>" locations for PTA user
    Then I select "<AddLocations>" locations for PTA user
    Then I click on Submit button while edit for "<User>-<Role>"
    Then I verify health system "<HealthSystemValidation>"
    Then I verify programs "<ProgramsValidation>"
    Then I verify location "<LocationsValidation>"
    And I click on the top user account link
    Then I click on "Log Out" button
    Given I am on the login page
    Then I click on "Log Out" button again
    And I should see Log in widget
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
    And I switch to new window
    And I verify "Dashboard" after redirection to EC1 for "<User>-<Role>" user
    And I click on username icon on right top corner "<User>-<Role>" and open user profile on EC1
    And I verify "<Facilities>" facility on user profile for "<User>-<Role>" user
    And I verify "Not Associated" payer on user profile for "<User>-<Role>" user
    And I verify "Medicare" payer on user profile for "<User>-<Role>" user
    And I should not see "Emblem" payer on user profile for "<User>-<Role>" user
    And I click on PatientList on SideMenu bar Episode1 for "<User>-<Role>" user
    And I verify Patient card appearing on Active Patients page for "<User>-<Role>" user
    And I click on gear menu and then click on Add Note and verify user role "<Roletext>" for "<User>-<Role>" user
    And I switch back to old window
    And I click on Institute tile for "<User>-<Role>" user
    And I switch to new window
    And I verify "<User>-<Role>" user navigated to Institute homepage
    And I switch back to old window
    And I click on Reports tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Reports homepage
    And I click on the Reports Tile with text "<ReportCategory>" for "<User>-<Role>" user
    Then I click on "<ReportName>" report text for Overall Program Reports for "<User>-<Role>" user
    Then I verify "<ReportName>" on the reports main page for "<User>-<Role>" user
    #When I click on field-panel-icon button for "<User>-<Role>" user
    #When I click to "BPID" field filter under "Episode Initiator" filter field for "<User>-<Role>" user
    #And I choose "Filter" option from select options of filter field for "<User>-<Role>" user
    #And I should see "<BPID>" in the filter value list for "<User>-<Role>" user
    #And I click on cancel button from filter for "<User>-<Role>" user
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to RemedyU homepage
    And I verify details "<FirstName> <LastName>" for "<User>-<Role>" user on RemedyU dashboard
    And I verify learning pathway "<LearningPathway>" appearing for "<User>-<Role>" user on RemedyU dashboard
    And I redirect to Remedy connect page
    And I click on Gainsharing Physician Survey tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Gainsharing Physician Survey homepage
    And I redirect to Remedy connect page
    And I click on User Admin tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to User Admin homepage
    And I redirect to Remedy connect page
    And I click on the top user account link on remedy connect page
    And I verify "Support" in dropdown on profile icon for "<User>-<Role>" user
    And I verify "Reset Password" in dropdown on profile icon for "<Role>" user
    And I verify "Log Out" in dropdown on profile icon for "<Role>" user
    And I click on "Support" in dropdown on profile icon for "<User>-<Role>" user
    And I verify page header "Login" for "Support" on Remedy Connect for "<User>-<Role>" user
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "We have sent you an e-mail with a link to reset your password."
    And I click Okay button for reset password popup
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Description                                        | User                            | Role    | Email             | Applications               | ApplicationsNotVisible                          | RemoveApplications | RemovePrograms | AddPrograms | RemoveLocations | AddLocations                                                                    | Facilities                                                                                | LearningPathway                                                                                                                                  | FirstName | LastName                                 | Roletext | ReportCategory | ReportName                   | HealthSystemValidation | ProgramsValidation                                             | LocationsValidation                                                                                                                                                           |
      | Edit single to multiple program                    | Partner Technical Administrator | Manager | test.automatemail | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect | Episodes,Episodes  |                | BPCI-Model3 |                 | 3090-069--Penobscot Bay Medical Center, 3090-079--Aiken Regional Medical Center | Adventist Health Bakersfield, Penobscot Bay Medical Center, Aiken Regional Medical Center | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] | Sound Physicians       | Sound Physicians--BPCI Model 3, Sound Physicians--BPCI Model 2 | Sound Physicians--6005-059--Adventist Health Bakersfield, Sound Physicians--3090-069--Penobscot Bay Medical Center, Sound Physicians--3090-079--Aiken Regional Medical Center |
      | Edit multiple to single program                    | Partner Technical Administrator | Manager | test.automatemail | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect | Episodes,Episodes  | BPCI-Model3    |             |                 |                                                                                 | Adventist Health Bakersfield                                                              | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Patient ID     | Episode DRG Issues           | Sound Physicians       | Sound Physicians--BPCI Model 2                                 | Sound Physicians--6005-059--Adventist Health Bakersfield                                                                                                                      |
      | Remove existing Program and select another Program | Partner Technical Administrator | Manager | test.automatemail | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect | Episodes,Episodes  | BPCI-Model2    | BPCI-Model3 |                 | 3090-069--Penobscot Bay Medical Center, 3090-079--Aiken Regional Medical Center | Penobscot Bay Medical Center, Aiken Regional Medical Center                               | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University | FirstName | LastNameLastNameLastNameLastNameLastName | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] | Sound Physicians       | Sound Physicians--BPCI Model 3                                 | Sound Physicians--3090-069--Penobscot Bay Medical Center, Sound Physicians--3090-079--Aiken Regional Medical Center                                                           |
