 Feature: Create new User

  Scenario Outline: Super Administrator can create all user
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    When  I click on Create User button
    Then I should see "Create User" on the user creation page
    When I click the Organizational Role Field
    Then I pick a Organizational <Role>
    And I fill in First Name with "Newuser"
    Then I fill in Last Name with <lastName>
    And I enter Email with <email>
    #Then I enter Phone field with "302-459-1143"
    And I click on Facility field
    And I search for health system with <HealthSystem Search>
    And I wait for 1000 milli seconds
    And I select a <Health System>
    And I wait for 1000 milli seconds
    When I enter <Provider> search text
    And I wait for 3000 milli seconds
    Then I click the select all Facilites checkbox for the provider
    And I wait for 2000 milli seconds
    Then I select all the application for the role
    And I click on Create button
    And I wait for 2000 milli seconds
    Then I should see header text "User Management"
    #Then I go to mail verification page
    #When I enter the <email> for verification
   # And I click on check inbox button
   # Then I select the email to check
    #And I click on the confirm account link
    # I switch to new window
    #And I should see "Reset Password"
    #And I enter new <Password>
    #And I enter <Password> to confirm
    #Then I click on chnage password button
    #Then I should see "Reset Password"
    ##And I close current Window
    #Then I switch back to old window
    #Then I click check for new mails button
    #And I click on Confirm Password Link
    #And I switch to new window
    #And I enter email field <email> for login
    #And I enter password field <Password> for Login
    #And I click Access button
    #And I enter NPI field with <NPI>


    Examples:

   |  lastName               |       email                              |      Role                            | HealthSystem Search  |    Health System        |   Provider      |          |
   |  ExecutiveTest          |    executivetest0003@yopmail.com        |      Executive                       |         tea          |  TeamHealth            |    good          |                      |
   #|  ManagerTest           |    managerexample01@yopmail.com          |      Manager                         |         tow          |  (A) Allentown          |   Testing1      |
   #|  CaseManagerTest       |    casemanagerexample01@yopmail.com      |      Case Manager                    |         ent          |  (A) Allentown          |   Testing1      |
   #|  PhysicianTest         |    physicianexample01@yopmail.com        |      Physician                       |         ers          |  (T) Anderson           |   Testing1      |
    #|  RemedyTCSTest         |    remedytcsexample01@yopmail.com       |      Remedy TCS                      |         pit          |  (SLW) Warren Hospital  |   Testing1      |
   #|  RemedyLPNTest         |    remedylpnexample01@yopmail.com        |      Remedy LPN                      |         ers          |  (T) Anderson           |   Testing1      |
   #|  RemedyRNTest          |    remedyrnexample01@yopmail.com         |      Remedy RN                       |         pit          |  (SLW) Warren Hospital  |   Testing1      |
   #|  RemedyFieldRNTest     |    remedyfieldrnexample01@yopmail.com    |      Remedy Field RN                 |         arr          |  (SLW) Warren Hospital  |   Testing1      |
   #|  RemedyPMTest          |    remedypmexample01@yopmail.com         |      Remedy RN                       |         ent          |  (A) Allentown          |   Testing1      |
   #|  RemedyAdminTest       |    remedyadminexample01@yopmail.com      |      Remedy Admin                    |         ent          |  (A) Allentown          |   Testing1      |
   #|  RemedySalesTeamTest   |    remedysalesteamexample01@yopmail.com  |      Remedy Sales Team               |         ent          |  (A) Allentown          |   Testing1      |
   #|  PatientTest           |    remedypatientexample01@yopmail.com    |      Patient                         |         ers          |  (T) Anderson           |   Testing1      |
   #|  CareGivertTest        |    remedycaregiverexample01@yopmail.com  |      Care Giver                      |         arr          |  (SLW) Warren Hospital  |   Testing1      |
   #|  RemedyExtecutiveTest  |    remedyexecutiveexample01@yopmail.com  |      Remedy Executive                |         arr          |  (SLW) Warren Hospital  |   Testing1      |
   #|  ProPartnerExcTest     |    propartnerexeexample01@yopmail.com    |      Prospective Partner Executive   |         arr          |  (SLW) Warren Hospital  |   Testing1      |
   #|  ProPartnerManTest     |    propartnermanexample01@yopmail.com    |      Prospective Partner Manager     |         ers          |  (T) Anderson           |   Testing1      |
   #|  RemedyOtherTest       |    remedyotherexample01@yopmail.com      |      Remedy Other                    |         ers          |  (T) Anderson           |   Testing1      |
   #|  PartProgramAdminTest  |    partprogramadminexample01@yopmail.com |      Partner program Administrator   |         all          |  (T) Anderson           |   Testing1      |
   #|  RemedyProgAdminTest   |    remedyprogadminexample01@yopmail.com  |      Remedy program Administrator    |         all          |  (A) Allentown          |   Testing1      |
   #|  PartnerTechAdminTest  |    partnertechadminxample01@yopmail.com  |      Partner Technical Administrator |         all          |  (A) Allentown          |   Testing1      |
   #|  RemedyTechAdminTest   |    remedytechadminxample01@yopmail.com   |      Remedy Technical Administrator  |         all          |  (A) Allentown          |   Testing1      |




  #Scenario Outline: verify that Partner technical administrator user able to create users in facilities for which they have access
 # no data to implement this scenario
    #Examples:

   #Scenario: Create Users with Bulk import

     #Given I am on the login page
     #When I log in as super user
     #And I wait for 1000 milli seconds
     #Then I should see Tile text <Administration>
     #And I click on the "Administration" tile
     #And I wait for 1000 milli seconds
     #Then I click on the "Import Users" Button
     #And I upload file for bulk load users
     #And I wait for 3000 milli seconds
     #And I verify the Success Message



   Scenario:  Verify required filed
      Given I am on the login page
      When I log in as super user
     And I wait for 1000 milli seconds
     Then I should see Tile text User Admin
      And I click on the "User Admin" tile
     Then I should see header text "User Management"
      When  I click on Create User button
      Then I should see "Create User" on the user creation page
     # Then I click the Organizational Role Field
      And I fill in First Name with ""
      And I fill in Last Name with text ""
      And I enter Email with text ""
      And I enter Phone field with "sdgv"
      #Then I verify Organizational Role Required Message "role is required"
      Then I verify First Name Required Message "First Name is required"
      Then I verify Last Name Required Message "Last Name is required"
      And I fill in Last Name with RequiredFieldTest
      Then I verify email required message "Email is required"
      Then Verify Phone validation message "Not a valid phone number"
   
   
    Scenario: Email field verification test
      Given I am on the login page
      When I log in as super user
      And I wait for 2000 milli seconds
      Then I should see Tile text User Admin
      And I click on the "User Admin" tile
      Then I should see header text "User Management"
      When  I click on Create User button
       Then I should see "Create User" on the user creation page
      Then I click the Organizational Role Field
      Then I pick a Organizational Case Manager
      And I fill in First Name with "Shumontest"
      Then I fill in Last Name with Email test
      And I enter Email with fhsjsjd
      Then I enter Phone field with "4559994948"
      Then I verify email required message "Please enter a valid email address (example: name@domain.com)"

   Scenario: NPI field required validation for Physitian Users
     Given I am on the login page
     When I log in as super user
     And I wait for 1000 milli seconds
     Then I should see Tile text User Admin
     And I click on the "User Admin" tile
     Then I should see header text "User Management"
     When  I click on Create User button
     And I wait for 1000 milli seconds
     Then I should see "Create User" on the user creation page
     When I click the Organizational Role Field
     And I pick a Organizational Physicians
     And I fill in First Name with "Shumontest"
     Then I fill in Last Name with NPITest
     And I enter Email with npitest@yopmail.com
     When I fill in NPI Field with ""
     Then I enter Phone field with "302-459-1143"
     Then I verify NPI Required Message "NPI is required"











