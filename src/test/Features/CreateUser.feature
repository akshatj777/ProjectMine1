 Feature: Create new User

  Scenario Outline: Administrator can create all user
    Given I am on the login page
    When I log in as super user
    Then I will wait
    When I should see "Administration"
    And I click on the "Administration" tile
   Then I should see "My Dashboard"
    When  I click on Create User button
    Then I should see "Create User"
    When I click the Organizational Role Field
    And I search Organizationa Role with <Role Search>
    Then I pick a Organizational <Role>
    And I enter NPI field with <NPI>
    And I fill in First Name with "Newuser"
    Then I fill in Last Name with <lastName>
    And I enter Email with <email>
    Then I enter Phone field with "302-459-1143"
    And I click on Facility field
    And I search for facility with <Facility Search>
    And I select a <Facility>
    And I click on Create button
    And I will wait
    Then I should see " User Successfully Created"
    Then I go to mail verification page
    When I enter the <email> for verification
    And I click on check inbox button
   # Then I select the email to check
    And I click on the confirm account link
    When I switch to new window
    And I should see "Reset Password"
    And I enter new <Password>
    And I enter <Password> to confirm
    Then I click on chnage password button
    Then I should see "Reset Password"
    ##And I close current Window
    Then I switch back to old window
    Then I click check for new mails button
    And I click on Confirm Password Link
    And I switch to new window
    And I enter email field <email> for login
    And I enter password field <Password> for Login
    And I click Access button
    And I will verify user <email>


    Examples:

    |    Role Search  |  lastName             |        NPI       |       email                              |      Role                            |  Facility Search  |    Facility             |      Password   |
    |         ve      |  ExecutiveTest        |                  |    executiveexample01@yopmail.com        |      Executive                       |         arr       |  (SLW) Warren Hospital  |   Testing1      |
    |         na      |  ManagerTest          |                  |    managerexample01@yopmail.com          |      Manager                         |         tow       |  (A) Allentown          |   Testing1      |
    |         se      |  CaseManagerTest      |                  |    casemanagerexample01@yopmail.com      |      Case Manager                    |         ent       |  (A) Allentown          |   Testing1      |
    |         ci      |  PhysicianTest        |   1234567890     |    physicianexample01@yopmail.com        |      Physician                       |         ers       |  (T) Anderson           |   Testing1      |
    |         tc      |  RemedyTCSTest        |                  |    remedytcsexample01@yopmail.com        |      Remedy TCS                      |         pit       |  (SLW) Warren Hospital  |   Testing1      |
    |         lp      |  RemedyLPNTest        |                  |    remedylpnexample01@yopmail.com        |      Remedy LPN                      |         ers       |  (T) Anderson           |   Testing1      |
    |         rn      |  RemedyRNTest         |                  |    remedyrnexample01@yopmail.com         |      Remedy RN                       |         pit       |  (SLW) Warren Hospital  |   Testing1      |
    |         fi      |  RemedyFieldRNTest    |                  |    remedyfieldrnexample01@yopmail.com    |      Remedy Field RN                 |         arr       |  (SLW) Warren Hospital  |   Testing1      |
    |         pm      |  RemedyPMTest         |                  |    remedypmexample01@yopmail.com         |      Remedy RN                       |         ent       |  (A) Allentown          |   Testing1      |
    |         mi      |  RemedyAdminTest      |                  |    remedyadminexample01@yopmail.com      |      Remedy Admin                    |         ent       |  (A) Allentown          |   Testing1      |
    |         sa      |  RemedySalesTeamTest  |                  |    remedysalesteamexample01@yopmail.com  |      Remedy Sales Team               |         ent       |  (A) Allentown          |   Testing1      |
    |         pa      |  PatientTest          |                  |    remedypatientexample01@yopmail.com    |      Patient                         |         ers       |  (T) Anderson           |   Testing1      |
    |         ca      |  CareGivertTest       |                  |    remedycaregiverexample01@yopmail.com  |      Care Giver                      |         arr       |  (SLW) Warren Hospital  |   Testing1      |
    |         ex      |  RemedyExtecutiveTest |                  |    remedyexecutiveexample01@yopmail.com  |      Remedy Executive                |         arr       |  (SLW) Warren Hospital  |   Testing1      |
    |         ex      |  ProPartnerExcTest    |                  |    propartnerexeexample01@yopmail.com    |      Prospective Partner Executive   |         arr       |  (SLW) Warren Hospital  |   Testing1      |
    |         pa      |  ProPartnerManTest    |                  |    propartnermanexample01@yopmail.com    |      Prospective Partner Manager     |         ers       |  (T) Anderson           |   Testing1      |
    |         ot      |  RemedyOtherTest      |                  |    remedyotherexample01@yopmail.com      |      Remedy Other                    |         ers       |  (T) Anderson           |   Testing1      |
    |         pa      |  PartProgramAdminTest |                  |    partprogramadminexample01@yopmail.com |      Partner program Administrator   |         all       |  (T) Anderson           |   Testing1      |
    |         pr      |  RemedyProgAdminTest  |                  |    remedyprogadminexample01@yopmail.com  |      Remedy program Administrator    |         all       |  (A) Allentown          |   Testing1      |
    |         te      |  PartnerTechAdminTest |                  |    partnertechadminxample01@yopmail.com  |      Partner Technical Administrator |         all       |  (A) Allentown          |   Testing1      |
    |         te      |  RemedyTechAdminTest  |                  |    remedytechadminxample01@yopmail.com   |      Remedy Technical Administrator  |         all       |  (A) Allentown          |   Testing1      |




  #Scenario Outline: verify that Partner technical administrator user able to create users in facilities for which they have access

 # no data to implement this scenario
    #Examples:







   Scenario Outline:  Newly created user have access to the applications accoding to their role

      Given I am on the login page
      When I enter email field <email> for login
      And I enter password field <password> for Login
      Then I click Access button
      And I will verify user <email>
      And I will wait to see <Tile1>
      And I will wait to see <Tile2>
      And I will wait to see <Tile3>
      And I click on the Tile with text <Tile1>
      And I will wait
      #And I should see "My Dashboard"
      And I nevigate back
      And I click on the Tile with text <Tile2>
      And I will wait
      And I switch to new window
      And I should see "Continue to my dashboard"
      And I switch back to old window
      And I click on the Tile with text <Tile3>
      And I nevigate back

      Examples:

      |                 email           |   password       |        Tile1         |      Tile2      |      Tile3        |       Tile4      |
      #|   shumonexample01@yopmail.com   |    Testing1      |   Bundle Selection   |     Lessons     |   Reports        |                  |
      |   shumonexample02@yopmail.com   |    Testing1      |   Bundle Selection   |     Lessons     |   Reports        |                  |
      |   shumonexample03@yopmail.com   |    Testing1      |   Bundle Selection   |     Lessons     |   Reports        |                  |
     # |   shumonexample04@yopmail.com   |    Testing1      |   Bundle Selection   |     Lessons     |   Reports        |                  |
      |   shumonexample05@yopmail.com   |    Testing1      |    Administration     |     Lessons     |   Reports        |                  |



   Scenario:  Verify required filed

      Given I am on the login page
      When I log in as super user
      Then I will wait
      When I should see "Administration"
      And I click on the "Administration" tile
      Then I should see "My Dashboard"
      When  I click on Create User button
      Then I should see "Create User"
      Then I click the Organizational Role Field
      And I fill in First Name with ""
      And I fill in Last Name with text ""
      And I enter Email with text ""
      And I enter Phone field with "sdgv"
      Then I verify Organizational Role Required Message "Organizational role is required"
      Then I verify First Name Required Message "First name is required"
      Then I verify Last Name Required Message "Last name is required"
      And I fill in Last Name with RequiredFieldTest
      Then I verify email required message "E-mail is required"
      Then Verify Phone validation message "Please enter a valid phone number (example: xxx-xxx-xxxx)."
   
   
    Scenario: Email field verification test

      Given I am on the login page
      When I log in as super user
      Then I will wait
      When I should see "Administration"
      And I click on the "Administration" tile
      Then I should see "My Dashboard"
      When  I click on Create User button
      Then I should see "Create User"
      Then I click the Organizational Role Field
      And I search Organizationa Role with se
      Then I pick a Organizational Case Manager
      And I fill in First Name with "Shumontest"
      Then I fill in Last Name with Email test
      And I enter Email with fhsjsjd
      Then I enter Phone field with "4559994948"
      Then I verify email required message "Please enter a valid email address (example: name@email.com)"
      Then I enter Email with Wouefhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdjkskkdhhhhhhhhhhshdsahashas@yopmail.com
      Then I enter Phone field with "4559994948"
      And I verify email required message "E-mail cannot be more than 77 characters"
       

    Scenario: NPI field required  validation for Physitian Users


      Given I am on the login page
    When I log in as super user
    Then I will wait
    When I should see "Administration"
    And I click on the "Administration" tile
    Then I should see "My Dashboard"
    When  I click on Create User button
    Then I should see "Create User"
    When I click the Organizational Role Field
    And I search Organizationa Role with PH
    And I pick a Organizational Physicians
    And I fill in First Name with "Shumontest"
    Then I fill in Last Name with NPITest
    And I enter Email with npitest@yopmail.com
    Then I enter Phone field with "302-459-1143"
    And I click on Facility field
    And I search for facility with All
    And I select a Allentown
    And I click on Create button
    And I will wait
    Then I should see "Unable to Save User"




   Scenario Outline:  Delete all emails form Email vrification page

     When I go to mail verification page
     Then I enter the <email> for verification
     And I click on check inbox button
     And I delete all emails


     Examples:

       |              email                 |
       |    shumonexample01@yopmail.com     |
       #|    shumonexample02@yopmail.com     |
       #|    shumonexample03@yopmail.com     |
       #|    shumonexample04@yopmail.com     |
       #|    shumonexample05@yopmail.com     |