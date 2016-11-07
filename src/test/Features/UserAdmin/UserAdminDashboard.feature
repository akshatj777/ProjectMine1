Feature: User Admin Dashboard view test

  Scenario: Search user by FirstName
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text <Administration>
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with "ACH"
    And I wait for 3000 milli seconds
    Then I should see "9 Users" for search results
    And I should see "ACHMODEL2" for First Name


  Scenario: Search user by Lastname
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text <Administration>
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with "REPTESTRPFIN"
    And I wait for 3000 milli seconds
    Then I should see "4 Users" for search results
    And I should see "REPTESTRPFIN" for Last Name

  Scenario: Search user by NPI
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text <Administration>
    And I click on the "Administration" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with "1234567891"
    And I wait for 3000 milli seconds
    Then I should see "4 Users" for search results
    And I should see "Physicians" for User Role on user card


  #Scenario: Search user with sort by
   # Given I am on the login page
   # When I log in as super user
    #Then I should see Tile text <Administration>
   # And I click on the "Administration" tile
    #Then I should see header text "User Management"
   # And I enter search box with "ACHM"
   # Then I should see sort order default option "Last Name A-Z"
   # Then I sort user by "Inserted Date Oldest - Newest"
   # And I wait for 3000 milli seconds
    #And I should see "REPTESTECREPORTS" for Last Name
    #Then I sort user by "Inserted Date Newest - Oldest"
    #And I wait for 3000 milli seconds
   # And I should see "REPTESTOPSFIN" for Last Name
    #Then I sort user by "Last Name Z - A"
    #And I wait for 3000 milli seconds
    #And I should see "REPTSETOPSNOFIN" for Last Name
   # Then I sort user by "Last Name A - Z"







