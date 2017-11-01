Feature: CreateUser-Role&Application

Scenario Outline: Verify list of applications are enabled/disabled for role <Role> and Super User
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
  And I enter Email "test.automatemail" to Create user
  When I click the Organizational Role Field
  Then I pick a Organizational <Role>
  Then I click on Next button
  Then I verify applications "<Applications>" are unchecked
  Then I select "<Applications>" product
  Then I verify applications "<Applications>" are checked
    Then I select "<Applications>" product
  Then I verify applications "<Applications>" are unchecked
  
  Examples:
  | Role                            | Applications                                                                                             |
  | Executive                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File                                    |
  | Manager                         | Episodes, Episodes 2.0, Reports, Lessons,Share File                                                      |
  | Case Manager                    | Episodes, Episodes 2.0 , Reports, Lessons,Share File                                                     |
  #| Physicians                      | Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                                   |
  | Remedy TCS                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Remedy LPN                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy RN                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy Field RN                 | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy PM                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy Sales Team               | Internal support, Reports, Lessons,Share File, TCI                                                       |
  | Remedy Executive                | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Prospective Partner Executive   | Lessons                                                                                                  |
  | Remedy Other                    | Internal support, Episodes, Episodes 2.0, Lessons, TCI                                                   |
  | Partner Program Administrator   | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                 |
  | Remedy Program Administrator    | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, TCI            |
  | Partner Technical Administrator | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, Administration |
  | Transitional Case Manager       | Episodes, Reports, Lessons                                                                               |
  | Downstream Provider             | Episodes 2.0                                                                                             |
  
  Scenario Outline: Verify list of applications are enabled/disabled for role <Role> and PTA User
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
  And I enter Email "test.automatemail" to Create user
  When I click the Organizational Role Field
  Then I pick a Organizational <Role>
  Then I click on Next button
  Then I verify applications "<Applications>" are unchecked
  Then I select "<Applications>" product
  Then I verify applications "<Applications>" are checked
  Then I select "<Applications>" product
  Then I verify applications "<Applications>" are unchecked
  
  Examples:
  | Role                            | Applications                                                                                             |
  | Executive                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File                                    |
  | Manager                         | Episodes, Episodes 2.0, Reports, Lessons,Share File                                                      |
  | Case Manager                    | Episodes, Episodes 2.0 , Reports, Lessons,Share File                                                     |
  | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                                   |
  | Prospective Partner Executive   | Lessons                                                                                                  |
  | Partner Technical Administrator | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, Administration |
  | Transitional Case Manager       | Episodes, Reports, Lessons                                                                               |
  
  
  Scenario Outline: Verify list of applications for role <Role> and Super Admin Role
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
  And I enter Email "test.automatemail" to Create user
  When I click the Organizational Role Field
  Then I pick a Organizational <Role>
  Then I click on Next button
  Then I verify the list of applications "<Applications>"
  
  Examples:
  | Role                            | Applications                                                                                             |
  | Executive                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File                                    |
  | Manager                         | Episodes, Episodes 2.0, Reports, Lessons,Share File                                                      |
  | Case Manager                    | Episodes, Episodes 2.0 , Reports, Lessons,Share File                                                     |
  #| Physicians                      | Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                                   |
  | Remedy TCS                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Remedy LPN                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy RN                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy Field RN                 | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy PM                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Remedy Sales Team               | Internal support, Reports, Lessons,Share File, TCI                                                       |
  | Remedy Executive                | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  | Prospective Partner Executive   | Lessons                                                                                                  |
  | Remedy Other                    | Internal support, Episodes, Episodes 2.0, Lessons, TCI                                                   |
  | Partner Program Administrator   | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                 |
  | Remedy Program Administrator    | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, TCI            |
  | Partner Technical Administrator | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, Administration |
  | Transitional Case Manager       | Episodes, Reports, Lessons                                                                               |
  | Downstream Provider             | Episodes 2.0                                                                                             |
  
  
  Scenario Outline: Verify list of applications for role <Role> and PTA User
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
  And I enter Email "test.automatemail" to Create user
  When I click the Organizational Role Field
  Then I pick a Organizational <Role>
  Then I click on Next button
  Then I verify the list of applications "<Applications>"
  
  Examples:
  | Role                            | Applications                                                                                             |
  | Executive                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File                                    |
  | Manager                         | Episodes, Episodes 2.0, Reports, Lessons,Share File                                                      |
  | Case Manager                    | Episodes, Episodes 2.0 , Reports, Lessons,Share File                                                     |
  | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                                   |
  | Prospective Partner Executive   | Lessons                                                                                                  |
  | Partner Technical Administrator | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, Administration |
  | Transitional Case Manager       | Episodes, Reports, Lessons                                                                               |
  
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

    Scenario: Verify validation message for invalid lesson name in search box
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
    Then I enter "<LearningPathwayName>" in Learning Pathway search box