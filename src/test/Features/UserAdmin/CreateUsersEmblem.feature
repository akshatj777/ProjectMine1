Feature: Create new User for emblem and verify Login logut of users

  Scenario Outline: Super Administrator can create all user and verify login logout of created user
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Adming
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When I click on Create User button
    Then I should see "Create User" on the user creation page
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    And I fill in First Name with "Newuser"
    Then I fill in Last Name with <lastName>
    And I Generate Email for <Email>
    And I enter Email for <Email>
    And I wait for 2000 milli seconds
    Then I enter Phone field with <Phone>
    And I enter NPI field with <NPI>
    When I click the payer Field under data
    Then I pick payer type from data section <payer>
    And I wait for 5000 milli seconds
    And I click on Health System field
    And I search for health system with <HealthSystem Search>
    And I wait for 1000 milli seconds
    And I select a <Health System>
    And I wait for 1000 milli seconds
    When I enter <Provider> search text
    And I wait for 3000 milli seconds
    Then I click the select all Facilites checkbox for the provider
    And I wait for 2000 milli seconds
    Then I select all the application for the role
    And I turn off the share file application
    And I click on Create button
    And I wait for 4000 milli seconds
    Then I should see header text "User Management"
    Then I go to mail verification page
    When I enter the email for verification for <Email>
    And I click on Go button
    Then I select the email to check
    And I click on the confirm account link
    And I switch to new window
    When I enter the email <Email> to generate password
    Then I click on send email button
    Then I switch back to old window
    And I wait for 10000 milli seconds
    Then I click check for new mails button
    And I wait for 10000 milli seconds
    And I click on the email received to change your password
    Then I click on change my password link
    And I switch to new window
    And I wait for 10000 milli seconds
    And I enter new <Password>
    And I enter <Password> to confirm
    Then I click on change password button
    And I wait for 2000 milli seconds
    And I switch to new window
    And I enter email <Email> for login 
    And I enter password field <Password> for Login
    And I click Access button
    And I wait for 10000 milli seconds
    Then I should see Tile text <Episode1>
    And I should see Tile text <RemedyU>
    And I should see Tile text <Reports>
    And I should see Tile text <Administration>
    And I should see Tile text <Episode2>
    And I should see Tile text <Institute>
    And I should see Tile text <Physican connect>
    And I wait for 1000 milli seconds
    
    Examples: 
      | NPI        | Email                 | lastName                       | Role                           | HealthSystem Search | Health System     | Provider | Phone        | payer         | Password | Episode1 | RemedyU | Reports | Episode2     | Institute | Physican connect | Administration |
      |            | CaseMngr              | Case Manager                   | Case Manager                   | RP Payer Test A     | RP Payer Test A   | *        | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Physican connect | Administration |
      