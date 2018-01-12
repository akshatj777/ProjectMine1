Feature: UA2 Front End Automation

  Scenario Outline: <Description>
#Given I am on mail login page
    #Then I enter username "test.automatemail" to login mail account
    #Then I enter password "Intel@01" to login mail account
    #Then I click on Mail icon in my account
    #Then I click on Inbox in mail
    #Then I click on select all checkbox in mail
    #Then I click on delete icon in mail
    #Then I signout form mail account
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
    Then I enter NPI field with "<NPI>" for role "<Role>"
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
     And I wait for 3000 milli seconds
    Then I click on Submit button for "<User>"
    
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    #And I clear the browser history
    #Given I am on mail login page
    #Then I enter username "test.automatemail" to login mail account
    #Then I enter password "Intel@01" to login mail account
    #Then I click on Mail icon in my account
    #Then I click on Inbox in mail
    #And I wait for 3000 milli seconds
    #Then I verify Account Verification in Inbox in my account
    #Then I click on Account Verification mail in Inbox
    #Then I verify "Confirm my account!" link in mail content
    #Then I click on "Confirm my account!" link in mail content
    #And I switch to new window
    #Then I enter email to generate password link
    #And I click on send mail button
    #Then I switch back to old window
    #Then I click on Inbox in mail
    #Then I verify the unread mail in inbox in my account
    #Then I verify Change Password mail in Inbox in my account
    #Then I click on Change Password mail in Inbox
    #Then I verify "Change my password" link in mail content
    #Then I click on "Change my password" link in mail content
    #And I switch to new window
    #And I enter new password "Testing1" to set new password
    #And I enter confirm new password "Testing1" to set new password
    #And I click on submit button to set new password

    Examples: 
      | Description                                                                           | User        | UserName                               | Password | FirstName | LastName | Email             | Phone | Role                            | Applications                                                                     | ApplicationsNotVisible                                             | NPI | LearningPathwaySearchParameter | Health System     |
      | Login with Super Admin User and create user with Executive role                       | Super Admin | lbarinstein+qaadmin@remedypartners.com | Testing1 | FirstName | LastName | test.automatemail |       | Executive                       | Episodes, Episodes 2.0, Reports, Lessons                                         | Administration, Physician Connect                                  |     | Learning Pathway 2             | Stamford Hospital |
      