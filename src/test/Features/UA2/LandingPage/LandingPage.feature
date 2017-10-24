Feature: Landing page verification

  Scenario Outline: Login as admin users and verify the content at Landing Page
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I wait for 4000 milli seconds
    Then I should see header text "Management"
    And I should see "Add User" Button
    And I should see Users link
    And I should see Search box
    And I should see Account status
    And I wait for 1000 milli seconds
    And I should see Name
    And I should see Role
    And I wait for 1000 milli seconds
    And I should see Email
    And I should see Date Created order button
    And I wait for 1000 milli seconds
    And I should see Pagination at bottom
    And I click on the top user link
    And I wait for 1000 milli seconds
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Email                               |
      | rkapur+devFirst2@remedypartners.com |

  Scenario: Users link test
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I click on Users link
    And I should see Users page

  Scenario: Logout link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

  Scenario: Internal Support link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select Internal Support option from the dropdown
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    #And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window

  Scenario: Reset Password link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "Password Reset"
    And I click Okay button for reset password popup

  Scenario: Support link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select Support option from the dropdown
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    #And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window
