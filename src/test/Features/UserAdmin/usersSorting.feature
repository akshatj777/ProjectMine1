Feature: User able to sort the users with mentioned sorting list of filter

Scenario: User able to sort the users with mentioned sorting list of filter on Program admin home page

    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 5000 milli seconds
    Then I see "Sort by:" word under Program admin home page
    Then I see by default the sort filter is "Last Name A-Z"
    Then I should be able to click on DropDown list for sorting Newest to Oldest
    Then I verify the filter for Newest to Oldest
    Then I should be able to sort the users with Newest - Oldest sorting option
    Then I verify "30" users cards under user admin page
    And I wait for 3000 milli seconds
    Then I should be able to click on DropDown list for sorting Oldest to Newest
    Then I verify the filter for Oldest to Newest
    Then I should be able to sort the users with Oldest - Newest sorting option
    Then I verify "29" users cards under user admin page
    And I wait for 3000 milli seconds    
    Then I should be able to click on DropDown list for sorting Z to A
    Then I verify the filter for Z to A
    Then I should be able to sort the users with Z - A sorting option
    Then I verify "30" users cards under user admin page
    And I wait for 3000 milli seconds    
    Then I verify sorting option applied should work for the user
    Then I see the Refresh icon present besides the sorting filter
    Then I verify refresh button should work for the user
    Then I Verify the sort filter for Z to A under user admin page
    Then I Clicked on Create user button appearing under user admin page
    Then I Clicked on close button appearing on create user page under user admin page
    Then I verify sorting applied on user admin page is retaining
    
Scenario: User able to sort the users with search text and different sorting filters on user admin home page   
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 5000 milli seconds
    Then I entered "Test" under user admin page
    Then I should be able to click on DropDown list for sorting Newest to Oldest
    Then I verify the filter for Newest to Oldest
    Then I should be able to sort the users with Newest - Oldest sorting option
    And I wait for 3000 milli seconds
    Then I verify sort should work correctly when search "Test" is made with Newest to Oldest sorting is applied on the filtered results
    Then I verify "30" users cards under user admin page
    Then I should be able to click on DropDown list for sorting Oldest to Newest
    Then I verify the filter for Oldest to Newest
    Then I should be able to sort the users with Oldest - Newest sorting option
    And I wait for 3000 milli seconds
    Then I verify sort should work correctly when search "Test" is made with Oldest to Newest sorting is applied on the filtered results
    Then I verify "30" users cards under user admin page
    Then I should be able to click on DropDown list for sorting Z to A
    Then I verify the filter for Z to A
    Then I should be able to sort the users with Z - A sorting option
    Then I verify sort should work correctly when search "Test" is made with Z to A sorting is applied on the filtered results.
    Then I verify "30" users cards under user admin page
    
    Scenario: User able to see favicon on user admin page
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 9000 milli seconds
    #Then I verify the favicon on user admin page
    

    
    
    
    