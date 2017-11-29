Feature: Edit page for user verification

  Scenario Outline: Verify availability of components on Landing page
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I verify UI of landing page
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

    Examples: 
      | Email             |
      | lbarinstein+qaadmin@remedypartners.com |

    Scenario: Verifying the ability to edit a field in general information tab
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I should be able to edit "First Name"
    And I should be able to edit "Last Name"
    And I should be able to edit "Role"
    And I should be able to edit "Phone"
    
    Scenario: Verifying that email is not editable in general information tab
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I should not be able to edit "Email"
    
    Scenario Outline: Verifying ability of user to enable any application
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I click on application tab
    Then I select "<Applications>" product
    And I verify that user can enable applications
    Then I click on Next button
    Then I click on Submit button for "Super User"
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
    Then I enter newuser email for login to Remedy
    Then I enter newuser password for login to Remedy
    And I click Access button
    Then I verify "<Applications>" product
    Examples:
    |Applications|
    |Episodes, Episodes 2.0, Lessons|