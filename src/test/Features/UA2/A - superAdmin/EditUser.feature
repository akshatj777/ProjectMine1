Feature: Edit user page for SA

  Scenario Outline: Verifying editable/non-editable fields of general information tab and editing them
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the header "General Information"
    Then I verify the availability of fields "First Name"
    And I fill in First Name with "<FirstName>"
    Then I verify the availability of fields "Last Name"
    Then I fill in Last Name with <LastName>
    Then I verify the availability of fields "Email"
    And I should not be able to edit Email
    Then I verify the availability of fields "Phone"
    And I fill in Phone with <Phone>
    Then I verify the availability of fields "Role"
    Then I verify the availability of fields "NPI"
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I click on Next button
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify First Name <FirstName> in user page
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page

    Examples: 
      | User        | Role       | FirstName       | LastName       | Email             | Phone        | NPI |
      | Super Admin | Physicians | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI |

  Scenario Outline: Editing user role from <PreviousRole> to <Role>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
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
    Then I click on Next button
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify Role <Role> in user page
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<LearningPathwaySearchParameter>" are "Enabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole | Role                          | EnableApplications | Applications                                  | ApplicationsNotVisible | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID | Facilities        |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Manager      | Partner Program Administrator | Physician Connect  | Episodes, Reports, Physician Connect, Lessons | Administration         |                                | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Apple - Watertown |

  Scenario Outline: Changing the products and general details for <Role> and verifying product tile
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I select "Permissions" tab
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify Role <Role> in user page
    And I verify that "<DisableApplications>" are "Disabled"
    And I verify that "<Applications>" are "Enabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | Role         | FirstName       | LastName       | Email             | Phone        | DisableApplications | Applications               | ApplicationsNotVisible            | Roletext | ReportCategory | ReportName         | BPID |
      | Super Admin | Case Manager | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Reports             | Episodes                   | Administration, Physician Connect | ROLE_TCS | Patient ID     | Episode DRG Issues |      |
      | Super Admin | Remedy PM    | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Reports, Episodes   | Episodes 2.0, TCI, Lessons | Administration, Physician Connect | ROLE_PM  | Patient ID     | Episode DRG Issues |      |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
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
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify "<Health System1>::<Programs1>:<facilityKey>" under Data Permissions in view user page

    Examples: 
      | Description                          | user        | Role      | Email             | Health System1   | Programs1   | Locations1                                       |
      | Remove Existing org and add new org1 | Super Admin | Executive | test.automatemail | Sound Physicians | BPCI-Model2 | 6005-080--Winchester Medical Center - Rehab Unit |

  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
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
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify "<Health System>::<Programs>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description  | user        | Role              | Email             | Locations                        | Programs    | Health System |
      | Add new org2 | Super Admin | Remedy Sales Team | test.automatemail | 2070-g14--North Shore Med Center | BPCI-Model2 | TeamHealth    |

  Scenario Outline: Editing locations -<Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on "first" existing organisation
    Then I select "<Locations>" locations
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    Then I verify "<Health System>::<ProgramsVisible>:<Locations>" under Data Permissions in view user page

    Examples: 
      | Description                                                 | user        | Role      | Email             | Locations                                                                   | Health System |
      | 2. External User-Edit single location to multiple locations | Super Admin | Executive | test.automatemail | 6005-059--Presence Saint Joseph Medical Center, 6005-059--Evanston Hospital | HealthSystem1 |
      | 3. External User-Edit multiple locations to All Locations   | Super Admin | Executive | test.automatemail | all locations                                                               | HealthSystem1 |
      | 4. External User-Edit All locations to single location      | Super Admin | Executive | test.automatemail | 6005-080--Winchester Medical Center - Rehab Unit                            | HealthSystem1 |

  Scenario Outline: Edit programs- <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on "first" existing organisation
    Then I deselect "<RemovePrograms>" programs
    Then I select "<Programs>" programs for existing organisation
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
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

  Scenario Outline: Changing General information, Role from <PreviousRole> to <Role> and Data permissions
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on delete organisation icon
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify Phone <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole     | Role    | EnableApplications | Applications               | ApplicationsNotVisible            | Health System    | Programs    | Locations                          | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID | Facilities               |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Remedy Executive | Manager |                    | Episodes, Reports, Lessons | Administration, Physician Connect | Sound Physicians | BPCI-Model3 | 3056-b75--Warren Memorial Hospital |                                |          | Patient ID     | Episode DRG Issues [Model 3] |      | Warren Memorial Hospital |
