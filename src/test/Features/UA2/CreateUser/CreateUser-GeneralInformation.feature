Feature: Create User - General Information Tab

Scenario: Verify availability of fields on General Information tab while adding a user
  Given I am on the login page
  When I enter email field rkapur+devFirst2@remedypartners.com for login
  And I enter password field abcABC1! for Login
  Then I click Access button
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  And I wait for 10000 milli seconds
  When I click on Add User button
  And I wait for 3000 milli seconds
  Then I should see "Add New User" on the user creation page
  Then I verify the availability of fields "First Name"
  Then I verify the availability of fields "Last Name"
  Then I verify the availability of fields "Email"
  Then I verify the availability of fields "Phone"
  Then I verify the availability of fields "Role"
  
  Scenario: Verify availability of mandatory fields on General Information tab while adding a user
  Given I am on the login page
  When I enter email field rkapur+devFirst2@remedypartners.com for login
  And I enter password field abcABC1! for Login
  Then I click Access button
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  And I wait for 10000 milli seconds
  When I click on Add User button
  And I wait for 3000 milli seconds
  Then I should see "Add New User" on the user creation page
  Then I verify the availability of mandatory fields "First Name"
  Then I verify the availability of mandatory fields "Last Name"
  Then I verify the availability of mandatory fields "Email"
  Then I verify the availability of mandatory fields "Role"
  
  Scenario Outline: Verify the validation messages on General Information tab of Add new user
    Given I am on the login page
    When I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    And I wait for 10000 milli seconds
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    Then I click on "First Name"
    Then I click on "Last Name"
    Then I click on "Email"
    Then I click on "Phone"
    Then I click on "Role"
    And I switch the focus to Next button
    Then I verify the "First Name" validation message "<FirstNameValidationMessage>"
    Then I verify the "Last Name" validation message "<LastNameValidationMessage>"
    Then I verify the "Email" validation message "<EmailValidationMessage>"
    Then I enter Phone field with 123
    And I switch the focus to Next button
    Then I verify the "Phone" validation message "<PhoneValidationMessage>"
    Then I verify the "Role" validation message "<RoleValidationMessage>"

    Examples: 
      | FirstNameValidationMessage | LastNameValidationMessage | EmailValidationMessage | PhoneValidationMessage | RoleValidationMessage |
      | First Name is required     | Last Name is required     | Email is required      | Phone is required      | Role is required      |
  
  Scenario: Verify availability of values in Role dropdown for Super Admin on General Information tab while adding a user
  Given I am on the login page
  When I enter email field rkapur+devFirst2@remedypartners.com for login
  And I enter password field abcABC1! for Login
  Then I click Access button
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  And I wait for 10000 milli seconds
  When I click on Add User button
  Then I should see "Add New User" on the user creation page
  When I click the Organizational Role Field
  Then I verify the availability of role "Executive"
  Then I verify the availability of role "Manager"
  Then I verify the availability of role "Case Manager"
  Then I verify the availability of role "Physicians"
  Then I verify the availability of role "Remedy Technical Administrator"
  Then I verify the availability of role "Remedy TCS"
  #Then I verify the availability of role "Remedy LPN"
  Then I verify the availability of role "Remedy RN"
  Then I verify the availability of role "Remedy Field RN"
  Then I verify the availability of role "Remedy PM"
  Then I verify the availability of role "Remedy Sales Team"
  Then I verify the availability of role "Remedy Executive"
  Then I verify the availability of role "Prospective Partner Executive"
  Then I verify the availability of role "Remedy Other"
  Then I verify the availability of role "Partner Program Administrator"
  Then I verify the availability of role "Remedy Program Administrator"
  Then I verify the availability of role "Partner Technical Administrator"
  Then I verify the availability of role "Transitional Case Manager"
  Then I verify the availability of role "Downstream Provider"
  
  Scenario: Verify availability of values in Role dropdown for PTA User on General Information tab while adding a user
  Given I am on the login page
  When I enter email field rkapur+devFirst2@remedypartners.com for login
  And I enter password field abcABC1! for Login
  Then I click Access button
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  And I wait for 10000 milli seconds
  When I click on Add User button
  Then I should see "Add New User" on the user creation page
  When I click the Organizational Role Field
  Then I verify the availability of role "Executive"
  Then I verify the availability of role "Manager"
  Then I verify the availability of role "Case Manager"
  Then I verify the availability of role "Physicians"
  Then I verify the availability of role "Prospective Partner Executive"
  Then I verify the availability of role "Partner Program Administrator"
  Then I verify the availability of role "Transitional Case Manager"
  
  Scenario: Verify availability of NPI as mandatory field on General Information tab while adding a user
  Given I am on the login page
  When I enter email field rkapur+devFirst2@remedypartners.com for login
  And I enter password field abcABC1! for Login
  Then I click Access button
  #Then I should see Tile text User Admin
  #And I click on the "User Admin" tile
  #Then I should see header text "User Management"
  And I wait for 10000 milli seconds
  When I click on Add User button
  Then I should see "Add New User" on the user creation page
  When I click the Organizational Role Field
  Then I pick a Organizational Physicians
  Then I click on "NPI"
  And I switch the focus to Next button
  Then I verify the "NPI" validation message "NPI is required"
  
  Scenario Outline: Verify NPI field validations(<Scenario Description>) on General Information tab while adding a user
    Given I am on the login page
    When I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    And I wait for 10000 milli seconds
    When I click on Add User button
    Then I should see "Add New User" on the user creation page
    When I click the Organizational Role Field
    Then I pick a Organizational Physicians
    And I enter NPI field with <NPI>
    And I switch the focus to Next button
    Then I verify the "NPI" validation message "<NPIFieldValidationMessage>"

    Examples: 
      | Scenario Description    | NPI         | NPIFieldValidationMessage |
      | NPI less than 10 digits |      123564 | NPI is required           |
      | NPI as alphabets        | abcdefgihj  | NPI is required           |
      | NPI as alphanumeric     | abcde12345  | NPI is required           |
  
  Scenario Outline: Verify Email field validations(<Scenario Description>) on General Information tab while adding a user
    Given I am on the login page
    When I enter email field rkapur+devFirst2@remedypartners.com for login
    And I enter password field abcABC1! for Login
    Then I click Access button
    #Then I should see Tile text User Admin
    #And I click on the "User Admin" tile
    #Then I should see header text "User Management"
    Then I wait for 10000 milli seconds
    When I click on Add User button
    Then I wait for 2000 milli seconds
    Then I should see "Add New User" on the user creation page
    And I enter Email "<Email>" to Create user
    And I switch the focus to Next button
    Then I verify the "Email" validation message "<EmailFieldValidationMessage>"

    Examples: 
      | Scenario Description    | Email | EmailFieldValidationMessage |
      | Invalid Email ID        | abc   | Email is required           |
      | Already in use Email ID |       | Email is required           |
  
  Scenario: Validate session timeout
  Given I am on the login page
  When I log in as super user
  Then I should see Tile text User Admin
  And I click on the "User Admin" tile
  Then I should see header text "User Management"
  Then I wait for 60000 milli seconds
  Then I verify login button