Feature: Change Login Information

  Scenario: Change password for user
    Given I am on the login page
    When I click on the forgot password button
    And I should see "Reset Password"
    Then i enter lbarinstein+qaadmin@remedypartners.com for changing password
    And I enter new Testing1
    And I enter Testing1 to confirm
    Then I click on chnage password button
    And I will wait
    And I should see "We've just sent you an email to reset your password."


  Scenario: Logout link test from top menu

    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I will wait
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see "Log in"


  Scenario: Episode Connect Support link test from top menu

    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I will wait
    And I click on the top user account link
    Then I select Episode Connect Support option from the dropdown
    When I switch to new window
    And I should see "JIRA Service Desk"
    Then I switch back to old window


  Scenario: Reset Password link test from top menu

    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I will wait
    And I click on the top user account link
    Then I select Reset Password option from the dropdown
    And I should see "Reset Password"



