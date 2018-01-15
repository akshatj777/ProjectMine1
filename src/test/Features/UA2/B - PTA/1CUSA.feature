Feature: Create User - Super Admin User

  Scenario Outline: <Description>
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    #Then I verify the header "General Information"
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I enter NPI field with "<NPI>" for role "<Role>"
    Then I click on Next button
    #Then I verify the header "Applications"
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    #Then I verify the header "Permissions"
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    Given I am on the login page

    Examples: 
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role                            | Applications                                                       | ApplicationsNotVisible            | NPI | LearningPathwaySearchParameter | Health System     |
      #| Login with Super Admin User and create user with Executive role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                    | Administration, Physician Connect |     | Learning Pathway 2             | Stamford Hospital |
      | Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Physician Connect, Administration, Lessons |                                   |     | Learning Pathway 2             | Stamford Hospital |
