Feature: Edit user page for General cases

  Scenario Outline: Verifying editable/non-editable fields of general tab and validating Applications tab
    Given I am on the login page
    When I log in as super user
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
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify that "Next" button is disabled when no application is selected
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I should see "No Results found" for Learning Pathway

    Examples: 
      | User        | PreviousRole | Role       | FirstName       | LastName       | Email             | Phone        | NPI | Applications                                                | LearningPathwaySearchParameter |
      | Super Admin | Manager      | Physicians | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect | rty                            |

  Scenario Outline: Edit General Information tab with invalid data and verify Error message
    Given I am on the login page
    When I log in as super user
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
      | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | NPI        | Role       |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 |         1 |        2 | test.automatemail |   abc3479074 |  123456789 | Physicians |
      #| Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 |        56 | 1Last    | test.automatemail | as34 | asbcf12345 | Physicians |
     # | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | 1First    |      456 | test.automatemail | as34! | qawsedrftg | Physicians |

  Scenario Outline: verify enable/disable application functionality for <Role>
    Given I am on the login page
    When I log in as super user
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
    Then I click on Next button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"

    Examples: 
      | user        | Email             | Role                           | DisableApplications                             | Applications                                                                     | LearningPathwaySearchParameter | Health System     | NPI |
      | Super Admin | test.automatemail | Executive                      | Lessons, Episodes                               | Reports, Lessons, Episodes, Episodes 2.0                                         | NFdw0Kts2C01                   | Stamford Hospital |     |
      | Super Admin | test.automatemail | Remedy Technical Administrator | Physician Connect, Lessons, TCI, Administration | Reports, Lessons, Episodes, Episodes 2.0, Physician Connect, TCI, Administration | Learning Pathway 2             | Stamford Hospital |     |

  Scenario Outline: Changing Role from <PreviousRole> to <Role> and hitting Cancel button
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
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Close icon
    And I verify Role <PreviousRole> in user page

    Examples: 
      | User        | UserName                               | Password | Email             | NPI | PreviousRole | Role       | Applications                             | Health System     | LearningPathwaySearchParameter |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | test.automatemail |     | Executive    | Remedy TCS | Episodes, Episodes 2.0, Reports, Lessons | Stamford Hospital | Learning Pathway 2             |

  Scenario Outline: Changing Role from Physicians to <Role> then back to Physicians and verifying NPI
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
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify Role <Role> in user page
    And I verify that "NPI" is "not present" on page
    And I click on Edit button
    When I click the Organizational Role Field to edit
    Then I pick a Organizational <PreviousRole>
    Then I enter NPI field with "<NPI>" for role "<PreviousRole>"
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    And I verify Role <PreviousRole> in user page
    And I verify that "NPI" is "present" on page

    Examples: 
      | User        | UserName                               | Password | Email             | NPI | PreviousRole | Role       | Applications                             | Health System     | LearningPathwaySearchParameter |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | test.automatemail | NPI | Physicians   | Remedy TCS | Episodes, Episodes 2.0, Reports, Lessons | Stamford Hospital | Learning Pathway 2             |
