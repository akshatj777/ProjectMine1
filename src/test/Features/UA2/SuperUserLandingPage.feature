Feature: Landing page verification

  Scenario Outline: Login with super admin and verify UI
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see Program Administration logo on Top
    Then I should see header text "Management"
    And I verify UI of landing page
    And I should see "Add User" Button in landing page
    Then I click on "Add User" Button
    Then I am navigated to user creation page
    Then I click on close icon from user creation page
    Then I am on refreshed landing page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

    Examples: 
      | Email                               |
      | rkapur+devFirst2@remedypartners.com |

  #search cases
  Scenario Outline: Search user by Name/Email
    Given I am on the login page
    When I log in as super user
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "Management"
    Then I enter search box in landing page with <Search>
    And I should see <Result> for <category> in landing page

    Examples: 
      | Search  | Result                     | Category   |


  #Lock unlock cases
  Scenario: Verification of Lock and Unlock Users on user admin landing page
    Given I am on the login page
    When I log in as super user
    #Then I should see Tile text User Adming
    #And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I verify users with lock icon present on useradmin Landing page
    Then I verify users with Unlock icon button present on useradmin Landing page

  Scenario: Unlocking a user
    Given I am on the login page
    When I log in as super user
    #Then I should see Tile text User Adming
    #And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I click on Lock button on the table in useradmin Landing page
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the alert to unlock user
    And I verify that the user is unlocked on the table in useradmin Landing page

  Scenario: Cancelling unlock
    Given I am on the login page
    When I log in as super user
    #Then I should see Tile text User Adming
    #And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I click on Lock button on the table in useradmin Landing page
    Then I click on Unlock button on the table in useradmin Landing page
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the alert to cancel unlock
    And I verify that the user is locked on the table in useradmin Landing page

  Scenario: Locked user should not be able to login
    Given I am on the login page
    Then I enter email field abcfd@yopmail.com for login
    And I enter password field Testing11 for Login
    Then I click Access button
    Then I should not be able to login

  #Sort users
  Scenario: User able to sort the users in landing page
    Given I am on the login page
    When I log in as super user
    #Then I should see Tile text User Adming
    #And I click on the "User Admin" tile
    Then I should see header text "Management"
    Then I should be able to sort users based on lock funtionality
    Then I should be able to sort users based on Name funtionality
    Then I should be able to sort users based on Role funtionality
    Then I should be able to sort users based on Email funtionality
    Then I should be able to sort users based on Date created

  #top User link
  Scenario: Logout link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

  Scenario: Internal Support link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select "Internal Support" option from the dropdown list
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    And I should see Jira Log in Page text "JIRA Service Desk (3.5.0)"
    Then I switch back to old window

  Scenario: Reset Password link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select "Reset Password" option from the dropdown list
    And I should see text popup for reset password with "We have sent you an e-mail with a link to reset your password. Please check your e-mail."
    And I click Okay button for reset password popup

  Scenario: Support link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select "Support" option from the dropdown list
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    And I should see Jira Log in Page text "JIRA Service Desk (3.5.0)"
    Then I switch back to old window
