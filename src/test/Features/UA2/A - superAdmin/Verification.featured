Feature: Create User - Super Admin User

Scenario: Verify availability of fields and roles on General Information tab while adding a user.
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

  #Then I verify the availability of role "Downstream Provider"
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
      | Verify validation message for invalid Phone           | First Name | Last Name | test.automatemail |     123564 | Physicians | NPI        | Phone is required      |
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
    Then I verify the header "General Information"
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "NPI" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify the header "Applications"
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
    Then I verify the header "General Information"
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwayName>" in Learning Pathway search box
    Then I select "<LearningPathwayName>" from the results
    Then I clear the Learning Pathway search box
    Then I enter "<LearningPathwayID>" in Learning Pathway search box
    Then I select "<LearningPathwayID>" from the results
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
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
    Then I verify the header "General Information"
    And I fill in First Name with "First Name"
    Then I fill in Last Name with Last Name
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I enter "<LearningPathwayName>" in Learning Pathway search box
    And I verify No results found under Learning Pathway search box

    Examples: 
      | Role      | Applications                             | LearningPathwayName |
      | Executive | Episodes, Episodes 2.0, Reports, Lessons | Test123             |

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
    Then I verify the header "General Information"
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify the header "Permissions"
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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select button
    Then I select "<Programs>" programs
    Then I enter characters "<Locations>" in location search
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
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select button
    Then I select "<Programs>" programs
    Then I enter characters "<Loc>" in location search
    Then I should not see "All Location" field
    Then I verify text present in location "<Location>" field label

    Examples: 
      | Scenario Description                                      | FirstName | LastName | Email             | Phone | Role      | Applications                             | NPI | Health System    | Programs    | Location                 | Loc                      |
      | Search by location by partial name while creation of user | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2 | Palmetto Health Richland | Palmetto                 |
      | Search by location by full name while creation of user    | FirstName | LastName | test.automatemail |       | Executive | Episodes, Episodes 2.0, Reports, Lessons |     | Sound Physicians | BPCI-Model2 | Palmetto Health Richland | Palmetto Health Richland |

  Scenario: Verify the functionality of back/Cancel button and tabs on the left on create user page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the header "General Information"
    And I fill in First Name with "First Name"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational Executive
    Then I click on Next button
    Then I verify the header "Applications"
    Then I click on "General Information" tab on the left
    Then I verify the header "General Information"
    Then I click on "Applications" tab on the left
    Then I verify the header "Applications"
    Then I select "Episodes, Episodes 2.0" product
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on Back button
    Then I verify the header "Applications"
    Then I click on Next button
    Then I verify the header "Permissions"
    Then I click on "General Information" tab on the left
    Then I verify the header "General Information"
    Then I click on "Applications" tab on the left
    Then I verify the header "Applications"
    Then I click on "Permissions" tab on the left
    Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with Stamford Hospital
    And I select a Stamford Hospital
    Then I click on Select All Locations button
    Then I click on Cancel button
    Then I should see header text "Users"

  Scenario: Verify the functionality of Cross button on General Information Tab on Create User page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I click on Cross button
    Then I should see header text "Users"

  Scenario: Verify the functionality of Cross button on Applications Tab on Create User page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "First Name"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational Executive
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    Then I click on Cross button
    Then I should see header text "Users"

  Scenario: Verify the functionality of Cross button on Permissions Tab on Create User page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "First Name"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational Executive
    Then I click on Next button
    Then I verify the header "Applications"
    Then I select "<Applications>" product
    Then I click on Next button
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Cross button
    Then I should see header text "Users"

  Scenario Outline: Verify removal of role and changing of the role to see the impact in the available applications
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
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role1>
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications1>" are unchecked
    Then I click on "General Information" tab on the left
    Then I verify the header "General Information"
    Then I pick a Organizational <Role2>
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications2>" are unchecked

    Examples: 
      | Role1                          | Applications1                                                                    | Role2                         | Applications2 |
      | Remedy Technical Administrator | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration, TCI | Prospective Partner Executive | Lessons       |
