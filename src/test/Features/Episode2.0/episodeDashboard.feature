Feature: Episode 2.0 dashboard

  Scenario: User can see ec2 patients page and navigate to different fil
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
    And I should see "Inpatient" tab in the filter bar on patients page
    And I should see "Post Acute" tab in the filter bar on patients page
    When I click on "Inpatient" tab in the filter bar on patients page
    And I wait for 4000 milli seconds

  Scenario: verify different view options present
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
    And I should see view section on patients page
    And I should have "cards" view option on patients page
    And I should have "table" view option on patients page
    And I should see "cards" view as active view on patients page
    When I select "table" view on patients page
    And I wait for 4000 milli seconds
    And I should see "table" view as active view on patients page

  Scenario: verify element present in the control bar
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 9000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see Export feature present on patient page
    And I should see Sort by feature is present on patient page
    And I should see Refresh button is present on patient page