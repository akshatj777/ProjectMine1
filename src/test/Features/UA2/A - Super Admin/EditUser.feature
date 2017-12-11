Feature: Edit page for superuser verification

  Scenario Outline: <Description>
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
      | Description                                                     | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role      | Applications                             | ApplicationsNotVisible            | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Executive role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |

  Scenario: Verify components of edit user page for superuser
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the availability of fields "First Name"
    Then I verify the availability of fields "Last Name"
    Then I verify the availability of fields "Email"
    Then I verify the availability of fields "Phone"
    Then I verify the availability of fields "Role"

  Scenario Outline: Verifying the ability to edit a field in general information tab
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I cleared the textbox under edit user "First Name"
    And I fill in First Name with "<FirstName>"
    And I cleared the textbox under edit user "Last Name"
    Then I fill in Last Name with <LastName>
    And I cleared the textbox field under edit user phone tab
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I click on Next button
    Then I click on Submit button for "<User>"
    And I verify First Name <First Name> in user page
    And I verify Last Name <Last Name> in user page
    And I verify Phone <Phone> in user page
    And I verify Role <Role> in user page
		And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    
    Examples: 
      | FirstName       | LastName       | Phone      | Role                            | User        |
      | FirstNameEdited | LastNameEdited | 9876541321 | Manager                         | Super Admin |
  		 | FirstNameEdited | LastNameEdited | 9876541321 | Executive                         | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Case Manager                    | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Physicians                      | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Remedy Technical Administrator  | Super Admin |
    # | FirstNameEdited | LastNameEdited | 9876541321 | Remedy TCS                      | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Remedy LPN                      | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Remedy RN                       | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Remedy Field RN                 | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Remedy PM                       | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Remedy Sales Team               | Super Admin |
    #  | FirstNameEdited | LastNameEdited | 9876541321 | Remedy Executive                | Super Admin |
    #  | FirstNameEdited | LastNameEdited | 9876541321 | Prospective Partner Executive   | Super Admin |
    #  | FirstNameEdited | LastNameEdited | 9876541321 | Remedy Other                    | Super Admin |
    #  | FirstNameEdited | LastNameEdited | 9876541321 | Partner Program Administrator   | Super Admin |
    #  | FirstNameEdited | LastNameEdited | 9876541321 | Remedy Program Administrator    | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Partner Technical Administrator | Super Admin |
     # | FirstNameEdited | LastNameEdited | 9876541321 | Transitional Case Manager       | Super Admin |
    #  | FirstNameEdited | LastNameEdited | 9876541321 | Downstream Provider             | Super Admin |

		Scenario: Verifying that email is not editable in general information tab
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I enter search box in landing page with "test.automatemail"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I should not be able to edit Email
		
		
		
		
		
		Scenario Outline: <Description>
    Given I am on the login page
		Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I click on Episode1 tile for "<User>-<Role>" and verify user "<Roletext>"
    And I click on Institute tile for "<User>-<Role>" user
    And I click on Reports tile for "<User>-<Role>" user
    And I click on Episodes two tile for "<User>-<Role>" user
    And I click on RemedyU tile for "<User>-<Role>" user
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
 			| Description                                                                           | User        | Role                            | Applications                                                                     | ApplicationsNotVisible                                             | Roletext       |
      | Login with Manager and verify Product Tiles and their redirections                         | Super Admin | Manager                         | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | ROLE_PRM       |
      | Login with Executive and verify Product Tiles and their redirections                  | Super Admin | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | ROLE_PRM       |
      #| Login with Super Admin User and create user with Case Manager role                    | Super Admin | Case Manager                    | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | ROLE_TCS       |
      #| Login with Super Admin User and create user with Physicians role                      | Super Admin | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     | ROLE_CLINICIAN |
      #| Login with Super Admin User and create user with Remedy TCS role                      | Super Admin | Remedy TCS                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_TCS       |
      #| Login with Super Admin User and create user with Remedy LPN role                      | Super Admin | Remedy LPN                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_LPN       |
      #| Login with Super Admin User and create user with Remedy RN role                       | Super Admin | Remedy RN                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_RN        |
      #| Login with Super Admin User and create user with Remedy Field RN role                 | Super Admin | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_FRN       |
      #| Login with Super Admin User and create user with Remedy PM role                       | Super Admin | Remedy PM                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_PM        |
      #| Login with Super Admin User and create user with Remedy Sales Team role               | Super Admin | Remedy Sales Team               | Reports, Lessons, TCI                                                            | Administration, Physician Connect, Episodes, Episodes 2.0          |                |
      #| Login with Super Admin User and create user with Remedy Executive role                | Super Admin | Remedy Executive                | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | ROLE_PM        |
      #| Login with Super Admin User and create user with Prospective Partner Executive role   | Super Admin | Prospective Partner Executive   | Lessons                                                                          | Administration, Physician Connect, Episodes, Episodes 2.0, Reports |                |
      #| Login with Super Admin User and create user with Remedy Other role                    | Super Admin | Remedy Other                    | Episodes, Episodes 2.0, Lessons, TCI                                             | Administration, Physician Connect, Reports                         | ROLE_PRM       |
      #| Login with Super Admin User and create user with Partner Program Administrator role   | Super Admin | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     | ROLE_PRM       |
      #| Login with Super Admin User and create user with Remedy Program Administrator role    | Super Admin | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, TCI                 | Administration                                                     | ROLE_PRM       |
      #| Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration      |                                                                    | ROLE_PM        |
      #| Login with Super Admin User and create user with Remedy Technical Administrator role  | Super Admin | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration, TCI |                                                                    | ROLE_ADMIN     |
      #| Login with Super Admin User and create user with Transitional Case Manager role       | Super Admin | Transitional Case Manager       | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect                    | ROLE_TCS       |
      #| Login with Super Admin User and create user with Downstream Provider role             | Super Admin | Downstream Provider             | Episodes 2.0                                                                     | Episodes, Reports, Lessons, Physician Connect, Administration      | ROLE_SNF       |
  
  

  Scenario Outline: Verifying ability of user to enable any application
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I click on application tab
    Then I select "<Applications>" product
    And I verify that user can enable applications
    Then I click on Next button
    Then I click on Submit button for "Super User"
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product

    Examples: 
      | Applications                    |
      | Episodes, Episodes 2.0, Lessons |

  Scenario Outline: Verifying ability of user to disable any application
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I click on application tab
    Then I select "<Applications>" product
    Then I deselect "<ApplicationsNotVisible>" product
    And I verify that user can disable applications
    Then I click on Next button
    Then I click on Submit button for "Super User"
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter newuser email for login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    #Then I verify "<Applications>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown

    Examples: 
      | Applications                                                                    | ApplicationsNotVisible              |
      | Episodes, Episodes 2.0, Lessons, Physician Connect, Administration, TCIEpisodes | Lessons, Physician Connect,Episodes |

  Scenario Outline: Verifying ability of user to edit fields in data permission
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I click on permissions tab
    Then I delete the existing organization
    And I click on "Remove" button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I click on Select All Locations button
    Then I click on Submit button for "Super User"
    And I verify that <Health System> is added in Data permissions

    Examples: 
      | Health System | Programs    |
      | TEST Hospital | BPCI-Model2 |
