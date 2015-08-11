  Feature: Create new User

  Background:
    Given I am on the login page
    When I log in with "lbarinstein+qaadmin@remedypartners.com" and "Testing1"

  Scenario Outline: Super Administrator  can create Technical or Partner Technical Administrator
    #Then I will wait
    #When I will wait to see "Administration"
    #And I click on the "Administration" tile
    #Then I will wait to see "My Dashboard"
    #When  I click on Create User button
    #Then I will wait to see "Create User"
    #When I click the Organizational Role Field
    #And I search Organizationa Role with <Role Search>
    #Then I pick a Organizational <Role>
    #And I fill in First Name with "Shumontest"
   # Then I fill in Last Name with <lastName>
    #And I enter Email with <email>
   # Then I enter Phone field with "302-459-1143"
    #And I click on Facility field
   # And I search for facility with <Facility Search>
    #And I select a <Facility>
    #And I click on Create button
    # I verify Sucessfull message
    Then I go to mail verification page
    When I enter the <email> for verification
    And I click on check inbox button
    #Then I select the email to check
    And I click on the confirm account link
    And I will wait to see "Reset Password"
    Then I switch to new window
    And I enter new <Password>
    And I enter <Password> to confirm
    Then I click on chnage password button
    Then I will wait to see "Reset Password"
    Then I switch back to login page
    And I delete all emails
    Then I will wait

    Examples:

    |    Role Search  |  lastName           |           email                        |      Role           |  Facility Search  |    Facility        |      Password   |
    |         se      |  Testaccount1       |    shumontest011@yopmail.com           |      Case Manager   |         en          |  Allentown       |   Testing1      |
   # |         ti      |  Testaccount2       |    shumontestaccount2@yopmail.com     |      Executive      |         en         |  Warren Hospital  |   Testing1      |
   # |         na      |  Testaccount3       |    shumontestaccount3@yopmail.com     |      Manager        |         to         |  Allentown        |   Testing1      |
   # |         ci      |  Testaccount4       |    shumontestaccount4@yopmail.com     |      Physician      |         er         |  Anderson         |    Testing1     |
   #|         mi      |  Testaccount4       |    shumontestaccount1@yopmail.com     |      Remedy Admin   |         pi         |Warren Hospital    |     Testing1      |



Scenario Outline:  Verify required filed

      Then I will wait
      When I will wait to see "Administration"
      And I click on the "Administration" tile
      Then I will wait to see "My Dashboard"
      When  I click on Create User button
      Then I will wait to see "Create User"
      And I fill in First Name with ""
      Then I fill in Last Name with <invalid Last Name>
      And I enter Email with <invalid email>
      And I enter Phone field with "1234567890"
      Then I verify First Name Required Message "First name is required"
      And I fill in First Name with "Shumon"
      Then I verify Last Name Required Message "Last name is required"
      And I fill in Last Name with <valid Last Name>
      Then I verify email required message "E-mail is required"
      And I enter Email with <valid email>
      Then Verify Phone validation message "Please enter a valid phone number (example: xxx-xxx-xxxx)."
      And I enter Phone field with "302-445-1146"
      Then I click on Create button
      And I will wait
      Then I should see "Unable to Save User"
      And I click Try Again Button
      When I click the Organizational Role Field
      And I search Organizationa Role with <Role Search>
      Then I pick a Organizational <Role>
      And I fill in First Name with "Shumon"
      Then I fill in Last Name with <valid Last Name>
      And I enter Email with <valid email>
      # this step is not required - its a bug
       And I enter Phone field with "302-445-1146"
      Then I click on Create button
      And I will wait
      And I should see "Unable to Save User"


  Examples:
  | invalid Last Name |  valid Last Name  |        invalid email       |           valid email      |   Role Search    |  Role          |
  |                   |     Alam          |                            |     test@gmail.com         |     na           |  Case Manager     |

