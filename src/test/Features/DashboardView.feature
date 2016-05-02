Feature: Dashboard view

  Scenario: Search user by FirstName
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text "Administration"
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    Then I enter search box with "AutoRexe"
      #And I should see "test" for First Name


  Scenario: Search user by Lastname
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text "Administration"
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    Then I enter search box with "May02930a"

  Scenario: Search user by NPI
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text "Administration"
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    Then I enter search box with "1234567891"


  Scenario: Search user with sort by
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text "Administration"
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    Then I enter search box with "auto"
    Then I should see sort order default option "Last Name A - Z"
    And I sort user by "Inserted Date Oldest - Newest"
     #And I should see "test" for First Name
    And I sort user by "Inserted Date Newest - Oldest"
     #And I should see "test" for First Name
    And I sort user by "Last Name Z - A"
     #And I should see "test" for First Name
    And I sort user by "Last Name A - Z"

  Scenario: Load More users to view
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text "Administration"
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    And I can see "30" user card
    Then I click Load More Button
    #And I can see "60" user card // not able to execute because the load takes more than 25 second








