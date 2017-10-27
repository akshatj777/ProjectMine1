Feature: UA2 Front End Automation

  #Scenario: Verify availability of fields on General Information tab while adding a user
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #Then I verify the availability of fields "First Name"
  #Then I verify the availability of fields "Last Name"
  #Then I verify the availability of fields "Email"
  #Then I verify the availability of fields "Phone"
  #Then I verify the availability of fields "Role"
  #
  #Scenario: Verify availability of mandatory fields on General Information tab while adding a user
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #Then I verify the availability of mandatory fields "First Name"
  #Then I verify the availability of mandatory fields "Last Name"
  #Then I verify the availability of mandatory fields "Email"
  #Then I verify the availability of mandatory fields "Role"
  #
  #Scenario: Verify availability of values in Role dropdown on General Information tab while adding a user
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #Then I verify the availability of role "Executive"
  #Then I verify the availability of role "Manager"
  #Then I verify the availability of role "Case Manager"
  #Then I verify the availability of role "Physicians"
  #Then I verify the availability of role "Remedy Technical Administrator"
  #Then I verify the availability of role "Remedy TCS"
  #Then I verify the availability of role "Remedy LPN"
  #Then I verify the availability of role "Remedy RN"
  #Then I verify the availability of role "Remedy Field RN"
  #Then I verify the availability of role "Remedy PM"
  #Then I verify the availability of role "Remedy Sales Team"
  #Then I verify the availability of role "Remedy Executive"
  #Then I verify the availability of role "Prospective Partner Executive"
  #Then I verify the availability of role "Remedy Other"
  #Then I verify the availability of role "Partner Program Administrator"
  #Then I verify the availability of role "Remedy Program Administrator"
  #Then I verify the availability of role "Partner Technical Administrator"
  #Then I verify the availability of role "Transitional Case Manager "
  #Then I verify the availability of role "Downstream Provider"
  #
  #Scenario: Verify availability of values in Role dropdown on General Information tab while adding a user
  #Given I am on the login page
  #When I enter email field autoptauser@mailinator.com for login
  #And I enter password field Testing1 for Login
  #Then I click Access button
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #Then I verify the availability of role "Executive"
  #Then I verify the availability of role "Manager"
  #Then I verify the availability of role "Case Manager"
  #Then I verify the availability of role "Physicians"
  #Then I verify the availability of role "Prospective Partner Executive"
  #Then I verify the availability of role "Partner Program Administrator"
  #Then I verify the availability of role "Transitional Case Manager"
  #
  #Scenario Outline: Verify the validation messages on General Information tab of Add new user
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #Then I click on "First Name"
  #Then I click on "Last Name"
  #Then I click on "Email"
  #Then I click on "Phone"
  #Then I click on "Role"
  #And I switch the focus to Next button
  #Then I verify the "First Name" validation message "<FirstNameValidationMessage>"
  #Then I verify the "Last Name" validation message "<LatNameValidationMessage>"
  #Then I verify the "Email" validation message "<EmailValidationMessage>"
  #Then I verify the "Phone" validation message "<PhoneValidationMessage>"
  #Then I verify the "Role" validation message "<RoleValidationMessage>"
  #
  #Examples:
  #| FirstNameValidationMessage              | LastNameValidationMessage             | EmailValidationMessage              | PhoneValidationMessage                     | RoleValidationMessage        |
  #| First Name - Please enter a first name. | Last Name - Please enter a last name. | Email - Please enter a valid email. | Phone - Please enter a valid phone number. | Role - Please select a role. |
  #
  #Scenario: Verify availability of NPI as mandatory field on General Information tab while adding a user
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #Then I pick a Organizational Physicians
  #Then I click on "NPI"
  #And I switch the focus to Next button
  #Then I verify the "NPI" validation message "NPI - Please enter a valid NPI."
  #
  #Scenario Outline: Verify NPI field validations(<Scenario Description>) on General Information tab while adding a user
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #Then I pick a Organizational Physicians
  #And I enter NPI field with <NPI>
  #And I switch the focus to Next button
  #Then I verify the "NPI" validation message "<NPIFieldValidationMessage>"
  #
  #Examples:
  #| Scenario Description    | NPI         | NPIFieldValidationMessage       |
  #| NPI more than 10 digits | 12345678901 | NPI - Please enter a valid NPI. |
  #| NPI less than 10 digits |      123564 | NPI - Please enter a valid NPI. |
  #| NPI as alphabets        | abcdefgihj  | NPI - Please enter a valid NPI. |
  #| NPI as alphanumeric     | abcde12345  | NPI - Please enter a valid NPI. |
  #
  #Scenario Outline: Verify Email field validations(<Scenario Description>) on General Information tab while adding a user
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #And I enter Email "<Email>" to Create user
  #And I switch the focus to Next button
  #Then I verify the "Email" validation message "<EmailFieldValidationMessage>"
  #
  #Examples:
  #| Scenario Description    | Email | EmailFieldValidationMessage     |
  #| Invalid Email ID        | abc   | NPI - Please enter a valid NPI. |
  #| Already in use Email ID |       | NPI - Please enter a valid NPI. |
  #
  #Scenario: Verify applications are enabled/disabled
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #And I fill in First Name with "<FirstName>"
  #Then I fill in Last Name with <LastName>
  #And I enter Email "<Email>" to Create user
  #Then I pick a Organizational <Role>
  #Then I click on Next button
  #Then I verify application "" is unchecked
  #Then I verify application "" is unchecked
  #Then I verify application "" is unchecked
  #Then I verify application "" is unchecked
  #Then I verify application "" is unchecked
  #Then I select "<Applications>" product
  #Then I verify application "" is checked
  #Then I verify application "" is checked
  #Then I verify application "" is checked
  #Then I verify application "" is checked
  #Then I verify application "" is checked
  #
  #Scenario Outline: Verify applications are enabled/disabled
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #And I fill in First Name with "FirstName"
  #Then I fill in Last Name with LastName
  #And I enter Email "test.automatemail" to Create user
  #Then I pick a Organizational <Role>
  #Then I click on Next button
  #Then I verify the list of applications "<Applications>"
  #
  #Examples:
  #| Role                            | Applications                                                                                             |
  #| Executive                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File                                    |
  #| Manager                         | Episodes, Episodes 2.0, Reports, Lessons,Share File                                                      |
  #| Case Manager                    | Episodes, Episodes 2.0 , Reports, Lessons,Share File                                                     |
  #| Physicians                      | Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                                   |
  #| Remedy TCS                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Remedy LPN                      | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Remedy RN                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Remedy Field RN                 | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Remedy PM                       | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Remedy Sales Team               | Internal support, Reports, Lessons,Share File, TCI                                                       |
  #| Remedy Executive                | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, TCI                               |
  #| Prospective Partner Executive   | Lessons                                                                                                  |
  #| Remedy Other                    | Internal support, Episodes, Episodes 2.0, Lessons, TCI                                                   |
  #| Partner Program Administrator   | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect                 |
  #| Remedy Program Administrator    | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, TCI            |
  #| Partner Technical Administrator | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File, Physician connect, Administration |
  #| Transitional Case Manager       | Episodes, Reports, Lessons                                                                               |
  #| Downstream Provider             | Episodes 2.0                                                                                             |
  #
  #Scenario: Validate session timeout
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #Then I wait for 60000 milli seconds
  #Then I verify login button
  #
  #Scenario Outline: Verify auto selected programs in Organizations
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #And I fill in First Name with "<FirstName>"
  #Then I fill in Last Name with <LastName>
  #And I enter Email "<Email>" to Create user
  #Then I pick a Organizational <Role>
  #Then I click on Next button
  #Then I select "<Applications>" product
  #Then I click on Next button
  #Then I click on Select button
  #And I search for health system with <Health System>
  #And I select a <Health System>
  #Then I verify default program "BPCI-Model2" associated with organization
  #
  #Examples:
  #| Role      | Applications                                                          | Health System     |
  #| Executive | Internal support, Episodes, Episodes 2.0, Reports, Lessons,Share File | Stamford Hospital |
  #
  #Scenario Outline: Verify Managing Organization drop down is not available for Downstream role
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #And I fill in First Name with "FirstName"
  #Then I fill in Last Name with LastName
  #And I enter Email "test.automatemail" to Create user
  #Then I pick a Organizational Downstream Provider
  #Then I click on Next button
  #Then I select "<Applications>" product
  #Then I click on Next button
  #Then I verify unavailability of organization drop down
  #
  #Examples:
  #| Role                | Applications |
  #| Downstream Provider | Episodes 2.0 |
  #Scenario Outline: Verify search location functionality for Downstream role
  #Given I am on the login page
  #When I log in as super user
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  #When I click on Add User button
  #Then I should see "Add New User" on the user creation page
  #And I fill in First Name with "FirstName"
  #Then I fill in Last Name with LastName
  #And I enter Email "test.automatemail" to Create user
  #Then I pick a Organizational Downstream Provider
  #Then I click on Next button
  #Then I select "<Applications>" product
  #Then I click on Next button
  #Then I verify unavailability of organization drop down
  #Then I search for "<Location>"
  #Then I select the "<Location>"
  #
  #Then I click on Submit button
  #Examples:
  #| Role                | Applications | Location                      |
  #| Downstream Provider | Episodes 2.0 | -litchford Falls Healthcare A |
  #Scenario Outline: Verify Managing Organization drop down is not available for Downstream role after switching from some other role
    #Given I am on the login page
    #When I log in as super user
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    #When I click on Add User button
    #Then I should see "Add New User" on the user creation page
    #And I fill in First Name with "FirstName"
    #Then I fill in Last Name with LastName
    #And I enter Email "test.automatemail" to Create user
    #Then I pick a Organizational <Role1>
    #Then I click on Next button
    #Then I select "<Applications>" product
    #Then I click on Next button
    #Then I verify availability of organization drop down
    #Then I click on General Information tab
    #Then I pick a Organizational <Role2>
    #Then I click on Next button
    #Then I select "<Applications>" product
    #Then I click on Next button
    #Then I verify unavailability of organization drop down
    #Examples: 
      #| Role1   | Role2               | Applications |
      #| Manager | Downstream Provider | Episodes 2.0 |

  Scenario Outline: Verify Managing Organization drop down is available for other roles after switching from Downstream role
    #Given I am on the login page
    #When I log in as super user
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    #When I click on Add User button
    #Then I should see "Add New User" on the user creation page
    #And I fill in First Name with "FirstName"
    #Then I fill in Last Name with LastName
    #And I enter Email "test.automatemail" to Create user
    #Then I pick a Organizational <Role1>
    #Then I click on Next button
    #Then I select "<Applications>" product
    #Then I click on Next button
    #Then I verify unavailability of organization drop down
    Then I click on General Information tab
    #Then I pick a Organizational <Role2>
    #Then I click on Next button
    #Then I select "<Applications>" product
    #Then I click on Next button
    Then I verify availability of organization drop down

    Examples: 
      | Role1               | Role2   | Applications |
      | Downstream Provider | Manager | Episodes 2.0 |
