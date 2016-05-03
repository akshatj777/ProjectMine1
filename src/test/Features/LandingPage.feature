Feature: Change Login Information


  Scenario: Logout link test from top menu

    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in page text "Log in"


  Scenario: Internal Support link test from top menu

    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Internal Support option from the dropdown
    #When I switch to new window
    #And I should see Jira Log in Page text "Service Desk (2.5.4)"
    #Then I switch back to old window


  Scenario: Reset Password link test from top menu

    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Reset Password option from the dropdown
    And I should see text for reset password "Reset Password"


  Scenario: Log ot link test from top menu

    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in page text "Log in"



