@EC1Smoke
Feature: Verification of help page from episode connect 1

  Scenario: Verify the user redirects to help center page
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
    Then I navigate on "https://ec-help.remedypartners.com/display/ECO/Episode+Connect+User+Guide?os_username=ecdocs&os_password=4xpPhXpd05pj"
   
    Then I verify the help page url "https://ec-help.remedypartners.com/display/ECO"
