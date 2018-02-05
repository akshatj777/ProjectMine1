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
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System1>::<Programs1>:<facilityKey>" under Data Permissions in view user page

    Examples: 
      | Description                             | user        | Role      | Email             | Health System1   | Programs1   | Locations1                                       |
      | 1. External User-Edit from org1 to org2 | Super Admin | Executive | test.automatemail | Sound Physicians | BPCI-Model2 | 6005-080--Winchester Medical Center - Rehab Unit |

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
      | Description                                                 | user        | Role      | Email             | Locations                                                                   | Health System |
      | 2. External User-Edit single location to multiple locations | Super Admin | Executive | test.automatemail | 6005-059--Presence Saint Joseph Medical Center, 6005-059--Evanston Hospital | HealthSystem1 |
      | 3. External User-Edit multiple locations to All Locations   | Super Admin | Executive | test.automatemail | all locations                                                               | HealthSystem1 |
      | 4. External User-Edit All locations to single location      | Super Admin | Executive | test.automatemail | 6005-080--Winchester Medical Center - Rehab Unit                            | HealthSystem1 |

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
      | Description                                                                      | user        | Role          | Email             | Locations                                                                   | RemovePrograms | Programs    | Health System | ProgramsVisible |
      | 5. External user-Edit user from Model-2 to Model-3 and select single location    | Super Admin | Executive     | test.automatemail | 3056-b75--Warren Memorial Hospital                                          | BPCI-Model2    | BPCI-Model3 | HealthSystem1 | BPCI-Model3     |
      | 6. External user-Edit user from Model-2 to Model-3 and select multiple locations | Super Admin | Case Manager  | test.automatemail | 3056-b75--Warren Memorial Hospital, 3090-066--Evanston Hospital             | BPCI-Model2    | BPCI-Model3 | HealthSystem1 | BPCI-Model3     |
      | 8. External user-Edit user from Model-3 to Model-2 and select single location    | Super Admin | Executive     | test.automatemail | 6005-080--Winchester Medical Center - Rehab Unit                            | BPCI-Model3    | BPCI-Model2 | HealthSystem1 | BPCI-Model2     |
      | 7. External user-Edit user from Model-2 to Model-3 and select all locations      | Super Admin | Executive     | test.automatemail | all locations                                                               | BPCI-Model2    | BPCI-Model3 | HealthSystem1 | BPCI-Model3     |
      | 9. External user-Edit user from Model-3 to Model-2 and select multiple locations | Super Admin | Executive     | test.automatemail | 6005-059--Presence Saint Joseph Medical Center, 6005-059--Evanston Hospital | BPCI-Model3    | BPCI-Model2 | HealthSystem1 | BPCI-Model2     |
      | 10. External user-Edit user from Model-3 to Model-2 and select all locations     | Super Admin | Case Manager  | test.automatemail | all locations                                                               | BPCI-Model3    | BPCI-Model2 | HealthSystem1 | BPCI-Model2     |
      | 11.External user-Edit user from multiple programs to single program              | Super Admin | Physicians    | test.automatemail | all locations                                                               | BPCI-Model3    |             | HealthSystem1 | BPCI-Model2     |

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
    Then I deselect "<RemoveLocations>" locations
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                                                      | user        | Role                          | Email             | RemoveLocations                                                             | Locations                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Programs    | Health System | ProgramsVisible          |
      | 12.External user-Edit from single program to multiple programs- All locations                    | Super Admin | Executive                     | test.automatemail | 6005-059--Presence Saint Joseph Medical Center, 6005-059--Evanston Hospital | 6005-059--Evanston Hospital, 3056-b75--All 3056-b75, 3056-d08--274172544, 3090-066--All 3090-066, 3090-070--All 3090-070, 3090-071--All 3090-071, 3090-197--All 3090-197, 3090-194--All 3090-194, 3090-185--All 3090-185, 3090-175--All 3090-175, 3090-168--All 3090-168, 3090-164--All 3090-164, 3090-119--All 3090-119, 3090-104--All 3090-104, 3090-087--All 3090-087, 3090-079--All 3090-079, 3090-068--All 3090-068, 3090-069--All 3090-069,  3090-085--All 3090-085, 3090-086--All 3090-086, 3090-117--All 3090-117, 3090-126--All 3090-126, 3090-163--All 3090-163, 3090-165--All 3090-165, 3090-166--All 3090-166, 3090-167--All 3090-167, 3090-169--All 3090-169, 3090-170--All 3090-170, 3090-171--All 3090-171, 3090-173--All 3090-173, 3090-174--All 3090-174, 3090-176--All 3090-176, 3090-177--All 3090-177, 3090-178--All 3090-178, 3090-179--All 3090-179, 3090-180--All 3090-180, 3090-181--All 3090-181, 3090-182--All 3090-182, 3090-188--All 3090-188, 3090-189--All 3090-189, 3090-190--All 3090-190, 3090-191--All 3090-191, 3090-192--All 3090-192, 3090-193--All 3090-193, 3090-195--All 3090-195, 3090-196--All 3090-196, 3090-198--All 3090-198, 3090-199--All 3090-199 | BPCI-Model3 | HealthSystem1 | BPCI-Model2, BPCI-Model3 |
      | 13.External user-Edit from single program to multiple programs - Multi locations                 | Super Admin | Physicians                    | test.automatemail |                                                                             | 2070-g14--North Shore Med Center, 3056-q91--Rhea Medical Center, 3056-q91--The Medical Center At Franklin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | BPCI-Model3 | HealthSystem1 | BPCI-Model2, BPCI-Model3 |
      | 14.External user-Edit from single program to multiple programs - All locations for mod2 and mod3 | Super Admin | Case Manager                  | test.automatemail |                                                                             | all locations                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | BPCI-Model3 | HealthSystem1 | BPCI-Model2, BPCI-Model3 |
      | 15.External user-Select All locations - for Model-2 and Model-3                                  | Super Admin | Prospective Partner Executive | test.automatemail |                                                                             | all locations                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |             | HealthSystem1 | BPCI-Model2, BPCI-Model3 |

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
      | 16.Internal User-Add organization2, Select Model 3, Select single location | Super Admin | Remedy Sales Team | test.automatemail | 2070-g14--North Shore Med Center | BPCI-Model2 | TeamHealth    |

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
     Then I click on existing organisation "<Health System1>"
     Then I select "<Locations1>" locations
    Then I click on existing organisation "<Health System2>"
    Then I select "<Programs>" programs for existing organisation
    Then I select "<Locations2>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System1>::<ProgramsVisible1>:<Locations1>; <Health System2>::<ProgramsVisible2>:<Locations2>" under Data Permissions in view user page

    Examples: 
      | Description                                                                               | user        | Role             | Email         |Health System1|Health System2   |Locations1| Locations2                                                               | Programs     | ProgramsVisible1          |ProgramsVisible2          |
      | 17.Internal User-Select Model 3 for Org2, Select multiple locations for Model-2 & Model-3 | Super Admin | Remedy Sales Team | test.automatemail|TeamHealth|Sound Physician |2070-g14--North Broward Medical Center, 2070-g14--Baptist Medical Center  Beaches |3056-b75--Warren Memorial Hospital, 3090-066--Evanston Hospital | BPCI-Model3 |  BPCI-Model2|BPCI-Model2, BPCI-Model3 |

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
      | 18.Internal User-Select All locations for Model-2 & Model-3 for both org1 & org2 | Super Admin | Remedy Field RN | test.automatemail | all locations |          | HealthSystem1  | HealthSystem2  |                 |

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
    Then I click on existing organisation "<Health System1>"
    Then I deselect "<DeselectLocations1>" locations
    Then I select "<Locations1>" locations
    Then I click on existing organisation "<Health System2>"
    Then I deselect "<DeselectLocations2>" locations
    Then I select "<Locations2>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System1>::<ProgramsVisible>:<Locations1>; <Health System2>::<ProgramsVisible>:<Locations2>" under Data Permissions in view user page

    Examples: 
      | Description | user        | Role             | Email             | Health System1 | Health System2 | DeselectLocations1               | Locations1                                                                             | DeselectLocations2                        | Locations2                    | ProgramsVisible          |
      |         19. | Super Admin | Remedy RN | test.automatemail | TeamHealth|Sound Physician  | 3056-q91--Rhea Medical Center | 2070-g14--North Broward Medical Center, 2070-g14--Baptist Medical Center  Beaches | 6005-072--Jackson North Med Center | 3090-066--Evanston Hospital | BPCI-Model2, BPCI-Model3 |

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
    Then I click on existing organisation "<Health System1>"
    Then I select "<Locations1>" locations
    Then I click on existing organisation "<Health System2>"
    Then I select "<Locations2>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 5000 milli seconds
    Then I verify "<Health System1>::<ProgramsVisible1>:<Locations1>; <Health System2>::<ProgramsVisible2>:<Locations2>" under Data Permissions in view user page

    Examples: 
      | Description | user        | Role      | Email             | Health System1 | Health System2 | Locations1    | Locations2    | ProgramsVisible1      | ProgramsVisible2 |
      |         20. | Super Admin | Remedy PM | test.automatemail | Butler Memorial Hospital | RWJ Barnabas Health, INC | all locations | all locations | BPCI-Model2, BPCI-CJR | BPCI-CJR      |

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
