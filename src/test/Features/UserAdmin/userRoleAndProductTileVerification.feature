Feature: Verification of corresponding Product tile as per user role

  Scenario Outline: Product tile verification for all role on Create user page
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

  Scenario Outline: Super Admin create all User and verifies the Product tile as per selected user role
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
    And I wait for 6000 milli seconds
    Then I select all the application for the role
    And I turn off the share file application
    And I wait for 3000 milli seconds
    And I click on Create button
    And I wait for 10000 milli seconds
    Then I should see header text "User Management"
    And I wait for 6000 milli seconds
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
    And I wait for 2000 milli seconds
    And I switch to frame under received mail content
    Then I click on change my password link under recieved mail content
    And I switch to new window
    And I wait for 10000 milli seconds
    And I enter password <Password> to set new password
    And I wait for 1000 milli seconds
    And I reenter new <Password> password to set new password
    Then I click on change password button to set new password
    And I wait for 2000 milli seconds
    And I enter email <Email> for login after password mail verification
    And I enter password field <Password> for Login after mail verification
    And I click Access button
    And I wait for 10000 milli seconds
    Then I should see Tile text <Episode1>
    And I should see Tile text <RemedyU>
    And I should see Tile text <Reports>
    And I should see Tile text <Administration>
    And I should see Tile text <Episode2>
    And I should see Tile text <Physican connect>
    And I should see Tile text <Institute>
    And I wait for 2000 milli seconds
    And I click on Episode1 tile under specific user login page <Episode1> and verify the userrole <userroletext>
    And I click on Institute tile under specific user login page <Institute>
    And I click on Reports tile under specific user login page <Reports>
    And I click on Episodes two tile under specific user login page <Episode2>
    And I click on RemedyU tile under specific user login page <RemedyU>
    And I click on Physican connect tile under specific user login page <Physican connect>
    And I click on Internal Support option from dropdown under specific user login page <Internal Support>
    Then I select Support option from the dropdown under specific user login page <Support>
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "Password Reset"
    And I click Okay button for reset password popup
    And I wait for 2000 milli seconds
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Role                            | Email | lastName                        | HealthSystem Search | Health System     | Provider | Phone        | payer    | NPI        | Password | Episode1 | RemedyU | Reports | Episode2     | Institute | Physican connect             | Administration | userroletext   | Internal Support | Support |
      | Remedy Technical Administrator  | RTA   | Remedy Technical Administrator  | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey | User Admin     | ROLE_ADMIN     | Internal Support | Support |
      | Executive                       | EXE   | Executive                       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PRM       | Internal Support | Support |
      | Manager                         | MNGR  | Manager                         | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PRM       |                  | Support |
      | Case Manager                    | CMNGR | Case Manager                    | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_TCS       |                  | Support |
      | Physicians                      | PHY   | Physicians                      | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | 1234567890 | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey |                | ROLE_CLINICIAN |                  | Support |
      | Remedy TCS                      | RTCS  | Remedy TCS                      | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_TCS       | Internal Support | Support |
      | Remedy LPN                      | RLPN  | Remedy LPN                      | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_LPN       | Internal Support | Support |
      | Remedy RN                       | RRN   | Remedy RN                       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_RN        | Internal Support | Support |
      | Remedy Field RN                 | RFRN  | Remedy Field RN                 | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_FRN       | Internal Support | Support |
      | Remedy PM                       | RPM   | Remedy PM                       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PM        | Internal Support | Support |
      | Remedy Sales Team               | RST   | Remedy Sales Team               | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 |          | RemedyU | Reports |              | Institute |                              |                |                | Internal Support |         |
      | Remedy Executive                | REXE  | Remedy Executive                | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PM        | Internal Support | Support |
      | Prospective Partner Executive   | PPE   | Prospective Partner Executive   | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 |          | RemedyU |         |              | Institute |                              |                |                |                  |         |
      | Remedy Other                    | RO    | Remedy Other                    | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU |         | Episodes 2.0 | Institute |                              |                | ROLE_PRM       | Internal Support | Support |
      | Partner Program Administrator   | PPA   | Partner Program Administrator   | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey |                | ROLE_PRM       | Internal Support | Support |
      | Remedy Program Administrator    | RPA   | Remedy Program Administrator    | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey |                | ROLE_PRM       | Internal Support | Support |
      | Partner Technical Administrator | PTA   | Partner Technical Administrator | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey | User Admin     | ROLE_PM        | Internal Support | Support |
      | Transitional Case Manager       | TCM   | Transitional Case Manager       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports |              | Institute |                              |                | ROLE_TCS       |                  | Support |
      | Downstream Provider             | DP    | Downstream Provider             |                     |                   | *        | 302-459-1143 |          |            | Testing1 |          |         |         | Episodes 2.0 | Institute |                              |                |                |                  | Support |

  Scenario Outline: Super Admin create User with different health system, provider and few product tiles and verifies the Product tiles as per selected user role
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
    Then I select the facility <Facility> checkbox for the <Provider>
    And I wait for 6000 milli seconds
    Then I select <Label1> product tile for user creation
    Then I select <Label2> product tile for user creation
    And I wait for 3000 milli seconds
    And I click on Create button
    And I wait for 10000 milli seconds
    Then I should see header text "User Management"
    And I wait for 6000 milli seconds
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
    And I wait for 2000 milli seconds
    And I switch to frame under received mail content
    Then I click on change my password link under recieved mail content
    And I switch to new window
    And I wait for 10000 milli seconds
    And I enter password <Password> to set new password
    And I wait for 1000 milli seconds
    And I reenter new <Password> password to set new password
    Then I click on change password button to set new password
    And I wait for 2000 milli seconds
    And I enter email <Email> for login after password mail verification
    And I enter password field <Password> for Login after mail verification
    And I click Access button
    And I wait for 10000 milli seconds
    Then I should see Tile text <Episode1>
    Then I should see Tile text <RemedyU>
    Then I should see Tile text <Reports>
    Then I should see Tile text <Administration>
    Then I should see Tile text <Episode2>
    Then I should see Tile text <Physican connect>
    Then I should see Tile text <Institute>
    And I wait for 2000 milli seconds
    And I click on Episode1 tile under specific user login page <Episode1> and verify the userrole <userroletext>
    And I click on Institute tile under specific user login page <Institute>
    And I click on Reports tile under specific user login page <Reports>
    And I click on Episodes two tile under specific user login page <Episode2>
    And I click on RemedyU tile under specific user login page <RemedyU>
    And I click on Physican connect tile under specific user login page <Physican connect>
    And I click on Internal Support option from dropdown under specific user login page <Internal Support>
    Then I select Support option from the dropdown under specific user login page <Support>
    Then I select Reset Password option from the dropdown
    And I should see text popup for reset password "Password Reset"
    And I click Okay button for reset password popup
    And I wait for 2000 milli seconds
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Role                            | Email | lastName                        | HealthSystem Search | Health System     | Provider | Phone        | payer    | NPI        | Password | Episode1 | RemedyU | Reports | Episode2     | Institute | Physican connect             | Administration | userroletext   | Internal Support | Support |
      | Remedy Technical Administrator  | RTA   | Remedy Technical Administrator  | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey | User Admin     | ROLE_ADMIN     | Internal Support | Support |
      | Executive                       | EXE   | Executive                       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PRM       | Internal Support | Support |
      | Manager                         | MNGR  | Manager                         | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PRM       |                  | Support |
      | Case Manager                    | CMNGR | Case Manager                    | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_TCS       |                  | Support |
      | Physicians                      | PHY   | Physicians                      | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare | 1234567890 | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey |                | ROLE_CLINICIAN |                  | Support |
      | Remedy TCS                      | RTCS  | Remedy TCS                      | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_TCS       | Internal Support | Support |
      | Remedy LPN                      | RLPN  | Remedy LPN                      | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_LPN       | Internal Support | Support |
      | Remedy RN                       | RRN   | Remedy RN                       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_RN        | Internal Support | Support |
      | Remedy Field RN                 | RFRN  | Remedy Field RN                 | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_FRN       | Internal Support | Support |
      | Remedy PM                       | RPM   | Remedy PM                       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PM        | Internal Support | Support |
      | Remedy Sales Team               | RST   | Remedy Sales Team               | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 |          | RemedyU | Reports |              | Institute |                              |                |                | Internal Support |         |
      | Remedy Executive                | REXE  | Remedy Executive                | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute |                              |                | ROLE_PM        | Internal Support | Support |
      | Prospective Partner Executive   | PPE   | Prospective Partner Executive   | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 |          | RemedyU |         |              | Institute |                              |                |                |                  |         |
      | Remedy Other                    | RO    | Remedy Other                    | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU |         | Episodes 2.0 | Institute |                              |                | ROLE_PRM       | Internal Support | Support |
      | Partner Program Administrator   | PPA   | Partner Program Administrator   | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey |                | ROLE_PRM       | Internal Support | Support |
      | Remedy Program Administrator    | RPA   | Remedy Program Administrator    | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey |                | ROLE_PRM       | Internal Support | Support |
      | Partner Technical Administrator | PTA   | Partner Technical Administrator | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports | Episodes 2.0 | Institute | Gainsharing Physician Survey | User Admin     | ROLE_PM        | Internal Support | Support |
      | Transitional Case Manager       | TCM   | Transitional Case Manager       | Stamford            | Stamford Hospital | *        | 302-459-1143 | Medicare |            | Testing1 | Episodes | RemedyU | Reports |              | Institute |                              |                | ROLE_TCS       |                  | Support |
      | Downstream Provider             | DP    | Downstream Provider             |                     |                   | *        | 302-459-1143 |          |            | Testing1 |          |         |         | Episodes 2.0 | Institute |                              |                |                |                  | Support |
