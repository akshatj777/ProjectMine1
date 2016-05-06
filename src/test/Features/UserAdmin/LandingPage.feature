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
    And I should see "Dashboard" on Ec1 dashboard page
    And I switch back to old window
    Then I click on the Tile with text <RemedyU>
    #And I should see "Dashboard" on Ec1 dashboard page
    #And I switch back to old window
    Then I click on the Tile with text <Reports>
    And


    #And I nevigate back

    Examples:

      |                 email            |   password    |     Episode1       |     RemedyU   |      Reports   |   Episodes2.0    |  sharefile    |   Institue     |
      |  autorxe2may01120a@yopmail.com   |    Testing1   |   Episodes         |     RemedyU   |   Reports      |  Episodes 2.0    |  ShareFile    |   Institute    |
      #|   shumonexample02@yopmail.com   |    Testing1    |   Bundle Selection |     Lessons     |   Reports     |                  |
      #|   shumonexample03@yopmail.com   |    Testing1    |   Bundle Selection |     Lessons     |   Reports     |                  |
     # |   shumonexample04@yopmail.com   |    Testing1   |   Bundle Selection |     Lessons     |   Reports     |                  |
      #|   shumonexample05@yopmail.com   |    Testing1    |    Administration  |     Lessons     |   Reports     |                  |



