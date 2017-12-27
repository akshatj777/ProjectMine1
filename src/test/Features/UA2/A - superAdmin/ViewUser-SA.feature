Feature: View User - Super Admin User

  Scenario Outline: <Description>
    Given I am on the login page
    When I enter email field lbarinstein+qaadmin@remedypartners.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I search for user with role "<User>-<Role>"
    Then I select user with role "<User>-<Role>"
    And I verify that I am navigated to user page
    Then I verify "EditIcon"
    Then I verify "Unlock"
    Then I verify "<FirstName>"
    Then I verify "<LastName>"
    Then I verify "<Role>"
    Then I verify "<Email>"
    Then I verify "<Phone>"
    Then I verify "<NPI>"
    Then I verify enabled "<ApplicationsEnabled>"
    Then I verify disabled "<ApplicationsDisabled>"
    Then I verify "<HealthSystem>"
    Then I verify "<Programs>"

    Examples: 
      | Description                                                                           | User        | FirstName | LastName | Email             | Phone | Role                            | ApplicationsEnabled                                                     | ApplicationsDisbaled                                      | NPI | Health System     |
      | Login with Super Admin User and create user with Executive role                       | Super Admin | FirstName | LastName | test.automatemail |       | Executive                       | Episodes, Episodes 2.0, Reports                                         | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Manager role                         | Super Admin | FirstName | LastName | test.automatemail |       | Manager                         | Episodes, Episodes 2.0, Reports                                         | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Case Manager role                    | Super Admin | FirstName | LastName | test.automatemail |       | Case Manager                    | Episodes, Episodes 2.0, Reports                                         | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Physicians role                      | Super Admin | FirstName | LastName | test.automatemail |       | Physicians                      | Episodes, Episodes 2.0, Reports, Physician Connect                      | Administration                                            | NPI | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy TCS role                      | Super Admin | FirstName | LastName | test.automatemail |       | Remedy TCS                      | Episodes, Episodes 2.0, Reports, TCI                                    | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy LPN role                      | Super Admin | FirstName | LastName | test.automatemail |       | Remedy LPN                      | Episodes, Episodes 2.0, Reports, TCI                                    | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy RN role                       | Super Admin | FirstName | LastName | test.automatemail |       | Remedy RN                       | Episodes, Episodes 2.0, Reports, TCI                                    | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Field RN role                 | Super Admin | FirstName | LastName | test.automatemail |       | Remedy Field RN                 | Episodes, Episodes 2.0, Reports, TCI                                    | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy PM role                       | Super Admin | FirstName | LastName | test.automatemail |       | Remedy PM                       | Episodes, Episodes 2.0, Reports, TCI                                    | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Sales Team role               | Super Admin | FirstName | LastName | test.automatemail |       | Remedy Sales Team               | Reports, TCI                                                            | Administration, Physician Connect, Episodes, Episodes 2.0 |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Executive role                | Super Admin | FirstName | LastName | test.automatemail |       | Remedy Executive                | Episodes, Episodes 2.0, Reports, TCI                                    | Administration, Physician Connect                         |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Prospective Partner Executive role   | Super Admin | FirstName | LastName | test.automatemail |       | Prospective Partner Executive   |                                                                           | Administration, Physician Connect, Episodes, Episodes 2.0, Reports |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Other role                    | Super Admin | FirstName | LastName | test.automatemail |       | Remedy Other                    | Episodes, Episodes 2.0, TCI                                             | Administration, Physician Connect, Reports                |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Partner Program Administrator role   | Super Admin | FirstName | LastName | test.automatemail |       | Partner Program Administrator   | Episodes, Episodes 2.0, Reports, Physician Connect                      | Administration                                            |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Program Administrator role    | Super Admin | FirstName | LastName | test.automatemail |       | Remedy Program Administrator    | Episodes, Episodes 2.0, Reports, Physician Connect, TCI                 | Administration                                            |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Partner Technical Administrator role | Super Admin | FirstName | LastName | test.automatemail |       | Partner Technical Administrator | Episodes, Episodes 2.0, Reports, Physician Connect, Administration      |                                                           |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Remedy Technical Administrator role  | Super Admin | FirstName | LastName | test.automatemail |       | Remedy Technical Administrator  | Episodes, Episodes 2.0, Reports, Physician Connect, Administration, TCI |                                                           |     | Stamford Hospital |
      #| Login with Super Admin User and create user with Transitional Case Manager role       | Super Admin | FirstName | LastName | test.automatemail |       | Transitional Case Manager       | Episodes, Reports                                                       | Episodes 2.0, Administration, Physician Connect           |     | Stamford Hospital |
