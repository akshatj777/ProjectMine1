Feature: Landing page verification

  Scenario Outline: Verify availability of components on Landing page
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    #Then I should see Program Administration logo on Top
    Then I should see header text "Management"
    And I verify UI of landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I click on close icon from user creation page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

    Examples: 
      | Email                               |
      | lbarinstein+qaadmin@remedypartners.com |

  Scenario: Create USER
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    And I fill in First Name with "FirstName"
    Then I fill in Last Name with LastName
    And I enter Email "test.automatemail" to Create user
    When I click the Organizational Role Field
    Then I pick a Organizational Executive
    Then I click on Next button
    #Then I verify Learning Pathway search box is not available
    Then I select "Reports" product
    #Then I click on Select button
    #Then I enter "Care Coordinators External" in Learning Pathway search box
    #Then I select "Care Coordinators External" from the results
    Then I click on Next button
    Then I click on Select button
    And I search for health system with Stamford Hospital
    And I wait for 3000 milli seconds
    And I select a Stamford Hospital
    Then I click on Select All Locations button
    Then I click on Submit button
    #And I wait for 70000 milli seconds
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I open new tab and close the last tab
    And I switch to new window
    Given I am on mail login page
    Then I enter username "test.automatemail" to login mail account
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
    
  Scenario: Verify user information in landing page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I verify user information

  #search cases
  Scenario: Verify ability to search user by First name/Last name/Email
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I enter search box in landing page with "FirstName"
    And I should see "FirstName LastName" for "First Name" in search result
    Then I enter search box in landing page with "LastName"
    And I should see "FirstName LastName" for "Last Name" in search result
    Then I enter search box in landing page with "test.automatemail"
    And I should see "test.automatemail" for "Email" in search result

  Scenario: Verify ability to lock a user from landing page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I enter search box in landing page with "test.automatemail"
    Then I lock user with email "test.automatemail"
    And I verify that user is locked
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget
    Then I enter email field test.automatemail for login
    And I enter password field Testing@1234 for Login
    Then I click Access button
    Then I should not be able to login

  Scenario: Verify functionality of Cancel button on unlocking alert message
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I click on sort by lock icon
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the alert to cancel unlock
    And I verify that user is locked

  Scenario: Verify ability to unlock a locked user from landing page
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I click on sort by lock icon
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the alert to unlock user
    And I verify that the user is unlocked on Landing page
