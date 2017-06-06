Feature: User admin edit users details

  Scenario Outline: Super Administrator can edit users
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with <Search>
    And I wait for 3000 milli seconds
    And I click on the username card under user admin page
    And I wait for 3000 milli seconds
    And I verify the user details page for editing
    Then I verify product tiles appear for user under user edit details page
    And I wait for 6000 milli seconds
    And I verify the share file tile toggle off button
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I should see dropdown list to select role 
    Then I clicked <Role1> under edit user role tab
    And I wait for 3000 milli seconds
    Then I clicked on Save button under edit user role tab
    And I wait for 6000 milli seconds
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    And I wait for 6000 milli seconds
    And I verify the share file tile toggle off button
    And I wait for 3000 milli seconds
    Then I clicked on Edit button under user Phone row
    And I wait for 4000 milli seconds
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "7523648621"
    Then I clicked on Save button under edit user Phone tab
    And I wait for 2000 milli seconds
    Then I verify the Permissions field
    And I wait for 2000 milli seconds
    Then I clicked on Edit button under permissions data field
    And I wait for 2000 milli seconds
    Then I clicked on Payer field to edit the payer
    And I wait for 2000 milli seconds
    Then I clicked on payer dropdown
    Then I clicked on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I enter "RP Payer Test B" on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I clicked on RP Payer Test B from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    And I wait for 2000 milli seconds
    Then I enter "*" on search field under Provider Name
    And I wait for 4000 milli seconds
    Then I clicked on select all facilities under Provider Name
    And I wait for 2000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Role row
    And I wait for 4000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I wait for 6000 milli seconds
    And I should see dropdown list to select role
    Then I clicked <Role2> under edit user role tab
    Then I clicked on Save button under edit user role tab
    And I wait for 4000 milli seconds
    And I verify the user role again
    Then I verify the text under permissions data section
    And I wait for 4000 milli seconds
    Then I clicked on Edit button under permissions data field
    And I wait for 4000 milli seconds
    Then I clicked on Payer field to edit the payer
    And I wait for 4000 milli seconds
    Then I clicked on payer dropdown
    Then I clicked on search field under Health system Name
    And I wait for 4000 milli seconds
    Then I enter "Stamford" on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I clicked on Stamford Hospital from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    And I wait for 2000 milli seconds
    Then I enter "*" on search field under Provider Name
    And I wait for 4000 milli seconds
    Then I clicked on select all facilities under Provider Name
    And I wait for 4000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 4000 milli seconds
    Then I clicked on Edit button under user Phone row
    And I wait for 4000 milli seconds
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "8358654789"
    Then I clicked on Save button under edit user Phone tab
    And I wait for 3000 milli seconds
    
    Examples:
    
    | Search                 | Role1                         | Role2                        |
    |Automanager1            | Executive                     | Manager                      |
    |Autoexecutive1          | Manager                       | Executive                    |
    |Autoremedytcs1          | Remedy LPN                    | Remedy TCS                   |
    |Autoremedylpn1          | Remedy TCS                    | Remedy LPN                   |
    |Autoremedyrn1           | Remedy Field RN               | Remedy RN                    |
    |Autoremedyfieldrn1      | Remedy RN                     | Remedy Field RN              |
    |Autoremedypm1           | Remedy Sales Team             | Remedy PM                    |
    |Autoremedysalesteam1    | Remedy PM                     | Remedy Sales Team            |
    |Autoremedyexecutive1    | Prospective Partner Executive | Remedy Executive             |
    |AutoPPartnerexecutive1  | Remedy Executive              | Prospective Partner Executive|
    |Autoremedyother1        | Partner Program Administrator | Remedy Other                 |
    |AutoPProgramadmin1      | Remedy Other                  | Partner Program Administrator|
    |Autorpadmin1            | Transitional Case Manager     | Remedy Program Administrator |
    |AutotcaseManager1       | Remedy Program Administrator  | Transitional Case Manager    |
  