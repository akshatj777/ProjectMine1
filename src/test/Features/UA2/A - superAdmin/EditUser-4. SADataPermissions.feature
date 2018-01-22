Feature: Edit data permissions for SA

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Role>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on delete organisation icon
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Programs1>" programs
    Then I select "<Locations1>" locations
    Then I click on "Add Another Organization" button on permissions tab
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Programs2>" programs
    Then I select "<Locations2>" locations2
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System1>::<Programs1>:<Locations1>; <Health System2>::<Programs2>:<Locations2>" under Data Permissions in view user page

    Examples: 
      | Description                             | user        | Role       | Email             | Health System1    | Programs1   | Locations1                  | Health System2 | Programs2   | Locations2                       |
      | 1. External User-Edit from org1 to org2 | Super Admin | Remedy TCS | test.automatemail | Stamford Hospital | BPCI-Model2 | 2070-015--Stamford Hospital | TeamHealth     | BPCI-Model2 | 2070-g14--North Shore Med Center |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Role>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on existing organisation
    Then I select "<Locations>" locations
    Then I click on Submit button
    And I wait for 3000 milli seconds

    Examples: 
      | Description                                                 | user        | Role       | Email             | Locations                                                    |
      | 2. External User-Edit single location to multiple locations | Super Admin | Remedy TCS | test.automatemail | 2070-023--Allentown, 2070-023--Bethlehem, 2070-025--Anderson |
      | 3. External User-Edit multiple locations to All Locations   | Super Admin | Remedy TCS | test.automatemail | all locations                                                |
      | 4. External User-Edit All locations to single location      | Super Admin | Remedy TCS | test.automatemail | 2070-023--Allentown                                          |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Role>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on existing organisation
    Then I deselect "<RemovePrograms>" programs
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                                      | user        | Role       | Email             | Locations                                                                   | RemovePrograms | Programs    | Health System | ProgramsVisible |
      | 5. External user-Edit user from Model-2 to Model-3 and select single location    | Super Admin | Remedy TCS | test.automatemail | 3056-q91--The Medical Center At Franklin                                    | BPCI-Model2    | BPCI-Model3 |               | BPCI-Model3     |
      | 6. External user-Edit user from Model-2 to Model-3 and select multiple locations | Super Admin | Remedy TCS | test.automatemail | 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center     | BPCI-Model2    | BPCI-Model3 |               | BPCI-Model3     |
      | 7. External user-Edit user from Model-2 to Model-3 and select all locations      | Super Admin | Remedy TCS | test.automatemail | all locations                                                               | BPCI-Model2    | BPCI-Model3 |               | BPCI-Model3     |
      | 8. External user-Edit user from Model-3 to Model-2 and select single location    | Super Admin | Remedy TCS | test.automatemail | 2070-g14--North Shore Med Center                                            | BPCI-Model3    | BPCI-Model2 |               | BPCI-Model2     |
      | 9. External user-Edit user from Model-3 to Model-2 and select multiple locations | Super Admin | Remedy TCS | test.automatemail | 2070-g14--North Shore Med Center, 2070-g14--Baptist Medical Center  Beaches | BPCI-Model3    | BPCI-Model2 |               | BPCI-Model2     |
      | 10. External user-Edit user from Model-3 to Model-2 and select all locations     | Super Admin | Remedy TCS | test.automatemail | all locations                                                               | BPCI-Model3    | BPCI-Model2 |               | BPCI-Model2     |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Role>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on existing organisation
    #Then I select "<EditLocations>" locations
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                                                   | user        | Role       | Email             | EditLocations | Locations                                                               | Programs    | Health System | ProgramsVisible          |
      | 11.External user-Edit user from multiple programs to single program                           | Super Admin | Remedy TCS | test.automatemail |               |                                                                         |             |               | BPCI-Model2              |
      | 12.External user-Edit from single program to multiple programs- All locations                 | Super Admin | Remedy TCS | test.automatemail |               | all locations                                                           | BPCI-Model3 |               | BPCI-Model2, BPCI-Model3 |
      | 13.External user-Edit from single program to multiple programs - Multi locations              | Super Admin | Remedy TCS | test.automatemail |               | 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center | BPCI-Model3 |               | BPCI-Model2, BPCI-Model3 |
     # | 14.External user-Edit from single program to multiple programs - Mod2 and Mod3- all locations | Super Admin | Remedy TCS | test.automatemail | all locations | all locations                                                           | BPCI-Model3 |               | BPCI-Model2, BPCI-Model3 |
