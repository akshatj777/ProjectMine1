Feature: Edit page for user verification

  Scenario Outline: Verify availability of components on Landing page
    Given I am on the login page
    When I enter email field <Email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I verify UI of landing page
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I click on the top user link
    Then I select "Log Out" option from the dropdown list
    And I should see Log in widget

    Examples: 
      | Email             |
      | lbarinstein+qaadmin@remedypartners.com |

    Scenario: Verifying the ability to edit a field in general information tab
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I should be able to edit "First Name"
    And I should be able to edit "Last Name"
    And I should be able to edit "Role"
    And I should be able to edit "Phone"
    
    Scenario: Verifying that email is not editable in general information tab
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Management"
    And I click on any user
    And I verify that I am navigated to user page
    And I click on Edit button
    And I verify that I am redirected to the edit page
    And I should not be able to edit "Email"