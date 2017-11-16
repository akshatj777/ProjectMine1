Feature: CreateUser-PTADataPermissions

  Scenario Outline: Select One program
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    And I wait for 10000 milli seconds
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
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button

    Examples: 
      | Scenario Description | UserName | Password | FirstName | LastName | Email | Phone | Role | Applications | NPI | LearningPathwaySearchParameter | Health System |

  Scenario Outline: Verify auto selected programs in Organizations
    Given I am on the login page
    When I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    And I wait for 10000 milli seconds
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
    Then I verify default program "BPCI-Model2" associated with organization

    Examples: 
      | Role      | Applications                                                          | Health System     |
      | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File | Stamford Hospital |

  Scenario Outline: <Scenario Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select button
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    Then I click on Submit button

    Examples: 
      | Scenario Description                                             | FirstName | LastName | Email             | Phone | Role      | Applications                                                          | NPI | Health System    | Programs                | Locations                                                                        |
      | Create user with only one program all locations - PTA User       | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | All                                                                              |
      | Create user with only one program one location  - PTA User       | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard (450058)                                       |
      | Create user with only one program multiple locations - PTA User  | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard (450058),Adventist Health Bakersfield (050455) |
      | Create user with multiple programs all locations - PTA User      | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | All                                                                              |
      | Create user with multiple programs one location - PTA User       | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Mission Trails Baptist (450058-1)                                                |
      | Create user with multiple programs multiple locations - PTA User | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Warren Memorial Hospital (490033), Blessing Hospital - Quincy (140015)           |

  Scenario Outline: <Scenario Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
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
    Then I select "<Locations>" locations

    Examples: 
      | Scenario Description                                            | FirstName | LastName | Email             | Phone | Role      | Applications                                                          | NPI | Health System    | Programs    | Locations                                                                        | Loc |
      | Search by location by partial name while creation of user| FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2 | Baptist Medical Center - Vanguard (450058),Adventist Health Bakersfield (050455) | Bap  |
