Feature: Product tiles verification for all the roles on create users page

  Scenario Outline: Verification of product tiles for all roles on Create user page
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Create User button
    Then I should see "Create User" on the user creation page
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    Then I verify the Internal Support tile for selected user role <Role>
    Then I verify the Physican Connect tile for selected user role <Role>
    Then I verify the Episodes tile for selected user role <Role>
    Then I verify the Lessons tile for selected user role <Role>
    Then I verify the Reports tile for selected user role <Role>
    Then I verify the Administration tile for selected user role <Role>
    Then I verify the Share File tile for selected user role <Role>
    Then I verify the Episodes 2.0 tile for selected user role <Role>
    Then I verify the Institute tile for selected user role <Role>

    Examples: 
      | Role                            |
      | Remedy Technical Administrator  |
      | Executive                       |
      | Manager                         |
      | Case Manager                    |
      | Physicians                      |
      | Remedy TCS                      |
      | Remedy LPN                      |
      | Remedy RN                       |
      | Remedy Field RN                 |
      | Remedy PM                       |
      | Remedy Sales Team               |
      | Remedy Executive                |
      | Prospective Partner Executive   |
      | Remedy Other                    |
      | Partner Program Administrator   |
      | Remedy Program Administrator    |
      | Partner Technical Administrator |
      | Transitional Case Manager       |
      | Downstream Provider             |
