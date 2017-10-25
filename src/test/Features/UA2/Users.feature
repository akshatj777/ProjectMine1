Feature: UA2 Front End Automation

  
  Background: Login with predefined user on Gmail account and delete the previous mail
  Given I am on mail login page
  Then I enter username "test.automatemail" to login mail account
  Then I enter password "Intel@01" to login mail account
  Then I click on Mail icon in my account
  Then I click on Inbox in mail
  Then I click on select all checkbox in mail
  Then I click on delete icon in mail
  Then I signout form mail account
  
  Scenario Outline: Create USER (<Scenario Description>)
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field <Password> for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I verify Learning Pathway search box is not available
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Select button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button

    Examples: 
      | Scenario Description             | UserName                               | Password | FirstName | LastName | Email             | Phone | Role                            | Applications                                                                                             | NPI        | LearningPathwaySearchParameter | Health System     |
      | Create user without phone number | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Executive                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File                                    |            | Care Coordinators External     | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Manager                         | Episodes, Episodes 2.0, Reports, Lessons,Share File                                                      | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Case Manager                    | Episodes, Episodes 2.0 , Reports, Lessons,Share File                                                     | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                                   | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy TCS                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy LPN                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy RN                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Field RN                 | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy PM                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Sales Team               | Internal support, Reports, Lessons,Share File, TCI                                                       | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Executive                | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Prospective Partner Executive   | Lessons                                                                                                  | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Other                    | Internal support, Episodes, Episodes 2.0, Lessons, TCI                                                   | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Program Administrator   | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                 | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Program Administrator    | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, TCI            | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Partner Technical Administrator | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, Administration | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Transitional Case Manager       | Episodes, Reports, Lessons                                                                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | Create user with valid NPI       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Downstream Provider             | Episodes 2.0                                                                                             | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | PTA User                         | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail |       | Prospective Partner Executive   | Lessons                                                                                                  | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | PTA User                         | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Other                    | Internal support, Episodes, Episodes 2.0, Lessons, TCI                                                   | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | PTA User                         | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail |       | Partner Program Administrator   | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                 | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | PTA User                         | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail |       | Remedy Program Administrator    | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, TCI            | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | PTA User                         | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail |       | Partner Technical Administrator | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, Administration | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | PTA User                         | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail |       | Transitional Case Manager       | Episodes, Reports, Lessons                                                                               | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
      | PTA User                         | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail |       | Downstream Provider             | Episodes 2.0                                                                                             | 1234567890 | MLKWikk1JDA1                   | Stamford Hospital |
  
  Scenario Outline: Create USER (<Scenario Description>)
  Given I am on the login page
  When I log in as super user
  Then I should see Tile text User Admin
  And I click on the "User Admin" tile
  Then I should see header text "User Management"
  When I click on Add User button
  Then I should see "Add New User" on the user creation page
  And I fill in First Name with "<FirstName>"
  Then I fill in Last Name with <LastName>
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
 
  Scenario Outline: Create a user <Scenario Description>
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Next button
    And I search for health system with <Health System>
    And I select a <Health System>
    Then I click on Select button
    Then I select "<Programs>" programs
    Then I select "<Locations>" locations
    Then I click on Submit button

    Examples: 
      | Scenario Description                                  | FirstName | LastName | Email             | Phone | Role      | Applications                                                          | NPI | Health System    | Programs                | Locations                                                                        |
      | Create user with only one program all locations       | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | All                                                                              |
      | Create user with only one program one location        | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard (450058)                                       |
      | Create user with only one program multiple locations  | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2             | Baptist Medical Center - Vanguard (450058),Adventist Health Bakersfield (050455) |
      | Create user with multiple programs all locations      | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | All                                                                              |
      | Create user with multiple programs one location       | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Mission Trails Baptist (450058-1)                                                |
      | Create user with multiple programs multiple locations | FirstName | LastName | test.automatemail |       | Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Sound Physicians | BPCI-Model2,BPCI-Model3 | Warren Memorial Hospital (490033), Blessing Hospital - Quincy (140015)           |
