Feature: Edit page for superuser verification

  Scenario Outline: Verifying fields of general tab, editing them and providing invalid Learning Pathway
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
    And I cleared the textbox under edit user "First Name"
    And I fill in First Name with "<FirstName>"
    And I cleared the textbox under edit user "Last Name"
    Then I fill in Last Name with <LastName>
    And I cleared the textbox under edit user "Phone"
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
    Then I click on Next button
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify First Name <FirstName> in user page
    And I verify Last Name <LastName> in user page
    And I verify Phone <Phone> in user page
    And I verify Role <Role> in user page

    Examples: 
      | User        | PreviousRole | Role       | FirstName       | LastName       | Email             | Phone        | NPI | Applications               | LearningPathwaySearchParameter |
      | Super Admin | Manager      | Physicians | FirstNameEdited | LastNameEdited | test.automatemail | 996-385-2451 | NPI | Episodes, Reports, Lessons | rty                            |

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
    #And I cleared the textbox under edit user "First Name"
    And I fill in First Name with "<FirstName>"
    #And I cleared the textbox under edit user "Last Name"
    Then I fill in Last Name with <LastName>
    And I cleared the textbox under edit user "Phone"
    And I fill in Phone with <Phone>
    #And I cleared the textbox under edit user "NPI"
    Then I enter NPI field with "<NPI>" for role "<Role>"
    When I click the Organizational Role Field to edit
    And I should see error message "First Name is required"
    And I should see error message "Last Name is required"
    And I should see error message "Phone is required"
    And I should see error message "NPI is required"

    Examples: 
      | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | NPI       | Role       |
      | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 |           |          | test.automatemail | as34! | 123456789 | Physicians |

  #| Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 |           |          | test.automatemail | as34! | asbcf12345 | Physicians |
  #| Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 |           |          | test.automatemail | as34! | qawsedrftg | Physicians |
  Scenario Outline: <Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Email>" in search box for "<user>-<Role>"
    Then I select user with email ""
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
    Then I unselect "<DisableApplications>" product
    Then I click on Next button
    Then I click on delete organisation icon
    And I click on "Remove" button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    And I wait for 3000 milli seconds
    And I verify that "<Applications>" are "Enabled"
    And I verify that "<ApplicationsNotVisible>" are "Disabled"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget

    Examples: 
      | Description                                                                                                | user        | Email             | Role                            | EnableApplications                                                               | DisableApplications                                      | Applications                                | ApplicationsNotVisible                                   | LearningPathwaySearchParameter | Health System     | NPI |
      | Edit user to Executive role to verify enable/disable user applications functionality                       | Super Admin | test.automatemail | Executive                       | Reports, Lessons, Episodes                                                       | Lessons, Episodes                                        | Reports                                     | Episodes 2.0, Episodes, Lessons                          | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Manager role to verify enable/disable user applications functionality                         | Super Admin | test.automatemail | Manager                         | Reports, Lessons, Episodes, Episodes 2.0                                         | Episodes 2.0, Episodes                                   | Reports, Lessons                            | Episodes, Episodes 2.0                                   | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Physicians role to verify enable/disable user applications functionality                      | Super Admin | test.automatemail | Physicians                      | Physician Connect, Episodes 2.0, Episodes, Lessons                               | Physician Connect, Episodes 2.0                          | Episodes, Lessons                           | Reports, Physician Connect, Episodes 2.0                 | Learning Pathway 2             | Stamford Hospital | NPI |
      | Edit user to Remedy TCS role to verify enable/disable user applications functionality                      | Super Admin | test.automatemail | Remedy TCS                      | TCI, Episodes 2.0, Lessons                                                       | TCI                                                      | Episodes 2.0, Lessons                       | Reports, Episodes, TCI                                   | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Remedy Program Administrator role to verify enable/disable user applications functionality    | Super Admin | test.automatemail | Remedy Program Administrator    | Physician Connect, Episodes 2.0, Episodes, Lessons, TCI                          | Episodes 2.0, Lessons                                    | Physician Connect, Episodes, TCI            | Reports, Episodes 2.0, Lessons                           | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Partner Technical Administrator role to verify enable/disable user applications functionality | Super Admin | test.automatemail | Partner Technical Administrator | Physician Connect, Episodes 2.0, Episodes, Lessons, Administration               | Episodes 2.0, Lessons                                    | Physician Connect, Episodes, Administration | Reports, Episodes 2.0, Lessons                           | Learning Pathway 2             | Stamford Hospital |     |
      | Edit user to Remedy Technical Administrator role to verify enable/disable user applications functionality  | Super Admin | test.automatemail | Remedy Technical Administrator  | Physician Connect, Episodes 2.0, Episodes, Lessons, Administration, TCI, Reports | Physician Connect, Administration, Episodes 2.0, Lessons | Episodes, TCI, Reports                      | Physician Connect, Administration, Episodes 2.0, Lessons | Learning Pathway 2             | Stamford Hospital |     |
