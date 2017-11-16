Feature: CreateUser-SuperAdminDataPermissions

  Scenario Outline: Verify Managing Organization drop down is not available for Downstream role
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
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational Downstream Provider
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify unavailability of organization drop down

    Examples: 
      | Role                | Applications |
      | Downstream Provider | Episodes 2.0 |

  Scenario Outline: Verify search location functionality for Downstream role
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
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational Downstream Provider
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify unavailability of organization drop down
    Then I search for "<Location>"
    Then I select the "<Location>"
    Then I click on Submit button

    Examples: 
      | Role                | Applications | Location                      |
      | Downstream Provider | Episodes 2.0 | -litchford Falls Healthcare A |

  Scenario Outline: Verify Managing Organization drop down is not available for Downstream role after switching from some other role
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
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role1>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify availability of organization drop down
    Then I click on General Information tab
    When I click the Organizational Role Field
    Then I pick a Organizational <Role2>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify unavailability of organization drop down

    Examples: 
      | Role1   | Role2               | Applications |
      | Manager | Downstream Provider | Episodes 2.0 |

  Scenario Outline: Verify Managing Organization drop down is available for other roles after switching from Downstream role
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
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role1>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify unavailability of organization drop down
    Then I click on General Information tab
    When I click the Organizational Role Field
    Then I pick a Organizational <Role2>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    Then I verify availability of organization drop down

    Examples: 
      | Role1               | Role2   | Applications |
      | Downstream Provider | Manager | Episodes 2.0 |

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
      | Scenario Description                                                     | FirstName | LastName | Email             | Phone | Role      | Applications                                                          | NPI | Health System    | Programs                | Locations                                                                        |
      | Create user with only one program all locations - Super Admin User       | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | All                                                                              |
      | Create user with only one program one location - Super Admin User        | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard (450058)                                       |
      | Create user with only one program multiple locations - Super Admin User  | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard (450058),Adventist Health Bakersfield (050455) |
      | Create user with multiple programs all locations - Super Admin User      | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | All                                                                              |
      | Create user with multiple programs one location - Super Admin User       | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Mission Trails Baptist (450058-1)                                                |
      | Create user with multiple programs multiple locations - Super Admin User | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Warren Memorial Hospital (490033), Blessing Hospital - Quincy (140015)           |

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
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Add Another Organization button
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System1>
    Then I click on Select All Locations button
    Then I click on Submit button

    Examples: 
      | Scenario Description                      | FirstName | LastName | Email             | Phone | Role      | Applications                                                          | NPI | Health System    | Health System1    | Programs    | Locations |
      | Multiple Organizations - Super Admin User | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | Stamford Hospital | BPCI-Model2 | All       |
