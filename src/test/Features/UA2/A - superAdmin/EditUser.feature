Feature: Edit user page for SA

  Scenario Outline: Verifying editable/non-editable fields of general information tab and editing them
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
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
    Then I verify first name "<FirstName>"
    Then I verify last name "<LastName>"
    Then I verify phone "<Phone>"
    Then I verify NPI "<NPI>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | Role       | FirstName       | LastName       | Email             | Phone        | NPI |
      | Super Admin | Physicians | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI |

  Scenario Outline: Editing user role from <PreviousRole> to <Role>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<PreviousRole>" in search box for "<user>-<PreviousRole>"
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
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify role "<Role>"
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<DisableApplications>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole | Role                          | EnableApplications | Applications                                  | ApplicationsNotVisible | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Manager      | Partner Program Administrator | Physician Connect  | Episodes, Reports, Physician Connect, Lessons | Administration         |                                | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      |

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
    Then I verify health system "<Health System>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                          | user        | Role      | Email             | Health System    | Programs    | Locations                                        | Facilities                             |
      | Remove Existing org and add new org1 | Super Admin | Executive | test.automatemail | Sound Physicians | BPCI-Model2 | 6005-080--Winchester Medical Center - Rehab Unit | Winchester Medical Center - Rehab Unit |

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
    Then I verify health system "<Health System>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description  | user        | Role                          | Email             | Locations                        | Programs    | Health System | Facilities             |
      | Add new org2 | Super Admin | Partner Program Administrator | test.automatemail | 2070-g14--North Shore Med Center | BPCI-Model2 | TeamHealth    | North Shore Med Center |

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
    Then I verify health system "<Health System>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                                 | user        | Role      | Email             | Locations                                                                   | Health System    | Facilities                                              |
      | 2. External User-Edit single location to multiple locations | Super Admin | Executive | test.automatemail | 6005-059--Presence Saint Joseph Medical Center, 6005-059--Evanston Hospital | Sound Physicians | Presence Saint Joseph Medical Center, Evanston Hospital |
      | 3. External User-Edit multiple locations to All Locations   | Super Admin | Executive | test.automatemail | all locations                                                               | Sound Physicians |                                                         |
      | 4. External User-Edit All locations to single location      | Super Admin | Executive | test.automatemail | 6005-080--Winchester Medical Center - Rehab Unit                            | Sound Physicians | Winchester Medical Center - Rehab Unit                  |

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
    Then I verify health system "<Health System>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                                                   | user        | Role       | Email             | Locations                                        | RemovePrograms | Programs    | Health System    | ProgramsVisible | Facilities                             |
      | 5. External user-Edit user from Model-2 to Model-3 and select single location | Super Admin | Executive  | test.automatemail | 3056-b75--Warren Memorial Hospital               | BPCI-Model2    | BPCI-Model3 | Sound Physicians | BPCI-Model3     | Warren Memorial Hospital               |
      | 8. External user-Edit user from Model-3 to Model-2 and select single location | Super Admin | Executive  | test.automatemail | 6005-080--Winchester Medical Center - Rehab Unit | BPCI-Model3    | BPCI-Model2 | Sound Physicians | BPCI-Model2     | Winchester Medical Center - Rehab Unit |
      | 11.External user-Edit user from multiple programs to single program           | Super Admin | Physicians | test.automatemail |                                                  | BPCI-Model3    |             | TeamHealth       | BPCI-Model2     | North Shore Med Center                 |

  Scenario Outline: Changing General information, Role from <PreviousRole> to <Role> and Remove existing org and add new org
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
    Then I verify health system "<Health System>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole | Role    | EnableApplications | Applications               | ApplicationsNotVisible            | Health System    | Programs    | Locations                          | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID | Facilities               |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Case Manager | Manager | Reports            | Episodes, Reports, Lessons | Administration, Physician Connect | Sound Physicians | BPCI-Model3 | 3056-b75--Warren Memorial Hospital |                                | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Warren Memorial Hospital |

  Scenario Outline: Changing General information, Role from <PreviousRole> to <Role> and edit Data permissions
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
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I unselect "<RemoveApplications>" product
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click on "first" existing organisation
    Then I deselect "<RemovePrograms>" programs
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    Then I verify health system "<Health System>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole              | Role              | EnableApplications | RemoveApplications | Applications | ApplicationsNotVisible            | Health System                      | RemovePrograms           | Programs    | Locations                                                    | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName         | BPID | Facilities                                |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Transitional Case Manager | Remedy Sales Team | TCI                | Reports            | TCI, Lessons | Administration, Physician Connect | United Health Services of New York | BPCI-Model3, BPCI-Model2 | BPCI-Model2 | 6005-197--United Health Services, 6005-200--Cape Cod Hospita |                                |          | Patient ID     | Episode DRG Issues |      | United Health Services, Cape Cod Hospital |

  Scenario Outline: Remove phone, Role from <PreviousRole> to <Role> and add new org
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click Add Organization button for "<HasHealthSystem2>" flag
    And I search for health system with <Health System2>
    And I wait for 3000 milli seconds
    And I select a <Health System2>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify Phone <Phone> in user page
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    Then I verify health system "<Health System2>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System2>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | user        | PreviousRole      | Role       | Phone | NPI | EnableApplications          | Applications                                  | Email             | HasHealthSystem2 | Health System2 | Programs    | Locations                        | Roletext       | ReportCategory | ReportName         | BPID | Facilities             |
      | Super Admin | Remedy Sales Team | Physicians |       | NPI | Physician Connect, Episodes | Episodes, Reports, Physician Connect, Lessons | test.automatemail | Yes              | TeamHealth     | BPCI-Model2 | 2070-g14--North Shore Med Center | ROLE_CLINICIAN | Patient ID     | Episode DRG Issues |      | North Shore Med Center |

  Scenario Outline: Edit phone, Role from <PreviousRole> to <Role> and Remove Existing Location and Add new Location
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click on existing organisation "<Health System>"
    Then I select "<DisableLocations>" locations
    Then I select "<EnableLocations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify Phone <Phone> in user page
    And I verify that "<Applications>" are "Enabled"
    Then I verify health system "<Health System>"
    Then I verify programs "<Programs>"
    Then I verify location "<Locations>" for health system "<Health System>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | user        | PreviousRole | Role                           | NPI | EnableApplications                                   | Applications                                                                     | Email             | Health System                                        | Programs                 | DisableLocations                                                                         | EnableLocations                    | Locations                                                                                                                                                                                                                                | Roletext   | ReportCategory | ReportName         | BPID | Facilities                                                                                                                                                                   |
      | Super Admin | Remedy PM    | Remedy Technical Administrator |     | Physician Connect, Administration, Episodes, Reports | Episodes, Episodes 2.0, Reports, Physician Connect, Administration, TCI, Lessons | test.automatemail | Cardiovascular Associates of The Delaware Valley,p A | BPCI-Model2, BPCI-Model3 | 2070-060--Carolinas Hospital System - Florence, 3056-a08--Howard County General Hospital | 2070-060--Florida Hospital Orlando | 2070-060--Florida Hospital Orlando, 3056-a08--East Orange General Hospital, 3056-a08--Meritus Medical Center, 3056-a08--North Shore University Hospital, 3056-a08--St. Michael's Medical Center, 3056-a08--Saint Barnabas Medical Center | ROLE_ADMIN | Patient ID     | Episode DRG Issues |      | Florida Hospital Orlando, East Orange General Hospital, Meritus Medical Center, North Shore University Hospital, St. Michael's Medical Center, Saint Barnabas Medical Center |
