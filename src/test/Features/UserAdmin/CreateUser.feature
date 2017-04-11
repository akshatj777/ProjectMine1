Feature: Create new User

  Scenario Outline: Super Administrator can create all user
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
    And I wait for 2000 milli seconds
    Then I should see header text "User Management"
    Then I go to mail verification page
    When I enter the email for verification for <Email>
    And I click on Go button
    Then I select the email to check
    And I click on the confirm account link
    And I switch to new window
    # Upon clicking on confirm my account from welcome email, the below step is redirecting to EC1 Dashboard Page
    # And I should see "Reset Password"
    And I enter new <Password>
    And I enter <Password> to confirm
    Then I click on change password button
    And I wait for 2000 milli seconds
    # Upon clicking change password button, the below step is redirecting to EC1 Dashboard page.
    # Then I should see "Reset Password"
    # And I close current Window
    Then I switch back to old window
    Then I click check for new mails button
    And I wait for 10000 milli seconds
    And I click on Confirm Password Link
    And I switch to new window
    And I wait for 10000 milli seconds
    #And I enter email field <email> for login
    And I enter password field <Password> for Login
    And I click Access button
    And I wait for 10000 milli seconds

    #And I enter NPI field with <NPI>
    Examples: 
      | NPI        | Email           | lastName                       | Role              | HealthSystem Search | Health System     | Provider | Phone        | payer    | Password |
      | 1234567890 | Phy             | Physicians                     | Physicians        | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | Exe             | Executive                      | Executive         | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | Mngr            | Manager                        | Manager           | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | RemedyTCS       | Remedy TCS                     | Remedy TCS        | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | RemedyLPN       | Remedy LPN                     | Remedy LPN        | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | RemedyFieldRN   | Remedy Field RN                | Remedy Field RN   | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | RemedyPM        | Remedy PM                      | Remedy PM         | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | RemedySalesTeam | Remedy Sales Team              | Remedy Sales Team | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
      |            | RemedyTechAdmin | Remedy Technical Administrator | Remedy Sales Team | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | Testing1 |
