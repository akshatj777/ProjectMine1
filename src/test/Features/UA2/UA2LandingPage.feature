Feature: Landing page verification

  Scenario Outline: Login as admin users and verify the content at Landing Page
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I wait for 4000 milli seconds
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see Program Administration logo on Top
    And I wait for 2000 milli seconds
    Then I should see header text "User Management"
    And I wait for 2000 milli seconds
    And I should see "Add User" Button
    And I should see "Users" link
    And I should see users table
    And I should see Account status column in the table
    And I wait for 1000 milli seconds
    And I should see Name column in the table
    And I should see Role column in the table
    And I wait for 1000 milli seconds
    And I should see Email column in the table
    And I should see Date Created column in the table
    And I wait for 1000 milli seconds
    And I should see Pagination at bottom of the landing page
    And I click on the top user link
    And I wait for 1000 milli seconds
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

    Examples: 
      | Email                               |
      | rkapur+devFirst2@remedypartners.com |

  #Scenario Outline: User should only have access to the applications they are provisioned to
  #Given I am on the login page
  #When I enter email field <email> for login
  #And I enter password field Testing1 for Login
  #Then I click Access button
  #Then I should see Tile text <Gainsharing Physician Survey>
  #Then I should see Tile text <Episode1>
  #Then I should see Tile text <RemedyU>
  #Then I should see Tile text <Reports>
  #Then I should see Tile text <Episodes2.0>
  #Then I should see Tile text <sharefile>
  #Then I should see Tile text <Institue>
  
  #Examples:
  #| email                              | Gainsharing Physician Survey | Episode1 | RemedyU | Reports | Episodes2.0  | sharefile    | Institue  |
  #| shutestaug231132a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
  #| shutestaug221130a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
  #| reptestachmodel2opsfin@yopmail.com |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
  #| shutestaug15240p@yopmail.com       | Gainsharing Physician Survey | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
  #| shutestaug221145a@yopmail.com      |                              | Episodes | RemedyU | Reports | Episodes 2.0 | Shared Files | Institute |
  #| repopsnofintest@yopmail.com        |                              | Episodes | RemedyU | Reports |              |              | Institute |
  
  #Search cases
  Scenario: Search user by FirstName
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box in landing page with "ACH"
    And I wait for 3000 milli seconds
    Then I should see "Users" for search results in landing page
    And I should see "ACHMODEL2" for First Name in landing page

  Scenario: Search user by Lastname
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box in landing page with "REPTESTRPFIN"
    And I wait for 3000 milli seconds
    Then I should see "Users" for search results in landing page
    And I should see "REPTESTRPFIN" for Last Name in landing page

  Scenario: Search user by NPI
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box in landing page with "1234567891"
    And I wait for 3000 milli seconds
    Then I should see "Users" for search results in landing page
    And I should see "Physicians" for User Role in landing page

  #Top menu cases
  Scenario: Logout link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

  #Scenario: Internal Support link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
     And I click on the top user link
    Then I select "Internal Support" option from the dropdown list
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window

  Scenario: Reset Password link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select "Reset Password" option from the dropdown list
    And I should see text popup for reset password "Password Reset"
    And I click Okay button for reset password popup

  Scenario: Support link test from top menu
    Given I am on the login page
    Then I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    And I click on the top user link
    Then I select "Support" option from the dropdown list
    When I switch to new window
    And I verify current page "Login - Service Desk" title
    And I should see Jira Log in Page text "Service Desk (2.5.9)"
    Then I switch back to old window

  #Lock unlock cases
  Scenario: Verification of Lock and Unlock Users on user admin landing page
   	Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 5000 milli seconds
    Then I verify users with "Lock" button present on useradmin Landing page
    Then I verify users with "Unlock" button present on useradmin Landing page
     #Locking and unlocking a user
    Then I click on "Lock" radio button on the table in useradmin Landing page
    And I wait for 5000 milli seconds
    Then I click on "Unlock" radio button on the table in useradmin Landing page
    And I wait for 5000 milli seconds
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Unlock" button from the alert
    And I verify that the user is unlocked on the table in useradmin Landing page
    # Locking and cancelling on alert
    Then I click on "Lock" radio button on the table in useradmin Landing page
    And I wait for 5000 milli seconds
    Then I click on "Unlock" radio button on the table in useradmin Landing page
    And I wait for 5000 milli seconds
    Then I should see an alert with "Are you sure you want to unlock"
    Then I click on "Cancel" button from the alert
    And I verify that the user is locked on the table in useradmin Landing page

  #Sort users
  Scenario: User able to sort the users in landing page
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 5000 milli seconds
    Then I should be able to sort users based on lock funtionality
    Then I should be able to sort users based on Name funtionality
    Then I should be able to sort users based on Role funtionality
    Then I should be able to sort users based on Email funtionality
    Then I should be able to sort users based on Date created

  #Scenario: Users link test
    #Given I am on the login page
    #When I log in as super user
    #And I wait for 1000 milli seconds
    #Then I should see Tile text User Adming
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    #And I wait for 5000 milli seconds
    #Then I click on any User from the table
    #And I wait for 1000 milli seconds
    #And I should be navigated to that user page
    #Then I click on "Users" link
    #And I wait for 5000 milli seconds
    #And I should be navigated back to the landing page
