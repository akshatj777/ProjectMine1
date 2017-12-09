Feature: CreateUser-Role&Application


  Scenario: Verify availability and non availability of Lessons search box
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    And I wait for 10000 milli seconds
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I verify Learning Pathway search box is available
    
    Scenario Outline: Select multiple learning pathways and create user
    Given I am on the login page
    When I enter email field rkapur+devFirst2@remedypartners.com for login
  	And I enter password field abcABC1! for Login
  	Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    And I wait for 10000 milli seconds
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "<Email>" to Create user
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwayName>" in Learning Pathway search box
    Then I select "<LearningPathwayName>" from the results
    Then I clear the Learning Pathway search box
    Then I enter "<LearningPathwayID>" in Learning Pathway search box
    Then I select "<LearningPathwayID>" from the results
    Then I click on Next button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button
    
    Examples: 
      | Scenario Description                     | FirstName | LastName | Email             | Phone | Role      | Applications                                                          | NPI | LearningPathwayName        | LearningPathwayID | Health System     |
      | Create user with multiple Learning Paths | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Care Coordinators External | a5H9TQNahzI1      | Stamford Hospital |

    