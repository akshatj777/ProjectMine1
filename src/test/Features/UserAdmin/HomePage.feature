Feature: HomePage test for Users

  Scenario Outline: Login as admin users and verify the content at homepage
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 4000 milli seconds
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see Program Administration logo on Top
    And I wait for 2000 milli seconds
    Then I should see header text "User Management"
    And I wait for 2000 milli seconds
    Then I should see "Create User" Button
    Then I should see Import Users Button
    And I should see total Users Count on page
    Then I should see sort order default option "Last Name A-Z"
    And I should see Refresh icon on page
    And I should see User card on page
    And I should see First Name on user card
    And I wait for 2000 milli seconds
    And I should see Unlock button on user card 
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
    And I wait for 1000 milli seconds
    And I should see Pagination at bottom
    And I click on the top user account link
    And I wait for 1000 milli seconds
    Then I select Log Out option from the dropdown
    And I should see Log in widget
    

    Examples: 
      | Email                                  |
      | lbarinstein+qaadmin@remedypartners.com |
      | autortauser@mailinator.com             |
      | autoptauser@mailinator.com             |

   Scenario Outline: User should only have access to the applications they are provisioned to

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text <Gainsharing Physician Survey>
    Then I should see Tile text <Episode1>
    Then I should see Tile text <RemedyU>
    Then I should see Tile text <Reports>
    Then I should see Tile text <Episodes2.0>
    Then I should see Tile text <sharefile>
    Then I should see Tile text <Institue>

    Examples:
      | email                              | Gainsharing Physician Survey | Episode1 | RemedyU | Reports | Episodes2.0  | sharefile    | Institue  |
      | shutestaug231132a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | shutestaug221130a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | reptestachmodel2opsfin@yopmail.com |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | shutestaug15240p@yopmail.com       | Gainsharing Physician Survey | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | shutestaug221145a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
      | repopsnofintest@yopmail.com        |                              | Episodes | RemedyU | Reports |              |              | Institute |


  Scenario: Logout link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

  Scenario: Internal Support link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Internal Support option from the dropdown
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    #And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window

  Scenario: Reset Password link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "Password Reset"
    And I click Okay button for reset password popup

  Scenario: Support link test from top menu
    Given I am on the login page
    Then I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I click on the top user account link
    Then I select Support option from the dropdown
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    #And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window