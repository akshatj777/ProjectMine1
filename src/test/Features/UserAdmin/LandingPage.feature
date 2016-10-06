Feature: Change Login Information


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
    And I should see text for reset password "Reset Password"

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

  Scenario Outline: User have access to the applications accroding to their organisation roles
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    Then I should see Tile text <Episode1>
    Then I should see Tile text <RemedyU>
    Then I should see Tile text <Reports>
    Then I should see Tile text <Episodes2.0>
    Then I should see Tile text <sharefile>
    Then I should see Tile text <Institue>

  Examples:
    |                email          | password | Episode1 | RemedyU | Reports | Episodes2.0  | sharefile    | Institue  |
    | shutestaug231132a@yopmail.com | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
    | shutestaug221130a@yopmail.com | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
    | shutestaug221140a@yopmail.com | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
    | shutestaug221145a@yopmail.com | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |

  Scenario Outline:  Newly created user have access to the applications accoding to their role
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    Then I should see Tile text <Episode1>
    Then I should see Tile text <RemedyU>
    Then I should see Tile text <Reports>
    Then I should see Tile text <Episodes2.0>
    Then I should see Tile text <sharefile>
    Then I should see Tile text <Institue>
    And I click on the Tile with text <Episode1>
    And I switch to new window
    #And I should see "Dashboard" on Ec1 dashboard page
    And I switch back to old window
    Then I click on the Tile with text <RemedyU>
    And I switch to new window
    #And I should see "Dashboard" on Ec1 dashboard page
    And I switch back to old window
    Then I click on the Tile with text <Reports>
    #And I should see logo text "Reports"
    Then I navigate back
    Then I click on the Tile with text <Episodes2.0>
    #And I should see logo text "Remedy Connect"
    Then I navigate back
    Then I click on the Tile with text <sharefile>
    And I switch to new window
    Then I switch back to old window
    Then I click on the Tile with text <Institue>
    And I switch to new window
    Then I switch back to old window

    #And I nevigate back

    Examples:

      |                 email            |   password    |     Episode1       |     RemedyU   |      Reports   |   Episodes2.0    |  sharefile    |   Institue     |
      |  atuorexe3test3@yopmail.com      |    Testing1   |   Episodes         |     RemedyU   |   Reports      |  Episodes 2.0    |  ShareFile    |   Institute    |
      #|   shumonexample02@yopmail.com   |    Testing1    |   Bundle Selection |     Lessons     |   Reports     |                  |
      #|   shumonexample03@yopmail.com   |    Testing1    |   Bundle Selection |     Lessons     |   Reports     |                  |
     # |   shumonexample04@yopmail.com   |    Testing1   |   Bundle Selection |     Lessons     |   Reports     |                  |
      #|   shumonexample05@yopmail.com   |    Testing1    |    Administration  |     Lessons     |   Reports     |                  |



