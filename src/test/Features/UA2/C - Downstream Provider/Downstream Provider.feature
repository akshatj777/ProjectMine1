Feature: Downstream Provider

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations                                                                                              | HasHealthSystem1 | Health System1 | Programs1 | Locations1 | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes     | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health | No               |                |           |            | No               |                |           |            | No               |                |           |            |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications  | ApplicationsNotVisible                                            | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                               | Facilities                                                                                             |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes, TCI | Episodes 2.0, Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations                                                                                                                   | HasHealthSystem1 | Health System1 | Programs1 | Locations1 | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes 2.0 | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 | Stamford Memorial Hospital, Stamford Memorial Hospital Home Health Care, Stamford Medical Clinic Llc, Stamford Hospital Snf | No               |                |           |            | No               |                |           |            | No               |                |           |            |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications      | ApplicationsNotVisible                                        | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                               | Facilities                                                                                                                  |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes 2.0, TCI | Episodes, Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | Stamford Memorial Hospital, Stamford Memorial Hospital Home Health Care, Stamford Medical Clinic Llc, Stamford Hospital Snf |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications           | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations                                                                                                                   | HasHealthSystem1 | Health System1 | Programs1 | Locations1 | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes, Episodes 2.0 | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 | Stamford Memorial Hospital, Stamford Memorial Hospital Home Health Care, Stamford Medical Clinic Llc, Stamford Hospital Snf | No               |                |           |            | No               |                |           |            | No               |                |           |            |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications                | ApplicationsNotVisible                              | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                               | Facilities                                                                                                                  |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes, Episodes 2.0, TCI | Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | Stamford Memorial Hospital, Stamford Memorial Hospital Home Health Care, Stamford Medical Clinic Llc, Stamford Hospital Snf |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations | HasHealthSystem1 | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                    | HasHealthSystem2 | Health System2   | Programs2   | Locations2                                        | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes     | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 |           | Yes              | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center | Yes              | Blanchard Valley | BPCI-Model3 | 3056-k60--Birchaven, 3056-k61--Independence House | No               |                |           |            |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications  | ApplicationsNotVisible                                            | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                               | Facilities                                                                                                                                                                                                       |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes, TCI | Episodes 2.0, Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing and Rehabilitation Center, Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center, Birchaven, Independence House |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations | HasHealthSystem1 | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                    | HasHealthSystem2 | Health System2   | Programs2   | Locations2                                        | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes 2.0 | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 |           | Yes              | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center | Yes              | Blanchard Valley | BPCI-Model3 | 3056-k60--Birchaven, 3056-k61--Independence House | No               |                |           |            |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications      | ApplicationsNotVisible                                        | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                               | Facilities                                                                                                                                                                                                       |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes 2.0, TCI | Episodes, Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing and Rehabilitation Center, Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center, Birchaven, Independence House |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications           | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations | HasHealthSystem1 | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                    | HasHealthSystem2 | Health System2   | Programs2   | Locations2                                        | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes, Episodes 2.0 | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 |           | Yes              | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center | Yes              | Blanchard Valley | BPCI-Model3 | 3056-k60--Birchaven, 3056-k61--Independence House | No               |                |           |            |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications                | ApplicationsNotVisible                              | Roletext | ReportCategory | ReportName                   | BPID | LearningPathway                                                                               | Facilities                                                                                                                                                                                                       |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes, Episodes 2.0, TCI | Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues [Model 3] |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing and Rehabilitation Center, Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center, Birchaven, Independence House |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations                                                                                                                    | HasHealthSystem1 | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | HasHealthSystem2 | Health System2   | Programs2   | Locations2                                        | HasHealthSystem3 | Health System3       | Programs3   | Locations3             |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes     | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health, Aa Advanced Care Inc | Yes              | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-811--Buena Vista Care Center, 3056-812--Gilroy Healthcare And Rehabilitation Center, 3056-813--Eagle Point Nursing & Rehabilitation Center, 3056-814--Cedar Ridge Health Rehab Center, 3056-815--Ennoble Skilled Nursing And Rehabilitation Center, 3056-816--Friendship Skilled Nursing & Rehabilitation Center, 3056-817--Covington Manor Health And  Rehabilitation Center, 3056-818--Clinton House Health And Rehab Center, 3056-819--Edgewood Manor Nursing Center, 3056-820--Fairview Skilled Nursing And Rehabilitation Center, 3056-i37--Pacific Coast Manor, 3056-i38--Sunrise Skilled Nursing & Rehabilitation Center, 3056-i39--Pyramid Point Post-acute Rehabilitation Center, 3056-i40--Hilltop Skilled Nursing, 3056-i41--Mccormick's Creek, 3056-i42--Palo Alto Sub-acute, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown, 3056-i45--Highland Health | Yes              | Blanchard Valley | BPCI-Model3 | 3056-k60--Birchaven, 3056-k61--Independence House | Yes              | WK Orthopedic Clinic | BPCI-Model3 | 3056-a53--All 3056-a53 |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications  | ApplicationsNotVisible                                            | Roletext | ReportCategory | ReportName         | BPID | LearningPathway                                                                               | Facilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes, TCI | Episodes 2.0, Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health, Aa Advanced Care Inc, Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing and Rehabilitation Center, Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center, Pacific Coast Manor, Sunrise Skilled Nursing & Rehabilitation Center, Pyramid Point Post-Acute Rehabilitation Center, Hilltop Skilled Nursing, McCormick's Creek, Palo Alto Sub-Acute, Meadow Manor, Villa Georgetown, Highland Health, Birchaven, Independence House, Munroe Regional, Uf Health Shands Hospital, North Okaloosa Medical Center, Kendall Medical Center, Fort Walton Beach Medical Center, Highland Medical Center - Christus, B R F Hospital Holdings, Willis Knighton Medical Center, Willis Knighton Bossier Health Center, Aroostook Medical Center |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations                                                                                                                    | HasHealthSystem1 | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | HasHealthSystem2 | Health System2   | Programs2   | Locations2                                        | HasHealthSystem3 | Health System3       | Programs3   | Locations3             |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes 2.0 | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health, Aa Advanced Care Inc | Yes              | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-811--Buena Vista Care Center, 3056-812--Gilroy Healthcare And Rehabilitation Center, 3056-813--Eagle Point Nursing & Rehabilitation Center, 3056-814--Cedar Ridge Health Rehab Center, 3056-815--Ennoble Skilled Nursing And Rehabilitation Center, 3056-816--Friendship Skilled Nursing & Rehabilitation Center, 3056-817--Covington Manor Health And  Rehabilitation Center, 3056-818--Clinton House Health And Rehab Center, 3056-819--Edgewood Manor Nursing Center, 3056-820--Fairview Skilled Nursing And Rehabilitation Center, 3056-i37--Pacific Coast Manor, 3056-i38--Sunrise Skilled Nursing & Rehabilitation Center, 3056-i39--Pyramid Point Post-acute Rehabilitation Center, 3056-i40--Hilltop Skilled Nursing, 3056-i41--Mccormick's Creek, 3056-i42--Palo Alto Sub-acute, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown, 3056-i45--Highland Health | Yes              | Blanchard Valley | BPCI-Model3 | 3056-k60--Birchaven, 3056-k61--Independence House | Yes              | WK Orthopedic Clinic | BPCI-Model3 | 3056-a53--All 3056-a53 |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications      | ApplicationsNotVisible                                        | Roletext | ReportCategory | ReportName         | BPID | LearningPathway                                                                               | Facilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes 2.0, TCI | Episodes, Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health, Aa Advanced Care Inc, Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing and Rehabilitation Center, Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center, Pacific Coast Manor, Sunrise Skilled Nursing & Rehabilitation Center, Pyramid Point Post-Acute Rehabilitation Center, Hilltop Skilled Nursing, McCormick's Creek, Palo Alto Sub-Acute, Meadow Manor, Villa Georgetown, Highland Health, Birchaven, Independence House, Munroe Regional, Uf Health Shands Hospital, North Okaloosa Medical Center, Kendall Medical Center, Fort Walton Beach Medical Center, Highland Medical Center - Christus, B R F Hospital Holdings, Willis Knighton Medical Center, Willis Knighton Bossier Health Center, Aroostook Medical Center |

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
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I select "<Locations>" locations for Downstream Provider role
    Then I click Add Model3 Organization button for "<HasHealthSystem1>" flag for Downstream Provider role
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Locations1>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem2>" flag for Downstream Provider role
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Locations2>" locations
    Then I click Add Model3 Organization button for "<HasHealthSystem3>" flag for Downstream Provider role
    And I search for health system with <Health System3>
    And I select a <Health System3>
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
      | Description                                                               | User        | UserName                               | Password | FirstName                                 | LastName | Email             | Phone      | Role                | Applications           | ApplicationsNotVisible                                   | NPI | LearningPathwaySearchParameter                                          | Locations                                                                                                                    | HasHealthSystem1 | Health System1 | Programs1   | Locations1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | HasHealthSystem2 | Health System2   | Programs2   | Locations2                                        | HasHealthSystem3 | Health System3       | Programs3   | Locations3             |
      | Login with Super Admin User and create user with Downstream Provider role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirst | LastName | test.automatemail | 9988776655 | Downstream Provider | Episodes, Episodes 2.0 | Administration, Physician Connect, TCI, Reports, Lessons |     | HZhmTBQzHtU1, NFdw0Kts2C01, 3hSOHNAnvjc1, max-test-052417, n9yn5n0Qa581 | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health, Aa Advanced Care Inc | Yes              | Covenant       | BPCI-Model3 | 3056-804--Catered Manor Nursing Center, 3056-805--Downey Care Center, 3056-806--Encinitas Nursing And Rehabilitation Center, 3056-808--Arbor Nursing Center, 3056-809--Courtyard Health Care Center, 3056-810--Emerald Gardens Nursing Center, 3056-811--Buena Vista Care Center, 3056-812--Gilroy Healthcare And Rehabilitation Center, 3056-813--Eagle Point Nursing & Rehabilitation Center, 3056-814--Cedar Ridge Health Rehab Center, 3056-815--Ennoble Skilled Nursing And Rehabilitation Center, 3056-816--Friendship Skilled Nursing & Rehabilitation Center, 3056-817--Covington Manor Health And  Rehabilitation Center, 3056-818--Clinton House Health And Rehab Center, 3056-819--Edgewood Manor Nursing Center, 3056-820--Fairview Skilled Nursing And Rehabilitation Center, 3056-i37--Pacific Coast Manor, 3056-i38--Sunrise Skilled Nursing & Rehabilitation Center, 3056-i39--Pyramid Point Post-acute Rehabilitation Center, 3056-i40--Hilltop Skilled Nursing, 3056-i41--Mccormick's Creek, 3056-i42--Palo Alto Sub-acute, 3056-i43--Meadow Manor, 3056-i44--Villa Georgetown, 3056-i45--Highland Health | Yes              | Blanchard Valley | BPCI-Model3 | 3056-k60--Birchaven, 3056-k61--Independence House | Yes              | WK Orthopedic Clinic | BPCI-Model3 | 3056-a53--All 3056-a53 |

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
    And I redirect to Remedy connect page
    And I click on Episodes 2 tile for "<User>-<Role>" user
    And I verify "<User>-<Role>" user navigated to Episodes 2 homepage
    And I verify patient card appearing on Episode 2 for "<User>-<Role>" user
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
      | Description                                                                    | User        | FirstName                                 | LastName | Role                | Applications                | ApplicationsNotVisible                              | Roletext | ReportCategory | ReportName         | BPID | LearningPathway                                                                               | Facilities                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
      | Login with DownStream Provider and verify Product Tiles and their redirections | Super Admin | FirstNameFirstNameFirstNameFirstNameFirst | LastName | Downstream Provider | Episodes, Episodes 2.0, TCI | Administration, Physician Connect, Lessons, Reports | ROLE_SNF | Patient ID     | Episode DRG Issues |      | i am learning path, Learning Pathway 2, max-test-052417, New learning Path, Remedy University | woodruff Community Hospital, litchford Falls Healthcare Re, 5 Star Home Care Llc, 3 Angels Home Health, Aa Advanced Care Inc, Catered Manor Nursing Center, Downey Care Center, Encinitas Nursing and Rehabilitation Center, Arbor Nursing Center, Courtyard Health Care Center, Emerald Gardens Nursing Center, Buena Vista Care Center, Gilroy Healthcare and Rehabilitation Center, Eagle Point Nursing & Rehabilitation Center, Cedar Ridge Health Rehab Center, Ennoble Skilled Nursing and Rehabilitation Center, Friendship Skilled Nursing & Rehabilitation Center, Covington Manor Health and  Rehabilitation Center, Clinton House Health and Rehab Center, Edgewood Manor Nursing Center, Fairview Skilled Nursing and Rehabilitation Center, Pacific Coast Manor, Sunrise Skilled Nursing & Rehabilitation Center, Pyramid Point Post-Acute Rehabilitation Center, Hilltop Skilled Nursing, McCormick's Creek, Palo Alto Sub-Acute, Meadow Manor, Villa Georgetown, Highland Health, Birchaven, Independence House, Munroe Regional, Uf Health Shands Hospital, North Okaloosa Medical Center, Kendall Medical Center, Fort Walton Beach Medical Center, Highland Medical Center - Christus, B R F Hospital Holdings, Willis Knighton Medical Center, Willis Knighton Bossier Health Center, Aroostook Medical Center |
