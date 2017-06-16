Feature: Login password test

  Scenario: Change password for user
    Given I am on the login page
    When I click on the forgot password button
    #And I should see text for reset password "Reset Password"
    Then I enter lbarinstein+qaadmin@remedypartners.com for changing password
    #And I enter new Testing1
    #And I enter Testing1 to confirm
    #Then I click on change password button
    Then I click on button with text "Send Email" on page
    #TODO - Open bug for user admin PA-1044
    #And I should see password change confirmation "We've just sent you an email to reset your password."

  Scenario: Cancel forget password event
    Given I am on the login page
    When I click on the forgot password button
    #And I should see text for reset password "Reset Password"
    #Then I click on cancel button
    #And I should see Log in widget
   