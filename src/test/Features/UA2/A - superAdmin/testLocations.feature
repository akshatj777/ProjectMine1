Feature: Create User - Super Admin User

  Scenario Outline: <Description>
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    And I enter Phone field with <Phone>
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Programs1>" programs
    Then I select "<Locations1>" locations
    And I verify selected Location  "<Locations1>" in the selected Locations section
    Then I search the "<Locations1>" in the Selected Locations section
    And I click on remove link icon for selected Locations on selected Locations section
    And I verify Selected Locations section after click on remove link icon

    Examples: 
      | Description                                                     | User        | UserName                               | Password | FirstName                                          | LastName                                           | Email             | Phone | Role      | Applications               | ApplicationsNotVisible                               | NPI | LearningPathwaySearchParameter         | Health System1    | Programs1   | Locations1                  | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Executive role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstNameFirstNameFirstNameFirstNameFirstNameFirst | LastNameLastNameLastNameLastNameLastNameLastNameLN | test.automatemail |       | Executive | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI |     | i am learning path, Learning Pathway 2 | Stamford Hospital | BPCI-Model2 | 2070-015--Stamford Hospital | No               |                |           |            | No               |                |           |            |

  Scenario Outline: <Description>
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    And I enter Phone field with <Phone>
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    Then I verify the header "Applications"
    Then I verify applications "<Applications>" are unchecked
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I verify applications "<Applications>" are checked
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I verify "<ApplicationsNotVisible>" is not visible on Applications tab
    Then I click on Next button
    Then I verify the header "Permissions"
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Programs1>" programs
    And I click on remove link icon for selected Health system
    And I verify text on pop up window after click on remove link icon
    And I click "Cancel" link on pop up window
    And I verify text on pop up window after click on remove link icon
    And I click "Remove" button on pop up window
    Then I verify the header "Permissions"

    Examples: 
      | Description                                                        | User        | UserName                               | Password | FirstName | LastName | Email             | Phone      | Role         | Applications               | ApplicationsNotVisible                               | NPI | LearningPathwaySearchParameter                                             | Health System1                                                         | Programs1   | Locations1                                                   | HasHealthSystem2 | Health System2 | Programs2 | Locations2 | HasHealthSystem3 | Health System3 | Programs3 | Locations3 |
      | Login with Super Admin User and create user with Case Manager role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail | 9988776655 | Case Manager | Episodes, Reports, Lessons | Episodes 2.0, Administration, Physician Connect, TCI |     | i am learning path, Learning Pathway 2, max-test-052417, New learning Path | St. Lukes Health Network, Inc. DBA St. Lukes University Health Network | BPCI-Model2 | 2070-023--Allentown, 2070-023--Bethlehem, 2070-025--Anderson | No               |                |           |            | No               |                |           |            |
