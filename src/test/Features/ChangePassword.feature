Feature: Create new User

  Background:
    Given I am on the login page
    When I click on the forgot password button 

  Scenario Outline: Change password for user
    And I will wait to see "Reset Password"
    Then i enter <Email> for changing password
    And I enter new <Password>
    And I enter <Confirm password> to confirm
    Then I click on chnage password button
    And I will wait
    And I should see "We've just sent you an email to reset your password."


    Examples:

    |              Email                            |       Password       |      Confirm password      |
    |  lbarinstein+qaadmin@remedypartners.com       |    Testing1          |     Testing1               |


  Scenario Outline: Change Password Validation
    And I will wait to see "Reset Password"
    Then i enter <Email> for changing password
    And I enter new <Password>
    And I enter <Confirm password> to confirm
    Then I click on chnage password button
    And I will wait
    And I should verify <Message>

    Examples:

      |              Email                          |       Password       |      Confirm password      |        Message               |
      |  lbarinstein+qaadmin@remepartners.com       |    Testing1          |     Testing1               |     "User does not exist"    |