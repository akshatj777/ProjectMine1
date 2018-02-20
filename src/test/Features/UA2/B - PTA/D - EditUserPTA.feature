Feature: Edit user page for PTA

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
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName                                 | Email             | Phone | Role                            | Applications                                                  | ApplicationsNotVisible | NPI | LearningPathwaySearchParameter   | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastNameLastNameLastNameLastNameLastName | test.automatemail |       | Partner Technical Administrator | Episodes, Reports, Physician Connect, Administration, Lessons | Episodes 2.0, TCI      |     | HZhmTBQzHtU1, Learning Pathway 2 | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-811--Buena Vista Care Center, 3056-812--Gilroy Healthcare And Rehabilitation Center, 3056-813--Eagle Point Nursing & Rehabilitation Center, 3056-814--Cedar Ridge Health Rehab Center, 3056-815--Ennoble Skilled Nursing And Rehabilitation Center, 3056-816--Friendship Skilled Nursing & Rehabilitation Center, 3056-817--Covington Manor Health And  Rehabilitation Center, 3056-818--Clinton House Health And Rehab Center, 3056-819--Edgewood Manor Nursing Center, 3056-820--Fairview Skilled Nursing And Rehabilitation Center, 3056-i37--Pacific Coast Manor, 3056-i38--Sunrise Skilled Nursing & Rehabilitation Center, 3056-i39--Pyramid Point Post-acute Rehabilitation Center, 3056-i40--Hilltop Skilled Nursing, 3056-i41--Mccormick's Creek, 3056-i42--Palo Alto Sub-acute, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown, 3056-i45--Highland Health | No               |                |           |            | No               |                |           |            |

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
      | Description                                                                                         | User                            | FirstName                                 | LastName                                 | Email             | Phone      | Role                      | Applications                                  | ApplicationsNotVisible                               | NPI | LearningPathwaySearchParameter                                                                                     | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Partner Technical Administrator User and create user with Executive role                 | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName      | LastNameLastNameLastNameLastNameLastName | test.automatemail | 9988776655 | Executive                 | Episodes, Reports, Lessons                    | Episodes 2.0, Administration, Physician Connect, TCI |     | Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2 | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |                  |                |           |            |                  |                |           |            |
      | Login with Partner Technical Administrator User and create user with Manager role                   | Partner Technical Administrator | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |            | Manager                   | Episodes, Reports, Lessons                    | Episodes 2.0, Administration, Physician Connect, TCI |     | p11D0Vl2FSg1, qfy2xp8zSFc1, 18h7phZr1h81, n9yn5n0Qa581                                                             | Covenant       | BPCI-Model3 | 3056-808--Arbor Nursing Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |                  |                |           |            |                  |                |           |            |
      | Login with Partner Technical Administrator User and create user with Case Manager role              | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName      | LastName                                 | test.automatemail |            | Case Manager              | Episodes, Reports, Lessons                    | Episodes 2.0, Administration, Physician Connect, TCI |     | Care Coordination External                                                                                         | Covenant       | BPCI-Model3 | 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-811--Buena Vista Care Center, 3056-812--Gilroy Healthcare And Rehabilitation Center, 3056-813--Eagle Point Nursing & Rehabilitation Center, 3056-814--Cedar Ridge Health Rehab Center, 3056-815--Ennoble Skilled Nursing And Rehabilitation Center, 3056-816--Friendship Skilled Nursing & Rehabilitation Center, 3056-817--Covington Manor Health And  Rehabilitation Center, 3056-818--Clinton House Health And Rehab Center, 3056-819--Edgewood Manor Nursing Center, 3056-820--Fairview Skilled Nursing And Rehabilitation Center |                  |                |           |            |                  |                |           |            |
      | Login with Partner Technical Administrator User and create user with Physicians role                | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName      | LastNameLastNameLastNameLastNameLastName | test.automatemail | 9988776655 | Physicians                | Episodes, Reports, Physician Connect, Lessons | Episodes 2.0, Administration, TCI                    | NPI | p11D0Vl2FSg1, Executive Acute Care Hospital Model 2                                                                | Covenant       | BPCI-Model3 | 3056-i37--Pacific Coast Manor, 3056-i38--Sunrise Skilled Nursing & Rehabilitation Center, 3056-i39--Pyramid Point Post-acute Rehabilitation Center, 3056-i40--Hilltop Skilled Nursing, 3056-i41--Mccormick's Creek                                                                                                                                                                                                                                                                                                                                                                                                           |                  |                |           |            |                  |                |           |            |
      | Login with Partner Technical Administrator User and create user with Transitional Case Manager role | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstNameFirst | LastName                                 | test.automatemail | 9988776655 | Transitional Case Manager | Episodes, Reports, Lessons                    | Episodes 2.0, Administration, Physician Connect, TCI |     | 5HDc3E6aK_E1, p11D0Vl2FSg1, qfy2xp8zSFc1, 18h7phZr1h81                                                             | Covenant       | BPCI-Model3 | 3056-i42--Palo Alto Sub-acute, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown, 3056-i45--Highland Health                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |                  |                |           |            |                  |                |           |            |

  Scenario Outline: Change General information, edit apps and remove existing org and add new org
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the header "General Information"
    Then I verify the availability of fields "First Name"
    And I fill in First Name with "<FirstName>"
    Then I verify the availability of fields "Last Name"
    Then I fill in Last Name with <LastName>
    Then I verify the availability of fields "Email"
    And I should not be able to edit Email
    Then I verify the availability of fields "Phone"
    And I fill in Phone with <Phone>
    Then I verify the availability of fields "Role"
    Then I verify the availability of field NPI for "<Role>"
    Then I click on Next button
    Then I unselect "<RemoveApplications>" product
    Then I click on Next button
    Then I remove health system "<Remove HealthSystem>"
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
    Then I verify first name "<FirstName>"
    Then I verify last name "<LastName>"
    Then I verify phone "<Phone>"
    Then I verify NPI "<NPI>"
    Then I verify disabled "<RemoveApplications>"
    Then I verify enabled "<Applications>"
    Then I verify health system "<Health System>"
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
      | User                            | FirstName       | LastName       | Email             | Phone        | NPI | Role       | RemoveApplications | Applications                         | ApplicationsNotVisible                     | Remove HealthSystem | Health System | Programs    | Locations                                                               | LearningPathwaySearchParameter | Roletext       | ReportCategory | ReportName                   | BPID | Facilities                                          | ProgramsValidation       | LocationsValidation                                                                             | LearningPathway            |
      | Partner Technical Administrator | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI | Physicians | Reports            | Episodes, Physician Connect, Lessons | Reports, Episodes 2.0, Administration, TCI | Covenant            | TeamHealth    | BPCI-Model3 | 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center | Care Coordination External     | ROLE_CLINICIAN | Patient ID     | Episode DRG Issues [Model 3] |      | The Medical Center At Franklin, Rhea Medical Center | TeamHealth--BPCI Model 3 | TeamHealth--3056-q91--The Medical Center At Franklin, TeamHealth--3056-q91--Rhea Medical Center | Care Coordination External |

  Scenario Outline: Add Heath System-2
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
    Then I select "Permissions" tab
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
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
      | User                            | FirstName                            | LastName | Email             | Phone        | NPI | Role         | Applications               | ApplicationsNotVisible                               | HasHealthSystem2 | Health System2                     | Programs2   | Locations2                                                    | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName         | BPID | Facilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | HealthSystemValidation                       | ProgramsValidation                                                       | LocationsValidation                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | LearningPathway            |
      | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName | LastName | test.automatemail | 996-385-2451 |     | Case Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | Yes              | United Health Services of New York | BPCI-Model2 | 6005-197--United Health Services, 6005-200--Cape Cod Hospital | Care Coordination External     | ROLE_TCS | Patient ID     | Episode DRG Issues |      | United Health Services, Cape Cod Hospital, Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center | Covenant, United Health Services of New York | United Health Services of New York--BPCI Model 2, Covenant--BPCI Model 3 | United Health Services of New York--6005-197--United Health Services, United Health Services of New York--6005-200--Cape Cod Hospital, Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-811--Buena Vista Care Center, Covenant--3056-812--Gilroy Healthcare And Rehabilitation Center, Covenant--3056-813--Eagle Point Nursing & Rehabilitation Center, Covenant--3056-814--Cedar Ridge Health Rehab Center, Covenant--3056-815--Ennoble Skilled Nursing And Rehabilitation Center, Covenant--3056-816--Friendship Skilled Nursing & Rehabilitation Center, Covenant--3056-817--Covington Manor Health And  Rehabilitation Center, Covenant--3056-818--Clinton House Health And Rehab Center, Covenant--3056-819--Edgewood Manor Nursing Center, Covenant--3056-820--Fairview Skilled Nursing And Rehabilitation Center | Care Coordination External |

  Scenario Outline: Edit programs and locations- <Description>
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
    Then I select "Permissions" tab
    Then I click on existing organisation "<Health System>"
    Then I deselect "<RemovePrograms>" programs
    Then I select "<AddPrograms>" programs for existing organisation
    Then I select "<Locations>" locations
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
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
      | Description                                    | User                            | FirstName                            | LastName | Email             | Phone | NPI | Role         | Applications               | ApplicationsNotVisible                               | Health System                      | RemovePrograms | AddPrograms | Locations                                                     | Roletext | ReportCategory | ReportName                    | BPID | Facilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | HealthSystemValidation                       | ProgramsValidation                                                                                                         | LocationsValidation                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | LearningPathway            |
      | Model2 to mod3 and single loc                  | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName | LastName | test.automatemail |       |     | Case Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | United Health Services of New York | BPCI-Model2    | BPCI-Model3 | 3090-209--Uhs Twin Tier Home Health Inc.                      | ROLE_TCS | Patient ID     | Episode DRG Issues  [Model 3] |      | UHS Twin Tier Home Health Inc., Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Covenant, United Health Services of New York | United Health Services of New York--BPCI Model 3, Covenant--BPCI Model 3                                                   | United Health Services of New York--3090-209--Uhs Twin Tier Home Health Inc., Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-811--Buena Vista Care Center, Covenant--3056-812--Gilroy Healthcare And Rehabilitation Center, Covenant--3056-813--Eagle Point Nursing & Rehabilitation Center, Covenant--3056-814--Cedar Ridge Health Rehab Center, Covenant--3056-815--Ennoble Skilled Nursing And Rehabilitation Center, Covenant--3056-816--Friendship Skilled Nursing & Rehabilitation Center, Covenant--3056-817--Covington Manor Health And  Rehabilitation Center, Covenant--3056-818--Clinton House Health And Rehab Center, Covenant--3056-819--Edgewood Manor Nursing Center, Covenant--3056-820--Fairview Skilled Nursing And Rehabilitation Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Care Coordination External |
      | Model3 to mod2 and Multiple loc                | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName | LastName | test.automatemail |       |     | Case Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | United Health Services of New York | BPCI-Model3    | BPCI-Model2 | 6005-197--United Health Services, 6005-200--Cape Cod Hospital | ROLE_TCS | Patient ID     | Episode DRG Issues            |      | United Health Services, Cape Cod Hospital, Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Covenant, United Health Services of New York | United Health Services of New York--BPCI Model 2, Covenant--BPCI Model 3                                                   | United Health Services of New York--6005-197--United Health Services, United Health Services of New York--6005-200--Cape Cod Hospital, Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-811--Buena Vista Care Center, Covenant--3056-812--Gilroy Healthcare And Rehabilitation Center, Covenant--3056-813--Eagle Point Nursing & Rehabilitation Center, Covenant--3056-814--Cedar Ridge Health Rehab Center, Covenant--3056-815--Ennoble Skilled Nursing And Rehabilitation Center, Covenant--3056-816--Friendship Skilled Nursing & Rehabilitation Center, Covenant--3056-817--Covington Manor Health And  Rehabilitation Center, Covenant--3056-818--Clinton House Health And Rehab Center, Covenant--3056-819--Edgewood Manor Nursing Center, Covenant--3056-820--Fairview Skilled Nursing And Rehabilitation Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Care Coordination External |
      | Single model to multiple mod and all locations | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName | LastName | test.automatemail |       |     | Case Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | United Health Services of New York |                | BPCI-Model3 | All Locations                                                 | ROLE_TCS | Patient ID     | Episode DRG Issues            |      | United Health Services, Binghamton General-sandiford Rehabilitation Center, Chenango Memorial Hospital, Memorial Hermann Hospital System, Avera Mckennan Hospital & University Health Center, Westchester General Hospital, Cayuga Medical Center At Ithaca, Cape Cod Hospital, St Vincent's Medical Center - Bridgeport, White Plains Hospital Center , North Central Bronx Hospital, Saratoga Hospital, Moses Taylor Hospital, Banner Del E Webb Medical Center, St. James Mercy Hospital, University Hospital, Cortland Regional Medical Center, Hackettstown Regional Medical Center, St Johns Regional Medical Center, Bayhealth - Kent General Hospital, Howard County General Hospital, Porter Regional Hospital, Arnot Ogden Medical Center, St. Peter's Hospital, Chenango Memorial Hospital, United Health Services, Washington Hospital, Geisinger - Community Medical Center,  Scripps Memorial Hospital - Encinitas,  Mary Imogene Bassett Hospital, Our Lady Of Lourdes Memorial Hospital, Queens Hospital Center, Tlc Health Network, Menifee Valley Medical Center, Sisters Of Charity Hospital, Albany Medical Center Hospital, Aurelia Osborn Fox Memorial Hospital,  Lane Regional Medical Center, Brookhaven Memorial Hospital Medical Center, Banner Boswell Medical Center, Hemet Valley Medical Center, Binghamton General-sandiford Rehabilitation Center, Albany Memorial Hospital, Avera Mckennan Hospital & University Health Center, East Jefferson General Hospital, Memorial Hermann Sw Hospital, Citizens Medical Center, Mhs Southeast, Uhs Twin Tier Home Health Inc., Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center | Covenant, United Health Services of New York | United Health Services of New York--BPCI Model 3, United Health Services of New York--BPCI Model 2, Covenant--BPCI Model 3 | United Health Services of New York--6005-197--United Health Services, United Health Services of New York--6005-197--Binghamton General-sandiford Rehabilitation Center, United Health Services of New York--6005-198--Chenango Memorial Hospital, United Health Services of New York--6005-200--Memorial Hermann Hospital System, United Health Services of New York--6005-200--Avera Mckennan Hospital & University Health Center, United Health Services of New York--6005-200--Westchester General Hospital, United Health Services of New York--6005-200--Cayuga Medical Center At Ithaca, United Health Services of New York--6005-200--Cape Cod Hospital, United Health Services of New York--6005-200--St Vincent's Medical Center - Bridgeport, United Health Services of New York--6005-200--White Plains Hospital Center , United Health Services of New York--6005-200--North Central Bronx Hospital, United Health Services of New York--6005-200--Saratoga Hospital, United Health Services of New York--6005-200--Moses Taylor Hospital, United Health Services of New York--6005-200--Banner Del E Webb Medical Center, United Health Services of New York--6005-200--St. James Mercy Hospital, United Health Services of New York--6005-200--University Hospital, United Health Services of New York--6005-200--Cortland Regional Medical Center, United Health Services of New York--6005-200--Hackettstown Regional Medical Center, United Health Services of New York--6005-200--St Johns Regional Medical Center, United Health Services of New York--6005-200--Bayhealth - Kent General Hospital, United Health Services of New York--6005-200--Howard County General Hospital, United Health Services of New York--6005-200--Porter Regional Hospital, United Health Services of New York--6005-200--Arnot Ogden Medical Center, United Health Services of New York--6005-200--St. Peter's Hospital, United Health Services of New York--6005-200--Chenango Memorial Hospital, United Health Services of New York--6005-200--United Health Services, United Health Services of New York--6005-200--Washington Hospital, United Health Services of New York--6005-200--Geisinger - Community Medical Center, United Health Services of New York--6005-200--Scripps Memorial Hospital - Encinitas, United Health Services of New York--6005-200--Mary Imogene Bassett Hospital, United Health Services of New York--6005-200--Our Lady Of Lourdes Memorial Hospital, United Health Services of New York--6005-200--Queens Hospital Center, United Health Services of New York--6005-200--Tlc Health Network, United Health Services of New York--6005-200--Menifee Valley Medical Center, United Health Services of New York--6005-200--Sisters Of Charity Hospital, United Health Services of New York--6005-200--Albany Medical Center Hospital, United Health Services of New York--6005-200--Aurelia Osborn Fox Memorial Hospital,  United Health Services of New York--6005-200--Lane Regional Medical Center, United Health Services of New York--6005-200--Brookhaven Memorial Hospital Medical Center, United Health Services of New York--6005-200--Banner Boswell Medical Center, United Health Services of New York--6005-200--Hemet Valley Medical Center, United Health Services of New York--6005-200--Binghamton General-sandiford Rehabilitation Center, United Health Services of New York--6005-200--Albany Memorial Hospital, United Health Services of New York--6005-200--Avera Mckennan Hospital & University Health Center, United Health Services of New York--6005-200--East Jefferson General Hospital, United Health Services of New York--6005-200--Memorial Hermann Sw Hospital, United Health Services of New York--6005-200--Citizens Medical Center, United Health Services of New York--6005-200--Mhs Southeast, United Health Services of New York--3090-209--Uhs Twin Tier Home Health Inc., Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-811--Buena Vista Care Center, Covenant--3056-812--Gilroy Healthcare And Rehabilitation Center, Covenant--3056-813--Eagle Point Nursing & Rehabilitation Center, Covenant--3056-814--Cedar Ridge Health Rehab Center, Covenant--3056-815--Ennoble Skilled Nursing And Rehabilitation Center, Covenant--3056-816--Friendship Skilled Nursing & Rehabilitation Center, Covenant--3056-817--Covington Manor Health And  Rehabilitation Center, Covenant--3056-818--Clinton House Health And Rehab Center, Covenant--3056-819--Edgewood Manor Nursing Center, Covenant--3056-820--Fairview Skilled Nursing And Rehabilitation Center | Care Coordination External |

  Scenario Outline: Edit only locations -<Description>
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
    Then I select "Permissions" tab
    Then I click on existing organisation "<Health System>"
    Then I deselect "<RemoveLocations>" locations
    Then I select "<AddLocations>" locations
    Then I click on Submit button while edit for "<User>-<Role>"
    And I wait for 3000 milli seconds
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
      | Description                            | User                            | FirstName                                 | LastName                                 | Email             | Phone | NPI | Role                      | Applications               | ApplicationsNotVisible                               | Health System                      | Programs                 | RemoveLocations                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | AddLocations                                                                     | Locations                                                                                                        | Roletext | ReportCategory | ReportName                   | BPID | Facilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | HealthSystemValidation                       | ProgramsValidation                                                                                                         | LocationsValidation                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | LearningPathway                                                                                                                                           |
      | All locations to multiple locations    | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstName      | LastName                                 | test.automatemail |       |     | Case Manager              | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | United Health Services of New York | BPCI-Model3, BPCI-Model2 | 6005-197--Binghamton General-sandiford Rehabilitation Center, 6005-198--Chenango Memorial Hospital, 6005-200--Memorial Hermann Hospital System, 6005-200--Avera Mckennan Hospital & University Health Center, 6005-200--Westchester General Hospital, 6005-200--Cayuga Medical Center At Ithaca, 6005-200--Cape Cod Hospital, 6005-200--St Vincent's Medical Center - Bridgeport, 6005-200--White Plains Hospital Center , 6005-200--North Central Bronx Hospital, 6005-200--Saratoga Hospital, 6005-200--Moses Taylor Hospital, 6005-200--Banner Del E Webb Medical Center, 6005-200--St. James Mercy Hospital, 6005-200--University Hospital, 6005-200--Cortland Regional Medical Center, 6005-200--Hackettstown Regional Medical Center, 6005-200--St Johns Regional Medical Center, 6005-200--Bayhealth - Kent General Hospital, 6005-200--Howard County General Hospital, 6005-200--Porter Regional Hospital, 6005-200--Arnot Ogden Medical Center, 6005-200--St. Peter's Hospital, 6005-200--Chenango Memorial Hospital, 6005-200--United Health Services, 6005-200--Washington Hospital, 6005-200--Geisinger - Community Medical Center,  6005-200--Scripps Memorial Hospital - Encinitas,  6005-200--Mary Imogene Bassett Hospital, 6005-200--Our Lady Of Lourdes Memorial Hospital, 6005-200--Queens Hospital Center, 6005-200--Tlc Health Network, 6005-200--Menifee Valley Medical Center, 6005-200--Sisters Of Charity Hospital, 6005-200--Albany Medical Center Hospital, 6005-200--Aurelia Osborn Fox Memorial Hospital,  6005-200--Lane Regional Medical Center, 6005-200--Brookhaven Memorial Hospital Medical Center, 6005-200--Banner Boswell Medical Center, 6005-200--Hemet Valley Medical Center, 6005-200--Binghamton General-sandiford Rehabilitation Center, 6005-200--Albany Memorial Hospital, 6005-200--Avera Mckennan Hospital & University Health Center, 6005-200--East Jefferson General Hospital, 6005-200--Memorial Hermann Sw Hospital, 6005-200--Citizens Medical Center, 6005-200--Mhs Southeast |                                                                                  | 6005-197--United Health Services, 3090-209--Uhs Twin Tier Home Health Inc.                                       | ROLE_TCS | Patient ID     | Episode DRG Issues           |      | United Health Services, Uhs Twin Tier Home Health Inc., Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center | Covenant, United Health Services of New York | United Health Services of New York--BPCI Model 3, United Health Services of New York--BPCI Model 2, Covenant--BPCI Model 3 | United Health Services of New York--6005-197--United Health Services, United Health Services of New York--3090-209--Uhs Twin Tier Home Health Inc., Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-811--Buena Vista Care Center, Covenant--3056-812--Gilroy Healthcare And Rehabilitation Center, Covenant--3056-813--Eagle Point Nursing & Rehabilitation Center, Covenant--3056-814--Cedar Ridge Health Rehab Center, Covenant--3056-815--Ennoble Skilled Nursing And Rehabilitation Center, Covenant--3056-816--Friendship Skilled Nursing & Rehabilitation Center, Covenant--3056-817--Covington Manor Health And  Rehabilitation Center, Covenant--3056-818--Clinton House Health And Rehab Center, Covenant--3056-819--Edgewood Manor Nursing Center, Covenant--3056-820--Fairview Skilled Nursing And Rehabilitation Center | Care Coordination External                                                                                                                                |
      | Multiple locations to single locations | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstNameFirst | LastName                                 | test.automatemail |       |     | Transitional Case Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | Covenant                           | BPCI-Model3              | 3056-i42--Palo Alto Sub-acute, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |                                                                                  | 3056-i45--Highland Health                                                                                        | ROLE_TCS | Patient ID     | Episode DRG Issues [Model 3] |      | Highland Health                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Covenant                                     | Covenant--BPCI Model 3                                                                                                     | Covenant--3056-i45--Highland Health                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2 |
      | Single locations to multi locations    | Partner Technical Administrator | FirstName                                 | LastNameLastNameLastNameLastNameLastName | test.automatemail |       |     | Manager                   | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician connect | Covenant                           | BPCI-Model3              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center | 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-808--Arbor Nursing Center | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Covenant                                     | Covenant--BPCI Model 3                                                                                                     | Covenant--3056-809--Courtyard Health Care Center, Covenant--3056-810--Emerald Gardens Nursing Center, Covenant--3056-808--Arbor Nursing Center                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2, Remedy University          |

  Scenario Outline: Changing General information, Role from <PreviousRole> to <Role> and Edit apps and permissions
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I search for user with role "<User>-<PreviousRole>"
    Then I select user with role "<User>-<PreviousRole>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click on existing organisation "<Health System>"
    Then I deselect "<RemoveLocations>" locations
    Then I select "<AddLocations>" locations
    Then I click on Submit button while edit for "<User>-<Role>--<PreviousRole>"
    And I wait for 3000 milli seconds
    Then I verify first name "<FirstName>"
    Then I verify last name "<LastName>"
    Then I verify phone "<Phone>"
    Then I verify NPI "<NPI>"
    Then I verify enabled "<EnableApplications>"
    Then I verify health system "<Health System>"
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
      | User                            | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole | Role       | EnableApplications | Applications                                  | ApplicationsNotVisible            | Health System | Programs    | RemoveLocations                                                                                                             | AddLocations                   | LearningPathwaySearchParameter | Roletext       | ReportCategory | ReportName                   | BPID | Facilities           | ProgramsValidation     | LocationsValidation                      | LearningPathway                                                                                                    |
      | Partner Technical Administrator | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI | Executive    | Physicians | Physician Connect  | Episodes, Reports, Physician Connect, Lessons | Episodes 2.0, Administration, TCI | Covenant      | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center | 3056-808--Arbor Nursing Center |                                | ROLE_CLINICIAN | Patient ID     | Episode DRG Issues [Model 3] |      | Arbor Nursing Center | Covenant--BPCI Model 3 | Covenant--3056-808--Arbor Nursing Center | Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2 |

  Scenario Outline: Remove phone, Role from <PreviousRole> to <Role> add new org
    Given I am on the login page
    Then I enter newuser email for "Super Admin-Partner Technical Administrator" login to Remedy
    Then I enter newuser password for login to Remedy
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<PreviousRole>"
    Then I select user with role "<User>-<PreviousRole>"
    And I verify that I am navigated to user page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System2>
    And I wait for 3000 milli seconds
    And I select a <Health System2>
    Then I select "<Programs2>" programs
    Then I select "<Locations2>" locations
    Then I click on Submit button while edit for "<User>-<Role>--<PreviousRole>"
    And I wait for 3000 milli seconds
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
      | User                            | FirstName                                 | LastName | Email             | Phone | NPI | PreviousRole              | Role         | EnableApplications | Applications               | ApplicationsNotVisible                               | HasHealthSystem2 | Health System2           | Programs2             | Locations2                                                          | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName         | BPID | Facilities                                                          | HealthSystemValidation             | ProgramsValidation                                                                                 | LocationsValidation                                                                                                                                          | LearningPathway                                                                                                                                           |
      | Partner Technical Administrator | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail |       |     | Transitional Case Manager | Case Manager |                    | Episodes, Reports, Lessons | Episodes 2.0, Administration, TCI, Physician Connect | Yes              | Butler Memorial Hospital | BPCI-Model2, BPCI-CJR | 2070-a55--Butler Memorial Hospital, CJR-1--Butler Memorial Hospital |                                | ROLE_TCS | Patient ID     | Episode DRG Issues |      | Butler Memorial Hospital, Butler Memorial Hospital, Highland Health | Covenant, Butler Memorial Hospital | Covenant--BPCI Model 3, Butler Memorial Hospital--BPCI Model 2, Butler Memorial Hospital--BPCI-CJR | Covenant--3056-i45--Highland Health, Butler Memorial Hospital--2070-a55--Butler Memorial Hospital, Butler Memorial Hospital--CJR-1--Butler Memorial Hospital | Care Coordination External, Clinical Operations Acute Care Hospital Model 2, Executive Acute Care Hospital Model 2, Physician Acute Care Hospital Model 2 |
