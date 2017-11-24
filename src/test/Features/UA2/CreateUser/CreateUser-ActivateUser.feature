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
    Then I should see header text "Users"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "<FirstName>"
    Then I fill in Last Name with <LastName>
    And I enter Email "<Email>" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I click on Next button
    Then I select "<Applications>" product
    Then I click on Select button
    Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Select button
    And I search for health system with <Health System>
    And I wait for 3000 milli seconds
    And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button for "Super User"
    And I wait for 15000 milli seconds
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    Then I open new tab and close the last tab
    And I switch to new window
    Given I am on mail login page
    #Then I enter username "test.automatemail" to login mail account
    Then I enter password "Intel@01" to login mail account
    Then I click on Mail icon in my account
    Then I click on Inbox in mail
    Then I verify Account Verification in Inbox in my account
    Then I click on Account Verification mail in Inbox
    Then I verify "Confirm my account!" link in mail content
    Then I click on "Confirm my account!" link in mail content
    And I switch to new window
    Then I enter email to generate password link
    And I click on send mail button
    Then I switch back to old window
    Then I click on Inbox in mail
    Then I verify the unread mail in inbox in my account
    Then I verify Change Password mail in Inbox in my account
    Then I click on Change Password mail in Inbox
    Then I verify "Change my password" link in mail content
    Then I click on "Change my password" link in mail content
    And I switch to new window
    And I enter new password "Testing@1234" to set new password
    And I enter confirm new password "Testing@1234" to set new password
    And I click on submit button to set new password
    Then I enter newuser email for login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product
    Then I verify "<ApplicationsNotVisible>" product is not visible
    Then I click on Hamburger menu on top right of homepage
    And I verify "<Applications>" in product menu dropdown
    And I verify "<ApplicationsNotVisible>" is not present in product menu dropdown

    #    And I click on Episode1 tile under specific user login page <Episode1> and verify the userrole <userroletext>
    #    And I click on Institute tile under specific user login page <Institute>
    #    And I click on Reports tile under specific user login page <Reports>
    #    And I click on Episodes two tile under specific user login page <Episode2> with payer <payer1>
    #    And I click on RemedyU tile under specific user login page <Lessons>
    #    And I click on Physican connect tile under specific user login page <Physican connect>
    #    And I click on Internal Support option from dropdown under specific user login page <Internal Support>
    #    Then I select Support option from the dropdown under specific user login page <Support>
    #    Then I select Reset Password option from the dropdown
    #    And I should see text popup for reset password "Password Reset"
    #    And I click Okay button for reset password popup
    #    And I click on the top user account link
    #    Then I select Log Out option from the dropdown
    #    And I should see Log in widget
    Examples: 
      | Scenario Description                                                                  | UserName                               | Password | FirstName | LastName | Email                       | Phone | Role                            | Applications                                                                     | ApplicationsNotVisible                                             | NPI        | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Executive role                       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail           |       | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  |            | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Manager role                         | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Manager                         | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Case Manager role                    | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Case Manager                    | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Physicians role                      | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy TCS role                      | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy TCS                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy LPN role                      | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy LPN                      | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy RN role                       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy RN                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Field RN role                 | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy PM role                       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy PM                       | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Sales Team role               | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy Sales Team               | Reports, Lessons, TCI                                                            | Administration, Physician Connect, Episodes, Episodes 2.0          | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Executive role                | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy Executive                | Episodes, Episodes 2.0, Reports, Lessons, TCI                                    | Administration, Physician Connect                                  | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Prospective Partner Executive role   | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Prospective Partner Executive   | Lessons                                                                          | Administration, Physician Connect, Episodes, Episodes 2.0, Reports | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Other role                    | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy Other                    | Episodes, Episodes 2.0, Lessons, TCI                                             | Administration, Physician Connect, Reports                         | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Partner Program Administrator role   | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                      | Administration                                                     | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Program Administrator role    | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, TCI                 | Administration                                                     | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Partner Technical Administrator role | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration      |                                                                    | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Technical Administrator role  | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect, Administration, TCI |                                                                    | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Transitional Case Manager role       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Transitional Case Manager       | Episodes, Reports, Lessons                                                       | Episodes 2.0, Administration, Physician Connect                    | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with Super Admin User and create user with Transitional Case Manager role       | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Downstream Provider             | Episodes 2.0                                                                     | Episodes, Reports, Lessons, Physician Connect, Administration      | 1234567890 | Learning Pathway 2             | Stamford Hospital |
      #| Login with PTA user and create user with Executive role                               | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                    |                               | 1234567890 | Learning Pathway 2                   | Stamford Hospital |
      #| Login with PTA user and create user with Manager role                                 | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Manager                         | Episodes, Episodes 2.0, Reports, Lessons                                    |                               | 1234567890 | Learning Pathway 2                   | Stamford Hospital |
      #| Login with PTA user and create user with Case Manager role                            | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Case Manager                    | Episodes, Episodes 2.0, Reports, Lessons                                    |                               | 1234567890 | Learning Pathway 2                   | Stamford Hospital |
      #| Login with PTA user and create user with Physicians role                              | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Physicians                      | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                 |                               | 1234567890 | Learning Pathway 2                   | Stamford Hospital |
      #| Login with PTA user and create user with Prospective Partner Executive role           | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Prospective Partner Executive   | Lessons                                                                     |                               | 1234567890 | Learning Pathway 2                   | Stamford Hospital |
      #| Login with PTA user and create user with Partner Program Administrator role           | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Lessons, Physician Connect                 |                               | 1234567890 | Learning Pathway 2                   | Stamford Hospital |
      #| Login with PTA user and create user with Transitional Case Manager role               | autoptauser@mailinator.com             | Testing1 | FirstName | LastName | test.automatemail@gmail.com |       | Transitional Case Manager       | Episodes, Reports, Lessons                                                  |                               | 1234567890 | Learning Pathway 2                   | Stamford Hospital |
  #Scenario Outline: Create USER (<Scenario Description>)
    #Given I am on the login page
    #When I log in as super user
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    #When I click on Add User button
    #Then I should see "Add New User" on the user creation page
    #And I fill in First Name with "<FirstName>"
    #Then I fill in Last Name with <LastName>
    #And I enter Email "<Email>" to Create user
    #Then I pick a Organizational <Role>
    #Then I click on Next button
    #Then I verify Learning Pathway search box is not available
    #Then I select "<Applications>" product
    #Then I click on Select button
    #Then I enter "<LearningPathwayName>" in Learning Pathway search box
    #Then I select "<LearningPathwayName>" from the results
    #Then I clear the Learning Pathway search box
    #Then I enter "<LearningPathwayID>" in Learning Pathway search box
    #Then I select "<LearningPathwayID>" from the results
    #Then I click on Next button
    #And I search for health system with <Health System>
    #And I select a <Health System>
    #Then I click on Select All Locations button
    #Then I click on Submit button
#
    #Examples: 
      #| Scenario Description                     | FirstName | LastName | Email                       | Phone | Role      | Applications                                        | NPI | LearningPathwayName        | LearningPathwayID | Health System     |
      #| Create user with multiple Learning Paths | FirstName | LastName | test.automatemail@gmail.com |       | Executive | Episodes, Episodes 2.0, Reports, Lessons,Share File |     | Care Coordinators External | a5H9TQNahzI1      | Stamford Hospital |
