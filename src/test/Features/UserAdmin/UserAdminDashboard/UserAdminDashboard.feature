Feature: User Admin Dashboard view test

  Scenario: Search user by FirstName
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with "ACH"
    And I wait for 3000 milli seconds
    Then I should see "Users" for search results
    And I should see "ACHMODEL2" for First Name

  Scenario: Search user by Lastname
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with "REPTESTRPFIN"
    And I wait for 3000 milli seconds
    Then I should see "Users" for search results
    And I should see "REPTESTRPFIN" for Last Name

  Scenario: Search user by NPI
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with "1234567891"
    And I wait for 3000 milli seconds
    Then I should see "Users" for search results
    And I should see "Physicians" for User Role on user card
