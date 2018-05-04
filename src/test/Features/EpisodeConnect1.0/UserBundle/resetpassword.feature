@EC1Smoke
Feature: Reset Password
@ECFailedTestRerun
  Scenario: To verify that Email format validation is displayed for Username field
    Given I am on the login page
    When I click on the forgot password button
    Then I enter qa.adminuser@yopmail.com for changing password
    And I click Send Email button
    And I should see "We've just sent you an email to reset your password." text in reset password
    Then I am on the login page
    And I click on the forgot password button
    And I click Send Email button
    Then I verify the validation message "Can't be blank"
