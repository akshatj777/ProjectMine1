Feature: User should able to search patient using filters

  Scenario: search patients by patient name
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
    And I should see "cards" view as active view on patients page

    Then I should see "Filters" button on patients page
    And I should see "Search Name" as placeholder for search on patients page
    When I type "VVYWR," in the patient search field on patients page
    And I wait for 9000 milli seconds
    Then I should see patient searched result contains "VVYWR" on patients page