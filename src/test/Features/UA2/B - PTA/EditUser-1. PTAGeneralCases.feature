Feature: Edit user page for General cases

  Scenario Outline: Verifying editable/non-editable fields of general, validating Applications tab and searching invalid learning pathway
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "Manager" in search box for "<user>-<PreviousRole>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I verify the availability of fields "First Name"
    Then I verify the availability of fields "Last Name"
    Then I verify the availability of fields "Email"
    And I should not be able to edit Email
    Then I verify the availability of fields "Phone"
    Then I verify the availability of fields "Role"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    When I click the Organizational Role Field to edit
    Then I verify that provisioned roles of PTA are present on edit page
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify that "Next" button is disabled when no application is selected
    Then I select "<EnableApplications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    And I verify No results found under Learning Pathway search box

    Examples: 
      | UserName          | User                            | PreviousRole | Role       | FirstName       | LastName       | Email             | Phone        | NPI | EnableApplications | Applications                                                | LearningPathwaySearchParameter |  |
      | chloe@yopmail.com | Partner Technical Administrator | Manager      | Physicians | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI | Physician Connect  | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect | rty                            |  |

  Scenario Outline: Edit General Information tab with invalid data and verify Error message
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "Physicians" in search box for "<user>-<Role>"
    Then I select user with email "test.automatemail"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I fill in Phone with <Phone>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    When I click the Organizational Role Field to edit
    And I should see error message "First Name is required"
    And I should see error message "Last Name is required"
    And I should see error message "NPI is required"
    And I should see error message "Phone is required"

    Examples: 
      | User                            | UserName          | Password | FirstName | LastName | Email             | Phone      | NPI       | Role       |
      | Partner Technical Administrator | chloe@yopmail.com | Testing1 |         1 |        2 | test.automatemail | abc3479074 | 123456789 | Physicians |

  # | Partner Technical Administrator | chloe@yopmail.com | Testing1 |        56 | 1Last    | test.automatemail | as34       | asbcf12345 | Physicians |
  #| Partner Technical Administrator | Partner Technical Administrator | Testing1 | 1First    |      456 | test.automatemail | as34!      | qawsedrftg | Physicians |
  Scenario Outline: verify enable/disable application functionality for <Role>
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Role>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    And I select "Applications" tab
    Then I unselect "<DisableApplications>" product
    Then I click on Next button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify that "<DisableApplications>" are "Disabled"
    And I click on Edit button
    And I select "Applications" tab
    Then I select "<DisableApplications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I verify that "<LearningPathwayID>" is not shown in edit page
    Then I click on Next button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"

    Examples: 
      | UserName                        | user                            | Email             | Role      | DisableApplications | Applications                             | LearningPathwayID | LearningPathwaySearchParameter | Health System     | NPI |
      | Partner Technical Administrator | Partner Technical Administrator | test.automatemail | Executive | Lessons, Episodes   | Reports, Lessons, Episodes, Episodes 2.0 | NFdw0Kts2C01      | NFdw0Kts2C01                   | Stamford Hospital |     |

  Scenario Outline: Changing Role from <PreviousRole> to <Role> and hitting Cancel button
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
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
    Then I click on Close icon
    And I verify Role <PreviousRole> in user page

    Examples: 
      | User                            | UserName                        | Password | Email             | NPI | PreviousRole | Role    | EnableApplications | Health System     | LearningPathwaySearchParameter |
      | Partner Technical Administrator | Partner Technical Administrator | Testing1 | test.automatemail |     | Executive    | Manager | TCI          | Stamford Hospital | Learning Pathway 2             |

  Scenario Outline: Changing Role from Physicians to <Role> then back to Physicians and verify, product list in Applications tab and search location by facility id
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
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
    And I select "Applications" tab
    Then I verify the header "Applications"
    Then I verify that "Less" products are shown in Applications tab as compared to "<PreviousRoleProductCount>"
    Then I select "<EnableApplications1>" product
    Then I click on Next button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify Role <Role> in user page
    And I verify that "NPI" is "not present" on page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <PreviousRole>
    Then I enter NPI field with "<NPI_previousRole>" for role "<PreviousRole>"
    Then I click on Next button
    Then I verify that "More" products are shown in Applications tab as compared to "<RoleProductCount>"
    Then I select "<EnableApplications2>" product
    Then I click on Next button
    Then I click on delete organisation icon
    Then I should see an alert with text "Are you sure you want to remove"
    And I should see "Cancel" button
    Then I click on "Remove" button on permissions tab
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I select "<Programs>" programs
    Then I select location by "<facilityKey>"
    Then I select "<Locations>" locations
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify Role <PreviousRole> in user page
    And I verify that "NPI" is "present" on page

    Examples: 
      | User                            | UserName                        | Password | Email             | NPI_previousRole | PreviousRole | PreviousRoleProductCount | NPI | Role    | RoleProductCount | EnableApplications1 | EnableApplications2 | Applications                                                | Health System | LearningPathwaySearchParameter | Programs                 | facilityKey | Locations                                                                                                 |
      | Partner Technical Administrator | Partner Technical Administrator | Testing1 | test.automatemail | NPI              | Physicians   |                        5 |     | Manager |                3 |                     | Physician Connect   | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect | TeamHealth    | Learning Pathway 2             | BPCI-Model2, BPCI-Model3 |      100029 | 2070-g14--North Shore Med Center, 3056-q91--Rhea Medical Center, 3056-q91--The Medical Center At Franklin |

  Scenario Outline: Validate error message for Invalid characters in permissions tab and Edit multiple to single programs
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
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
    Then I deselect "<RemoveLocations>" locations
    Then I enter characters "<locations_invalid>" in location search
    Then I should see text "No Results found"
    Then I click on "Add Another Organization" button on permissions tab
    And I search for health system with <Health System_invalid>
    And I wait for 3000 milli seconds
    Then I should see text "No Results found"
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | UserName                        | User                            | Role       | Email             | Health System_invalid | locations_invalid | RemovePrograms | RemoveLocations                                                         |
      | Partner Technical Administrator | Partner Technical Administrator | Physicians | test.automatemail | abc                   | abc               | BPCI-Model2    | 3056-q91--Rhea Medical Center, 3056-q91--The Medical Center At Franklin |

  Scenario Outline: Remove existing Program and select another Program in permissions tab and verify facility Key in data permissions
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
    Then I click Access button
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
    Then I select "<Programs>" programs
    Then I search location by "<BPID>" and select "<Locations>"
    Then I should see "<facilityKey>" for locations under data permissions
    Then I click on Submit button
    And I wait for 5000 milli seconds
   
    
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | UserName                        | User                            | Role       | Email             | RemovePrograms | Programs                 | BPID               | Locations                                                                      | facilityKey    |
      | Partner Technical Administrator | Partner Technical Administrator | Physicians | test.automatemail | BPCI-Model3    | BPCI-Model2, BPCI-Model3 | 2070-g14, 2070-g14 | Baptist Medical Center  Beaches (100117), Plantation General Hospital (100167) | 100117, 100167 |
