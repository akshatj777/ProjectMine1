Feature: Change Login Information

  Scenario Outline: User should only have access to the applications they are provisioned to

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text <Gainsharing Physician Survey>
    Then I should see Tile text <Episode1>
    Then I should see Tile text <RemedyU>
    Then I should see Tile text <Reports>
    Then I should see Tile text <Episodes2.0>
    Then I should see Tile text <sharefile>
    Then I should see Tile text <Institue>

    Examples:
      | email                              | Gainsharing Physician Survey | Episode1 | RemedyU | Reports | Episodes2.0  | sharefile    | Institue  |
      | shutestaug231132a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | shutestaug221130a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | reptestachmodel2opsfin@yopmail.com |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | shutestaug15240p@yopmail.com       | Gainsharing Physician Survey | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | shutestaug221145a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | repopsnofintest@yopmail.com        |                              | Episodes | RemedyU | Reports |              |              | Institute |


  Scenario: Logout link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

  Scenario: Internal Support link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Internal Support option from the dropdown
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    #And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window

  Scenario: Reset Password link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Reset Password option from the dropdown
    #And I should see text for reset password "Reset Password"

  Scenario: Support link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Support option from the dropdown
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    #And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window


