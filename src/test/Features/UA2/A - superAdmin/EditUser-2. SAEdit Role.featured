Feature: Edit General information/Role/Permissions and validate

  Scenario Outline: Changing the applications and Data permissions for <Role> and verifying product tile
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
    Then I select "<EnableApplications>" product
    Then I click on Next button
    Then I click on delete organisation icon
    Then I should see an alert with text "Are you sure you want to remove"
    And I should see "Cancel" button
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<DisableApplications>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    
    Examples: 
      | User        | Role         | Email             | DisableApplications | EnableApplications | Applications      | ApplicationsNotVisible            | Health System    | Programs    | Locations                                        | Roletext | ReportCategory | ReportName         | BPID | Facilities                             |
      | Super Admin | Case Manager | test.automatemail | Lessons, Reports    | Reports            | Episodes, Reports | Physician Connect, Administration | Sound Physicians | BPCI-Model2 | 6005-080--Winchester Medical Center - Rehab Unit | ROLE_TCS | Patient ID     | Episode DRG Issues |      | Winchester Medical Center - Rehab Unit |

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
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    Then I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I select "Permissions" tab
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify First Name <FirstName> in user page
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify Role <Role> in user page
    And I verify that "<DisableApplications>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    

    Examples: 
      | User        | Role                         | FirstName       | LastName       | Email             | Phone        | DisableApplications | Applications                                  | ApplicationsNotVisible            | Roletext | ReportCategory | ReportName                   | BPID |
      | Super Admin | Case Manager                 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Reports             | Episodes                                      | Administration, Physician Connect | ROLE_TCS | Patient ID     | Episode DRG Issues           |      |
      | Super Admin | Remedy RN                    | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |                     | Episodes, Reports, TCI                        | Administration, Physician Connect | ROLE_RN  | Patient ID     | Episode DRG Issues [Model 3] |      |
      | Super Admin | Remedy PM                    | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Reports, Episodes   | Episodes 2.0, TCI, Lessons                    | Administration, Physician Connect | ROLE_PM  | Patient ID     | Episode DRG Issues           |      |
      | Super Admin | Remedy Program Administrator | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Episodes 2.0, TCI   | Episodes, Reports, Physician Connect, Lessons | Administration                    | ROLE_PRM | Patient ID     | Episode DRG Issues           |      |

  Scenario Outline: Changing the permissions and general details for <Role> and verifying product tile
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    Then I select "Permissions" tab
    Then I click on delete organisation icon
    And I click on "Remove" button on permissions tab
    #Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify First Name <FirstName> in user page
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify Role <Role> in user page

    Examples: 
      | User        | Role                          | FirstName       | LastName       | Email             | Phone        | Applications | Health System            | Programs              | Locations                                                           |
      | Super Admin | Prospective Partner Executive | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | Lessons      | Butler Memorial Hospital | BPCI-Model2, BPCI-CJR | 2070-a55--Butler Memorial Hospital, CJR-1--Butler Memorial Hospital |

  Scenario Outline: Changing General details and Role from <PreviousRole> to <Role>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in First Name with "<FirstName>"
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
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify First Name <FirstName> in user page
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify Role <Role> in user page
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    And I verify that "<LearningPathwaySearchParameter>" are "Enabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    
    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole | Role                          | EnableApplications | Applications                                  | ApplicationsNotVisible | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID | Facilities        |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Manager      | Partner Program Administrator | Physician Connect  | Episodes, Reports, Physician Connect, Lessons | Administration         |                                | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Apple - Watertown |

  Scenario Outline: Changing Role from <PreviousRole> to <Role> and Data permissions
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
    Then I click on delete organisation icon
    And I click on "Remove" button on permissions tab
    #Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    

    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole | Role    | EnableApplications | Applications               | ApplicationsNotVisible            | Health System | Programs    | Locations                   | LearningPathwaySearchParameter | Roletext | ReportCategory | ReportName                   | BPID | Facilities        |  |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Physicians   | Manager |                    | Episodes, Reports, Lessons | Administration, Physician Connect | Apple Rehab   | BPCI-Model3 | 3056-i11--Apple - Watertown |                                | ROLE_PRM | Patient ID     | Episode DRG Issues [Model 3] |      | Apple - Watertown |  |

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
    And I fill in First Name with "<FirstName>"
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
    #Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
   
    Examples: 
      | User        | UserName                               | Password | FirstName       | LastName       | Email             | Phone        | NPI | PreviousRole      | Role              | EnableApplications          | Applications                                  | ApplicationsNotVisible            | Health System    | Programs                 | Locations                                                                                                 | LearningPathwaySearchParameter | Roletext       | ReportCategory | ReportName         | BPID | Facilities                                                                  |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI | Remedy Sales Team | Physicians        | Episodes, Physician Connect | Episodes, Reports, Physician Connect, Lessons | Administration                    | TeamHealth       | BPCI-Model2, BPCI-Model3 | 2070-g14--North Shore Med Center, 3056-q91--Rhea Medical Center, 3056-q91--The Medical Center At Franklin |                                | ROLE_CLINICIAN | Patient ID     | Episode DRG Issues |      | North Shore Med Center, Rhea Medical Center, The Medical Center At Franklin |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 |     | Remedy Executive  | Remedy Sales Team |                             | Reports, TCI, Lessons                         | Administration, Physician Connect | Sound Physicians | BPCI-Model2              | 6005-059--Presence Saint Joseph Medical Center                                                            |                                |                | Patient ID     | Episode DRG Issues |      | Presence Saint Joseph Medical Center                                        |
