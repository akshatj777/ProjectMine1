Feature: Episode 2.0 attestation

  Scenario: Non Remedy users should see agree button on patient card
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I verify "agree" button is present for few patients on patient cards for non remedy users
    And I wait for 2000 milli seconds
    
  Scenario: Remedy users should not see agree button on patient card
    Given I am on the login page
    When I enter email field psharma+testuser@remedypartners.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I verify "agree" button is not present for patients on patient cards for remedy users
    And I wait for 2000 milli seconds
    