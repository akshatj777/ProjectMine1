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
    Then I select "<Locations2>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    
    Then I verify "<Health System1>::<Programs1>:<facilityKey>; <Health System2>::<Programs2>:<Locations2>" under Data Permissions in view user page

    Examples: 
      | Description                             | user        | Role    | Email             | Health System1    | Programs1   | Locations1 | Health System2 | Programs2   | Locations2                      |
      | 1. External User-Edit from org1 to org2 | Super Admin | Manager | test.automatemail | Stamford Hospital | BPCI-Model2 | tsh         | TeamHealth     | BPCI-Model2 | 2070-g14--Baptist Medical Center  Beaches | 

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
    Then I click on "first" existing organisation
    Then I select "<Locations>" locations
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                 | user        | Role       | Email             | Locations                                                    | Health System |
      | 2. External User-Edit single location to multiple locations | Super Admin | Remedy TCS | test.automatemail | 2070-023--Allentown, 2070-023--Bethlehem, 2070-025--Anderson | HealthSystem1 |
      | 3. External User-Edit multiple locations to All Locations   | Super Admin | Remedy TCS | test.automatemail | all locations                                                | HealthSystem1 |
      | 4. External User-Edit All locations to single location      | Super Admin | Remedy TCS | test.automatemail | 2070-023--Allentown                                          | HealthSystem1 |

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
    Then I click on "first" existing organisation
    Then I deselect "<RemovePrograms>" programs
    Then I select "<Programs>" programs for existing organisation
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                                      | user        | Role       | Email             | Locations                                                                   | RemovePrograms | Programs    | Health System | ProgramsVisible |
      | 5. External user-Edit user from Model-2 to Model-3 and select single location    | Super Admin | Remedy TCS | test.automatemail | 3056-q91--The Medical Center At Franklin                                    | BPCI-Model2    | BPCI-Model3 | HealthSystem1 | BPCI-Model3     |
      | 6. External user-Edit user from Model-2 to Model-3 and select multiple locations | Super Admin | Remedy TCS | test.automatemail | 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center     | BPCI-Model2    | BPCI-Model3 | HealthSystem1 | BPCI-Model3     |
      | 7. External user-Edit user from Model-2 to Model-3 and select all locations      | Super Admin | Remedy TCS | test.automatemail | all locations                                                               | BPCI-Model2    | BPCI-Model3 | HealthSystem1 | BPCI-Model3     |
      | 8. External user-Edit user from Model-3 to Model-2 and select single location    | Super Admin | Remedy TCS | test.automatemail | 2070-g14--North Shore Med Center                                            | BPCI-Model3    | BPCI-Model2 | HealthSystem1 | BPCI-Model2     |
      | 9. External user-Edit user from Model-3 to Model-2 and select multiple locations | Super Admin | Remedy TCS | test.automatemail | 2070-g14--North Shore Med Center, 2070-g14--Baptist Medical Center  Beaches | BPCI-Model3    | BPCI-Model2 | HealthSystem1 | BPCI-Model2     |
      | 10. External user-Edit user from Model-3 to Model-2 and select all locations     | Super Admin | Remedy TCS | test.automatemail | all locations                                                               | BPCI-Model3    | BPCI-Model2 | HealthSystem1 | BPCI-Model2     |
      | 11.External user-Edit user from multiple programs to single program              | Super Admin | Remedy TCS | test.automatemail |                                                                             | BPCI-Model3    |             | HealthSystem1 | BPCI-Model2     |

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
    Then I click on "first" existing organisation
    Then I select "<Programs>" programs for existing organisation
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                                                      | user        | Role         | Email             | Locations                                                               | Programs    | Health System | ProgramsVisible          |
      | 12.External user-Edit from single program to multiple programs- All locations                    | Super Admin | Remedy TCS   | test.automatemail | all locations                                                           | BPCI-Model3 | HealthSystem1 | BPCI-Model2, BPCI-Model3 |
      | 13.External user-Edit from single program to multiple programs - Multi locations                 | Super Admin | Manager      | test.automatemail | 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center | BPCI-Model3 | HealthSystem1 | BPCI-Model2, BPCI-Model3 |
      | 14.External user-Edit from single program to multiple programs - All locations for mod2 and mod3 | Super Admin | Case Manager | test.automatemail | all locations                                                           | BPCI-Model3 | HealthSystem1 | BPCI-Model2, BPCI-Model3 |
      | 15.External user-Select All locations - for Model-2 and Model-3                                  | Super Admin | Physicians   | test.automatemail | all locations                                                           |             | HealthSystem1 | BPCI-Model2, BPCI-Model3 |

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
    Then I click on "Add Another Organization" button on permissions tab
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System>::<Programs>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                                | user        | Role                         | Email             | Locations                                | Programs    | Health System |
      | 16.Internal User-Add organization2, Select Model 3, Select single location | Super Admin | Remedy Program Administrator | test.automatemail | 3056-q91--The Medical Center At Franklin | BPCI-Model3 | TeamHealth    |

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
    Then I click on "second" existing organisation
    Then I select "<Programs>" programs for existing organisation
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                                               | user        | Role             | Email             | Locations                                                               | Programs    | Health System | ProgramsVisible          |
      | 17.Internal User-Select Model 3 for Org2, Select multiple locations for Model-2 & Model-3 | Super Admin | Remedy Executive | test.automatemail | 3056-q91--The Medical Center At Franklin, 3056-q91--Rhea Medical Center | BPCI-Model3 | HealthSystem2 | BPCI-Model2, BPCI-Model3 |

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
    Then I click on "first" existing organisation
    Then I select "<Locations>" locations
    Then I click on "second" existing organisation
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds

    Examples: 
      | Description                                                                      | user        | Role             | Email             | Locations     | Programs | Health System1 | Health System2 | ProgramsVisible |
      | 18.Internal User-Select All locations for Model-2 & Model-3 for both org1 & org2 | Super Admin | Remedy Executive | test.automatemail | all locations |          | HealthSystem1  | HealthSystem2  |                 |

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
    Then I click on "first" existing organisation
    Then I deselect "<DeselectLocations1>" locations
    Then I select "<Locations1>" locations
    Then I click on "second" existing organisation
    Then I deselect "<DeselectLocations2>" locations
    Then I select "<Locations2>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System1>::<ProgramsVisible>:<Locations1>; <Health System2>::<ProgramsVisible>:<Locations2>" under Data Permissions in view user page

    Examples: 
      | Description | user        | Role             | Email             | Health System1 | Health System2 | DeselectLocations1               | Locations1                                                                             | DeselectLocations2                        | Locations2                    | ProgramsVisible          |
      |         19. | Super Admin | Remedy Executive | test.automatemail | HealthSystem1  | HealthSystem2  | 3056-a08--Meritus Medical Center | 2070-060--Carolinas Hospital System - Florence, 2070-060--East Orange General Hospital | 2070-g14--Baptist Medical Center  Beaches | 3056-q91--Rhea Medical Center | BPCI-Model2, BPCI-Model3 |

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
    Then I click on "first" existing organisation
    Then I select "<Locations1>" locations
    Then I click on "second" existing organisation
    Then I select "<Locations2>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System1>::<ProgramsVisible1>:<Locations1>; <Health System2>::<ProgramsVisible2>:<Locations2>" under Data Permissions in view user page

    Examples: 
      | Description | user        | Role      | Email             | Health System1 | Health System2 | Locations1    | Locations2    | ProgramsVisible1      | ProgramsVisible2 |
      |         20. | Super Admin | Remedy PM | test.automatemail | HealthSystem1  | HealthSystem2  | all locations | all locations | BPCI-Model2, BPCI-CJR | BPCI-Model3      |

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
    #Then I click on "Add Another Organization" button on permissions tab
    Then I click Add Organization button for "<HasHealthSystem3>" flag
    And I search for health system with <Health System3>
    And I select a <Health System3>
    Then I select "<Programs3>" programs
    Then I select "<Locations3>" locations
    Then I click on "first" existing organisation
    Then I deselect "<deselectLocations1>" locations
    Then I select "<Locations1>" locations
    Then I click on "second" existing organisation
    Then I deselect "<deselectLocations2>" locations
    Then I select "<Locations2>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System1>::<ProgramsVisible1>:<Locations1>; <Health System2>::<ProgramsVisible2>:<Locations2>; <Health System3>::<ProgramsVisible3>:<Locations3>" under Data Permissions in view user page

    Examples: 
      | Description | user        | Role    | Email             | Health System1 | Health System2 | deselectLocations1                                                                                                                                                                                  | Locations1             | deselectLocations2                       | Locations2                                     | ProgramsVisible1         | ProgramsVisible2         | Health System3 | Programs3                | HasHealthSystem3 | Locations3    | ProgramsVisible3         |
      |         21. | Super Admin | Manager | test.automatemail | HealthSystem1  | HealthSystem2  | 3056-a08--Meritus Medical Center, 3056-a08--Howard County General Hospital, 3056-a08--Saint Barnabas Medical Center, 3056-a08--East Orange General Hospital, 3056-a08--St. Michael's Medical Center | 2070-060--All 2070-060 | 3090-209--Uhs Twin Tier Home Health Inc. | 6005-197--All 6005-197, 6005-200--All 6005-200 | BPCI-Model2, BPCI-Model3 | BPCI-Model2, BPCI-Model3 | TeamHealth     | BPCI-Model2, BPCI-Model3 | Yes              | all locations | BPCI-Model2, BPCI-Model3 |

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
    Then I click on "first" existing organisation
    Then I deselect "<deselectLocations1>" locations
    Then I select "<Locations1>" locations
    Then I click on "second" existing organisation
    Then I deselect "<deselectLocations2>" locations
    Then I select "<Locations2>" locations
    Then I click on "third" existing organisation
    Then I deselect "<deselectLocations3>" locations
    Then I select "<Locations3>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System1>::<ProgramsVisible1>:<Locations1>; <Health System2>::<ProgramsVisible2>:<Locations2>; <Health System3>::<ProgramsVisible3>:<Locations3>" under Data Permissions in view user page

    Examples: 
      | Description | user        | Role    | Email             | Health System1 | Health System2 | deselectLocations1                                                                                                                                                                                  | Locations1             | deselectLocations2                       | Locations2                                     | ProgramsVisible1         | ProgramsVisible2         | Health System3 | HasHealthSystem3 | Locations3 | ProgramsVisible3         |
      |         22. | Super Admin | Manager | test.automatemail | HealthSystem1  | HealthSystem2  | 3056-a08--Meritus Medical Center, 3056-a08--Howard County General Hospital, 3056-a08--Saint Barnabas Medical Center, 3056-a08--East Orange General Hospital, 3056-a08--St. Michael's Medical Center | 2070-060--All 2070-060 | 3090-209--Uhs Twin Tier Home Health Inc. | 6005-197--All 6005-197, 6005-200--All 6005-200 | BPCI-Model2, BPCI-Model3 | BPCI-Model2, BPCI-Model3 | HealthSystem3  | Yes              |            | BPCI-Model2, BPCI-Model3 |
