Feature: HomePage test for Users

  Scenario Outline: Login as admin users and verify the content at homepage
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 1000 milli seconds
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see Program Administration logo on Top
    And I wait for 1000 milli seconds
    Then I should see header text "User Management"
    And I wait for 1000 milli seconds
    Then I should see "Create User" Button
    Then I should see Import Users Button
    And I should see total Users Count on page
    Then I should see sort order default option "Last Name A-Z"
    And I should see Refresh icon on page
    And I should see User card on page
    And I should see First Name on user card
    And I wait for 1000 milli seconds
    Then I should be able to click on DropDown list for sorting Newest to Oldest
    Then I verify the filter for Newest to Oldest
    Then I should be able to sort the users with Newest - Oldest sorting option
    Then I verify "30" users cards under user admin page
    And I wait for 3000 milli seconds
    And I should see Last Name on user card
    And I should see Expand button on user card
    And I wait for 1000 milli seconds
    And I should see Role on user card
    And I should see User Email on user card
    And I should see Lock button on user card
    And I should see Unlock button on user card 
    And I wait for 1000 milli seconds
    And I should see Pagination at bottom
    And I click on the top user account link
    And I wait for 1000 milli seconds
    Then I select Log Out option from the dropdown
    And I should see Log in widget
    

    Examples: 
      | Email                                  |
      | lbarinstein+qaadmin@remedypartners.com |
      | RTAUSER@mailinator.com                 |
      | PTAUSER@mailinator.com                 |
