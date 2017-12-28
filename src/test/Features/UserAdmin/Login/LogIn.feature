Feature: User admin Login Logout test

  Scenario: UI verification of Login page
    Given I am on the login page
    And I should see Log in widget
    Then I should see email textbox field
    Then I should verify watermark text appearing under email textbox field
    Then I should see password textbox field
    Then I should verify watermark text appearing under password textbox field
    Then I should see forgot password link
    Then I should see Log In button

  Scenario Outline: Login with valid credentials
    Given I am on the login page
    And I should see Log in widget
    When I enter email field <Email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    And I click on the top user account link
    And I wait for 1000 milli seconds
    Then I select Log Out option from the dropdown

    Examples: 
      | Email                                  |
      | lbarinstein+qaadmin@remedypartners.com |
      | RTAUSER@mailinator.com                 |
      | PTAUSER@mailinator.com                 |

  Scenario: Login with blank email and password and verify the validation message
    Given I am on the login page
    And I should see Log in widget
    Then I click Access button
    Then I verify the validation message "Can't be blank"
    
    Scenario: Login with blank email or password and verify the validation message
    Given I am on the login page
    And I should see Log in widget
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I verify the validation message "Can't be blank"
    Then I refresh the page
    And I wait for 2000 milli seconds
    Then I enter email "abc@mailinator.com" for Login
    And I wait for 2000 milli seconds
    Then I click Access button
    Then I verify the validation message "Can't be blank"
    
    Scenario: Login with valid email and invalid password and verify the error message
    Given I am on the login page
    And I should see Log in widget
    Then I enter email "abc@mailinator.com" for Login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I verify the error message "Invalid credentials"
       
 Scenario: Change password for user
    Given I am on the login page
    When I click on the forgot password button
    #And I should see text for reset password "Reset Password"
    Then I enter lbarinstein+qaadmin@remedypartners.com for changing password
    #And I enter new Testing1
    #And I enter Testing1 to confirm
    #Then I click on change password button
    #Then I click on button with text "Send Email" on page
    #TODO - Open bug for user admin PA-1044
    #And I should see password change confirmation "We've just sent you an email to reset your password."

  Scenario: Cancel forget password event
    Given I am on the login page
    #When I click on the forgot password button
    #And I should see text for reset password "Reset Password"
    #Then I click on cancel button
    #And I should see Log in widget