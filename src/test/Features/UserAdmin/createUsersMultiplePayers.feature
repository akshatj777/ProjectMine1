Feature: Create new User for multiple payers and verify Login logout of users

  Scenario Outline: Super Administrator can create all user with multiple payers and verify login logout of created user
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
    Then I pick payer type from data section <payer1>
    And I wait for 5000 milli seconds
    And I click on Health System field
    And I search for health system with <HealthSystem1 Search1>
    And I wait for 1000 milli seconds
    And I select a <Health1 System1>
    And I wait for 1000 milli seconds
    When I enter <Provider1> search text
    And I wait for 3000 milli seconds
    Then I click the select all Facilites checkbox for the provider
    Then I verify the first payer field added under permissions section
    And I wait for 6000 milli seconds
    When I click the payer Field under data
    Then I pick payer type from data section <payer2>
    And I wait for 5000 milli seconds
    And I click on Health System field
    And I search for health system with <HealthSystem2 Search2>
    And I wait for 1000 milli seconds
    And I select a <Health2 System2>
    And I wait for 1000 milli seconds
    When I enter <Provider2> search text
    And I wait for 3000 milli seconds
    Then I click the select all Facilites checkbox for the provider
    And I wait for 4000 milli seconds
    Then I verify the second payer field added under permissions section
    Then I select all the application for the role
    And I turn off the share file application
    And I click on Create button
    And I wait for 4000 milli seconds
    Then I should see header text "User Management"
    And I wait for 4000 milli seconds
    Then I go to mail verification page
    When I enter the email for verification for <Email>
    And I click on Go button
    Then I select the email to check
    And I wait for 2000 milli seconds
    And I click on the confirm account link
    And I switch to new window
    When I enter the email <Email> to generate password
    Then I click on send email button
    Then I switch back to old window
    And I wait for 10000 milli seconds
    Then I click check for new mails button
    And I wait for 10000 milli seconds
    And I click on the email received to change your password
    And I wait for 2000 milli seconds
    Then I click on change my password link
    And I switch to new window
    And I wait for 10000 milli seconds
    And I enter new <Password>
    And I wait for 1000 milli seconds
    And I enter <Password> to confirm
    Then I click on change password button
    And I wait for 2000 milli seconds
    And I enter email <Email> for login
    And I enter password field <Password> for Login
    And I click Access button
    And I wait for 10000 milli seconds
    Then I should see different tiles for different user role <Role>
    Then I should see Tile text <Episode1>
    And I should see Tile text <RemedyU>
    And I should see Tile text <Reports>
    And I should see Tile text <Administration>
    And I should see Tile text <Episode2>
    And I should see Tile text <Physican connect>
    And I should see Tile text <TCI>
    And I wait for 2000 milli seconds
    And I click on Episodes tile under specific user login page
    #When I switch to new window
    #And I wait for 6000 milli seconds 
    #And I verify the header after clicking the episodes tile
    #Then I switch back to old window
    And I wait for 4000 milli seconds
    And I click on Episodes 2 tile under specific user login page
    #And I wait for 6000 milli seconds
    #And I Verify the header after clicking the episodes 2 tile
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget
    
    
    Examples: 
      | NPI        | Email                 | lastName                       | Role                           | HealthSystem2 Search2 | Health2 System2   | Provider2 | Phone        | payer2        | Password | Episode1 | RemedyU | Reports | Episode2     | TCI       | Physican connect | Administration | HealthSystem1 Search1 | Health1 System1   | Provider1 | payer1        |
      |            | PPA                   | Partner Program Administrator  | Partner Program Administrator  | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Physican connect |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RPA                   | Remedy Program Administrator   | Remedy Program Administrator   | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Physican connect |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | TCMngr                | Transitional Case Manager      | Transitional Case Manager      | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports |              | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      | 1234567890 | Phy                   | Physicians                     | Physicians                     | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Physican connect |                | Stamford              | Stamford Hospital | *         | Medicare      | 
      |            | Exe                   | Executive                      | Executive                      | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RmdyTCS               | Remedy TCS                     | Remedy TCS                     | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RmdyLPN               | Remedy LPN                     | Remedy LPN                     | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RmdyRN                | Remedy RN                      | Remedy RN                      | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RmdyFldRN             | Remedy Field RN                | Remedy Field RN                | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RmdyPM                | Remedy PM                      | Remedy PM                      | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RSalesTm              | Remedy Sales Team              | Remedy Sales Team              | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 |          | RemedyU | Reports |              | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RmdyExe               | Remedy Executive               | Remedy Executive               | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |   
      |            | PPrtnrExe             | Prospective Partner Executive  | Prospective Partner Executive  | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 |          | RemedyU |         |              | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | RmdyOthr              | Remedy Other                   | Remedy Other                   | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | Mngr                  | Manager                        | Manager                        | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |
      |            | CaseMngr              | Case Manager                   | Case Manager                   | RP Payer Test B       | RP Payer Test B   | *         | 302-459-1143 | Emblem Health | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                  |                | Stamford              | Stamford Hospital | *         | Medicare      |