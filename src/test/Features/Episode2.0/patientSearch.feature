Feature: Episode 2.0 patient search

  Scenario: User can search for patients with firstname and lastname
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    Then I enter "URCRV, RYYQTTXQ" in the search box on the patients page
    And I wait for 60000 milli seconds
    Then I verify patient having either URCRV first name or RYYQTTXQ last name on patient page
    And I wait for 2000 milli seconds