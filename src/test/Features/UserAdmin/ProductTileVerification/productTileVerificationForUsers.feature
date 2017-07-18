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
    Then I verify the <Internal Support> tile for selected user role
    Then I verify the <Physician connect> tile for selected user role
    Then I verify the <Episode1> tile for selected user role
    Then I verify the <Lessons> tile for selected user role
    Then I verify the <Reports> tile for selected user role
    Then I verify the <Administration> tile for selected user role
    Then I verify the <Share File> tile for selected user role
    Then I verify the <Episodes2> tile for selected user role
    Then I verify the <Institute> tile for selected user role

    Examples: 
      | Role                            | Episode1 | Lessons | Reports | Episode2     | Institute | Physician connect | Administration | Internal Support | Share File |
      | Remedy Technical Administrator  | Episodes | Lessons | Reports | Episodes 2.0 | TCI       | Physician Connect | Administration | Internal Support | Share File |
      | Executive                       | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                | Internal Support | Share File |
      | Manager                         | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                |                  | Share File |
      | Case Manager                    | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                |                  | Share File |
      | Physicians                      | Episodes | Lessons | Reports | Episodes 2.0 | TCI       | Physician Connect |                |                  | Share File |
      | Remedy TCS                      | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                | Internal Support | Share File |
      | Remedy LPN                      | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                | Internal Support | Share File |
      | Remedy RN                       | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                | Internal Support | Share File |
      | Remedy Field RN                 | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                | Internal Support | Share File |
      | Remedy PM                       | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                | Internal Support | Share File |
      | Remedy Sales Team               |          | Lessons | Reports |              | TCI       |                   |                | Internal Support | Share File |
      | Remedy Executive                | Episodes | Lessons | Reports | Episodes 2.0 | TCI       |                   |                | Internal Support | Share File |
      | Prospective Partner Executive   |          | Lessons |         |              | TCI       |                   |                |                  |            |
      | Remedy Other                    | Episodes | Lessons |         | Episodes 2.0 | TCI       |                   |                | Internal Support |            |
      | Partner Program Administrator   | Episodes | Lessons | Reports | Episodes 2.0 | TCI       | Physician Connect |                | Internal Support | Share File |
      | Remedy Program Administrator    | Episodes | Lessons | Reports | Episodes 2.0 | TCI       | Physician Connect |                | Internal Support | Share File |
      | Partner Technical Administrator | Episodes | Lessons | Reports | Episodes 2.0 | TCI       | Physician Connect | Administration | Internal Support | Share File |
      | Transitional Case Manager       | Episodes | Lessons | Reports |              | TCI       |                   |                |                  |            |
      | Downstream Provider             | Episodes |         |         | Episodes 2.0 |           |                   |                |                  |            |
