Feature: Landing page verification

  Scenario Outline: logging in as PTA user and create users
    Given I am on the login page
    When I enter email field <UserName> for login
    And I enter password field Testing1 for Login
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
    #Then I click on Select button
    #Then I enter "<LearningPathwaySearchParameter>" in Learning Pathway search box
    #Then I select "<LearningPathwaySearchParameter>" from the results
    Then I click on Next button
    Then I click on Select button
    Then I select "BPCI-Model2" programs
    #Then I select "<Locations>" locations
    #And I search for health system with <Health System>
    # And I wait for 3000 milli seconds
    #And I select a <Health System>
    Then I click on Select All Locations button
    Then I click on Submit button for "<User>"
    And I click on the top user account link
    Then I click on "Log Out" button
    And I should see Log in widget
    And I clear the browser history
    Given I am on mail login page
    Then I enter username "test.automatemail" to login mail account
    Then I enter password "Intel@01" to login mail account

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
      | User                            | UserName          | FirstName  | LastName | Email             | Phone | Role                      | Applications | Health System     | Programs    | Locations | NPI |
      | Partner Technical Administrator | chloe@yopmail.com | FirstNameA | LastName | test.automatemail |       | Executive                 | Reports      | Stamford Hospital | BPCI-Model2 | All       |     |
      | Partner Technical Administrator | chloe@yopmail.com | FirstNameB | LastName | test.automatemail |       | Manager                   | Reports      | Stamford Hospital | BPCI-Model2 | All       |     |
      | Partner Technical Administrator | chloe@yopmail.com | FirstNameC | LastName | test.automatemail |       | Case Manager              | Reports      | Stamford Hospital | BPCI-Model2 | All       |     |
      | Partner Technical Administrator | chloe@yopmail.com | FirstNameD | LastName | test.automatemail |       | Physicians                | Reports      | Stamford Hospital | BPCI-Model2 | All       | NPI |
      | Partner Technical Administrator | chloe@yopmail.com | FirstNameE | LastName | test.automatemail |       | Transitional Case Manager | Reports      | Stamford Hospital | BPCI-Model2 | All       |     |

  Scenario: Verification of PTA user Landing page UI
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    And I verify UI of landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I click on close icon from user creation page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

  Scenario: Verify user information in landing page
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I verify user information

  #PTA user provision
  Scenario Outline: PTA user should see all users he has created and be able to provision user as per desired role
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I should see users with <Role>
    Then I enter search box in landing page with <Name> and verify result

    Examples:
      | Role                                                                    | Name                                                       |
      | Executive, Manager, Case Manager, Physicians, Transitional Case Manager | FirstNameA, FirstNameB, FirstNameC, FirstNameD, FirstNameE |

  #search cases
  Scenario Outline: Verify ability of PTA user to search user by First name/Last name/Email
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "FirstNameA"
    And I should see "FirstNameA" for "First Name" in search result
    Then I enter search box in landing page with "LastName"
    And I should see "LastName" for "Last Name" in search result
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result

  #Lock unlock cases
  Scenario: Verify ability of PTA user to lock a user from landing page
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    Then I lock user with email "test.automatemail"
    And I verify that user is locked
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter email field "test.automatemail" for login
    And I enter password field Testing@1234 for Login
    Then I click Access button
    Then I should not be able to login

  Scenario: Verify functionality of Cancel button on unlocking alert message
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the alert to cancel unlock
    And I verify that user is locked

  Scenario: Verify ability of PTA user to unlock a locked user from landing page
    Given I am on the login page
    Then I enter email field chloe@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the alert to unlock user
    And I verify that the user is unlocked on Landing page