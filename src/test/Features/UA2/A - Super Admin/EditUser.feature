Feature: Edit page for superuser verification

  Scenario: Login as superUser to verify edit page components and non-editable email field
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
    And I should not be able to edit Email
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
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
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
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                               | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | Role    | NPI | Applications | Health System     |
      | Login with Super Admin User and Edit user to Manager role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Manager |     | Episodes     | Stamford Hospital |

  #| Login with Super Admin User and Edit user to Executive role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Executive                       |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Case Manager role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Case Manager                    |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Physicians role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Physicians                      | NPI |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy TCS role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy TCS                      |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy LPN role                      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy LPN                      |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy RN role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy RN                       |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy Field RN role                 | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Field RN                 |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy PM role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy PM                       |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy Sales Team role               | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Sales Team               |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy Executive role                | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Executive                |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Prospective Partner Executive role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Prospective Partner Executive   |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy Other role                    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Other                    |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Partner Program Administrator role   | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Partner Program Administrator   |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy Program Administrator role    | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Program Administrator    |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Partner Technical Administrator |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Remedy Technical Administrator role  | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Remedy Technical Administrator  |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Transitional Case Manager role       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Transitional Case Manager       |     |Episodes|Stamford Hospital |
  #| Login with Super Admin User and Edit user to Downstream Provider role             | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Downstream Provider             |     |Episodes|Stamford Hospital |
  Scenario Outline: Login with Super Admin user to enable/disable user applications and verify Product Tiles and their redirections
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
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
    Then I enter newuser email for "<user>-<Role>" login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | user        | Role      | EnableApplications                       | DisableApplications    | Applications     | ApplicationsNotVisible          | LearningPathwaySearchParameter | Health System     | NPI |
      | Super Admin | Executive | Reports, Lessons, Episodes               | Lessons, Episodes      | Reports          | Episodes 2.0, Episodes, Lessons | Learning Pathway 2             | Stamford Hospital |     |
      | Super Admin | Manager   | Reports, Lessons, Episodes, Episodes 2.0 | Episodes 2.0, Episodes | Reports, Lessons | Episodes, Episodes 2.0          | Learning Pathway 2             | Stamford Hospital |     |

  #| Super Admin | Physicians                      | Physician Connect, Episodes 2.0, Episodes, Lessons                               | Physician Connect, Episodes 2.0                          | Episodes, Lessons                           | Reports, Physician Connect, Episodes 2.0                 | Learning Pathway 2             | Stamford Hospital | NPI |
  #| Super Admin | Remedy TCS                      | TCI, Episodes 2.0, Lessons                                                       | TCI                                                      | Episodes 2.0, Lessons                       | Reports, Episodes, TCI                                   | Learning Pathway 2             | Stamford Hospital |     |
  #| Super Admin | Remedy Program Administrator    | Physician Connect, Episodes 2.0, Episodes, Lessons, TCI                          | Episodes 2.0, Lessons                                    | Physician Connect, Episodes, TCI            | Reports, Episodes 2.0, Lessons                           | Learning Pathway 2             | Stamford Hospital |     |
  #| Super Admin | Partner Technical Administrator | Physician Connect, Episodes 2.0, Episodes, Lessons, Administration               | Episodes 2.0, Lessons                                    | Physician Connect, Episodes, Administration | Reports, Episodes 2.0, Lessons                           | Learning Pathway 2             | Stamford Hospital |     |
  #| Super Admin | Remedy Technical Administrator  | Physician Connect, Episodes 2.0, Episodes, Lessons, Administration, TCI, Reports | Physician Connect, Administration, Episodes 2.0, Lessons | Episodes, TCI, Reports                      | Physician Connect, Administration, Episodes 2.0, Lessons | Learning Pathway 2             | Stamford Hospital |     |
  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
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

  