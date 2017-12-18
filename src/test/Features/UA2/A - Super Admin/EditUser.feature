Feature: Edit page for superuser verification

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

  Scenario Outline: Verifying the ability of SuperAdmin user to edit a field in general information tab
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
    And I cleared the textbox under edit user "Phone"
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify First Name <FirstName> in user page
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify Role <Role> in user page
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                               | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone      | Role    | NPI | Applications |
      | Login with Super Admin User and Edit user to Manager role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Manager |     | Episodes     |

  #| Login with Super Admin User and Edit user to Case Manager role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Case Manager                    |     |Episodes|
  #| Login with Super Admin User and Edit user to Physicians role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Physicians                      | NPI |Episodes|
  #| Login with Super Admin User and Edit user to Remedy TCS role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy TCS                      |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy LPN role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy LPN                      |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy RN role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy RN                       |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy Field RN role                 | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy Field RN                 |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy PM role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy PM                       |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy Sales Team role               | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy Sales Team               |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy Executive role                | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy Executive                |     |Episodes|
  #| Login with Super Admin User and Edit user to Prospective Partner Executive role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Prospective Partner Executive   |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy Other role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy Other                    |     |Episodes|
  #| Login with Super Admin User and Edit user to Partner Program Administrator role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Partner Program Administrator   |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy Program Administrator role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy Program Administrator    |     |Episodes|
  #| Login with Super Admin User and Edit user to Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Partner Technical Administrator |     |Episodes|
  #| Login with Super Admin User and Edit user to Remedy Technical Administrator role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Remedy Technical Administrator  |     |Episodes|
  #| Login with Super Admin User and Edit user to Transitional Case Manager role       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Transitional Case Manager       |     |Episodes|
  #| Login with Super Admin User and Edit user to Downstream Provider role             | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Downstream Provider             |     |Episodes|
  #| Login with Super Admin User and Edit user to Executive role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 9963852451 | Executive                       |     |Episodes|
  Scenario Outline: Verifying the ability of Super Admin user to enable/disable applications
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I deselect "<ApplicationsNotVisible>" product
    And I verify that "<ApplicationsNotVisible>" are "deselected"
    Then I select "<Applications>" product
    And I verify that "<Applications>" are "selected"
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    And I click on Episode1 tile for "<User>-<Role>" user
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
      | User        | Role      | Applications               | ApplicationsNotVisible                   | LearningPathwaySearchParameter | Health System     |
      | Super Admin | Executive | Episodes, Reports, Lessons | Reports, Episodes, Episodes 2.0, Lessons | Learning Pathway 2            | Stamford Hospital |

  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect, Lessons        | Learning Pathway 2             | Stamford Hospital |
  #| Administration, Physician Connect , Lessons       | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect , Lessons       | Learning Pathway 2             | Stamford Hospital |
  #| Administration, Physician Connect , Lessons       | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect, Lessons        | Learning Pathway 2             | Stamford Hospital |
  #| Administration, Physician Connect  , Lessons      | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect , Lessons       | Learning Pathway 2             | Stamford Hospital |
  #| Administration, Physician Connect , Lessons       | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect  , Lessons      | Learning Pathway 2             | Stamford Hospital |
  #| Administration, Physician Connect , Lessons       | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect , Lessons       | Learning Pathway 2             | Stamford Hospital |
  #| Administration, Physician Connect , Lessons       | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect  , Lessons      | Learning Pathway 2             | Stamford Hospital |
  #| Administration, Physician Connect , Lessons       | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect , Lessons       | Learning Pathway 2             | Stamford Hospital |
  #| Physician Connect, Administration, TCI, Lessons   | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  #| Episodes, Episodes 2.0, Reports, Lessons | Administration, Physician Connect , Lessons       | Learning Pathway 2             | Stamford Hospital |
  #| Physician Connect, Administration, TCI , Lessons  | Episodes, Episodes 2.0, Reports, Lessons | Learning Pathway 2             | Stamford Hospital |
  Scenario: Verifying that email is not editable in general information tab
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I should not be able to edit Email
