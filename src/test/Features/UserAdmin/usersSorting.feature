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
    And I wait for 3000 milli seconds
    Then I should be able to click on DropDown list for sorting Oldest to Newest
    Then I verify the filter for Oldest to Newest
    Then I should be able to sort the users with Oldest - Newest sorting option
    And I wait for 3000 milli seconds    
    Then I should be able to click on DropDown list for sorting Z to A
    Then I verify the filter for Z to A
    Then I should be able to sort the users with Z - A sorting option
    And I wait for 3000 milli seconds    
    Then I verify sorting option applied should work for the user
    Then I see the Refresh icon present besides the sorting filter
    Then I verify refresh button should work for the user
    Then I Clicked on DropDown list for sorting Z to A
    Then I Verify the sort filter for Z to A
    Then I Clicked on Create user button
    Then I Clicked on close button
    Then I verify sort applied should retain when user navigates to user page and gets back to card page
    Then I verify sort should work correctly when search "Test" is made and sorting is applied on the filtered results.
    
    
    
    