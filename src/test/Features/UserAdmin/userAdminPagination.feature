Feature: User Admin Pagination Verification

Scenario: User should be able to click on pagination on user admin

    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 5000 milli seconds
    Then I verify pagination box appearing at the bottom of useradmin home page
    Then I Verify "Next" button is appearing beside the pagination on user admin home page
    And I click on "Next" button beside pagination on user admin home page
    And I wait for 4000 milli seconds
    Then I Verify "Prev" button is appearing beside the pagination on user admin home page
    And I click on "Prev" button beside pagination on user admin home page
    And I wait for 4000 milli seconds
    Then I enter "2" in the pagination input box on user admin home page
    And I wait for 5000 milli seconds
    Then I Verify "Prev" button is appearing beside the pagination on user admin home page
    
    
    
    