Feature: User admin edit users details

  Scenario Outline: Super Administrator edit users to different role
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
    And I verify the user <Email> address
    Then I verify product tiles appear for user under user edit details page
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I wait for 3000 milli seconds
    And I should see dropdown list to select role
    And I wait for 2000 milli seconds
    Then I clicked <Role1> under edit user role tab to edit the role
    And I wait for 3000 milli seconds
    Then I clicked on Save button under edit user role tab after editing
    And I wait for 6000 milli seconds
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    And I wait for 6000 milli seconds
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
    Then I clicked on Emblem Health from dropdown list of payer
    Then I clicked on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I enter "RP Payer Test A" on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I clicked on RP Payer Test A from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    And I wait for 2000 milli seconds
    Then I enter "*" on search field under Provider Name
    And I wait for 6000 milli seconds
    Then I clicked on select all facilities under Provider Name
    And I wait for 2000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 6000 milli seconds

    Examples: 
      | Search                 | Role1                         | Email                                 |
      | Automanager1           | Executive                     | managertesting@mailinator.com         |
      | Autoexecutive1         | Manager                       | executivetesting@mailinator.com       |
      | Autoremedytcs1         | Remedy LPN                    | remedytcstesting@mailinator.com       |
      | Autoremedylpn1         | Remedy TCS                    | remedylpntesting@mailinator.com       |
      | Autoremedyrn1          | Remedy Field RN               | remedyrntesting@mailinator.com        |
      | Autoremedyfieldrn1     | Remedy RN                     | remedyfieldrntesting@mailinator.com   |
      | Autoremedypm1          | Remedy Sales Team             | remedypmtesting@mailinator.com        |
      | Autoremedysalesteam1   | Remedy PM                     | remedysalesteamtesting@mailinator.com |
      | AutoPPartnerexecutive1 | Remedy Executive              | ppetesting@mailinator.com             |
      | Autoremedyother1       | Partner Program Administrator | remedyothertesting@mailinator.com     |
      | AutotcaseManager1      | Remedy Program Administrator  | tcmtesting@mailinator.com             |
      | Autoremedyexecutive1   | Prospective Partner Executive | remedyexecutivetesting@mailinator.com |
      | AutoPProgramadmin1     | Remedy Other                  | autoppauser@mailinator.com            |
      | Autorpadmin1           | Transitional Case Manager     | rpadmintesting@mailinator.com         |

  Scenario Outline: Super admin edit users back to its previous state
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
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I wait for 3000 milli seconds
    And I should see dropdown list to select role
    And I wait for 2000 milli seconds
    Then I clicked <Role2> under edit user role tab again
    And I wait for 3000 milli seconds
    Then I clicked on Save button under edit user role tab after editing
    And I wait for 6000 milli seconds
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Phone row
    And I wait for 4000 milli seconds
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "8358654789"
    Then I clicked on Save button under edit user Phone tab
    And I wait for 2000 milli seconds
    Then I verify the Permissions field
    And I wait for 2000 milli seconds
    Then I verify the text under permissions data section
    And I wait for 4000 milli seconds
    Then I clicked on Edit button under permissions data field
    And I wait for 4000 milli seconds
    And I clicked on remove button of RP Payer Test A row under permission field
    And I wait for 4000 milli seconds
    And I wait for popup to remove RP Payer Test A under permission field
    And I clicked on remove button appearing on popup for RP Payer Test A
    And I wait for 4000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 4000 milli seconds

    Examples: 
      | Search                 | Role2                         |
      | Automanager1           | Manager                       |
      | Autoexecutive1         | Executive                     |
      | Autoremedytcs1         | Remedy TCS                    |
      | Autoremedylpn1         | Remedy LPN                    |
      | Autoremedyrn1          | Remedy RN                     |
      | Autoremedyfieldrn1     | Remedy Field RN               |
      | Autoremedypm1          | Remedy PM                     |
      | Autoremedysalesteam1   | Remedy Sales Team             |
      | AutoPPartnerexecutive1 | Prospective Partner Executive |
      | Autoremedyother1       | Remedy Other                  |
      | AutotcaseManager1      | Transitional Case Manager     |
      | Autoremedyexecutive1   | Remedy Executive              |
      | AutoPProgramadmin1     | Partner Program Administrator |
      | Autorpadmin1           | Remedy Program Administrator  |

  Scenario Outline: Remedy Technical Administrator edit users to different role
    Given I am on the login page
    When I enter email field autortauser@mailinator.com for login
    And I wait for 1000 milli seconds
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 3000 milli seconds
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with <Search>
    And I wait for 3000 milli seconds
    And I click on the username card under user admin page
    And I wait for 3000 milli seconds
    And I verify the user details page for editing
    And I verify the user <Email> address
    Then I verify product tiles appear for user under user edit details page
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I wait for 3000 milli seconds
    And I should see dropdown list to select role
    And I wait for 2000 milli seconds
    Then I clicked <Role1> under edit user role tab to edit the role
    And I wait for 3000 milli seconds
    Then I clicked on Save button under edit user role tab after editing
    And I wait for 6000 milli seconds
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    And I wait for 6000 milli seconds
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
    Then I clicked on Emblem Health from dropdown list of payer
    Then I clicked on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I enter "RP Payer Test A" on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I clicked on RP Payer Test A from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    And I wait for 2000 milli seconds
    Then I enter "*" on search field under Provider Name
    And I wait for 4000 milli seconds
    Then I clicked on select all facilities under Provider Name
    And I wait for 2000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 6000 milli seconds

    Examples: 
      | Search                 | Role1                         | Email                                 |
      | Automanager1           | Executive                     | managertesting@mailinator.com         |
      | Autoexecutive1         | Manager                       | executivetesting@mailinator.com       |
      | Autoremedytcs1         | Remedy LPN                    | remedytcstesting@mailinator.com       |
      | Autoremedylpn1         | Remedy TCS                    | remedylpntesting@mailinator.com       |
      | Autoremedyrn1          | Remedy Field RN               | remedyrntesting@mailinator.com        |
      | Autoremedyfieldrn1     | Remedy RN                     | remedyfieldrntesting@mailinator.com   |
      | Autoremedypm1          | Remedy Sales Team             | remedypmtesting@mailinator.com        |
      | Autoremedysalesteam1   | Remedy PM                     | remedysalesteamtesting@mailinator.com |
      | AutoPPartnerexecutive1 | Remedy Executive              | ppetesting@mailinator.com             |
      | Autoremedyother1       | Partner Program Administrator | remedyothertesting@mailinator.com     |
      | AutotcaseManager1      | Remedy Program Administrator  | tcmtesting@mailinator.com             |
      | Autoremedyexecutive1   | Prospective Partner Executive | remedyexecutivetesting@mailinator.com |
      | Autorpadmin1           | Transitional Case Manager     | rpadmintesting@mailinator.com         |
      | AutoPProgramadmin1     | Remedy Other                  | autoppauser@mailinator.com            |

  Scenario Outline: Remedy Technical Admin edit users back to its previous state
    Given I am on the login page
    When I enter email field autortauser@mailinator.com for login
    And I wait for 1000 milli seconds
    And I enter password field Testing1 for Login
    Then I click Access button
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
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I wait for 3000 milli seconds
    And I should see dropdown list to select role
    And I wait for 2000 milli seconds
    Then I clicked <Role2> under edit user role tab again
    And I wait for 3000 milli seconds
    Then I clicked on Save button under edit user role tab after editing
    And I wait for 6000 milli seconds
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Phone row
    And I wait for 4000 milli seconds
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "8358654789"
    Then I clicked on Save button under edit user Phone tab
    And I wait for 2000 milli seconds
    Then I verify the Permissions field
    And I wait for 2000 milli seconds
    Then I verify the text under permissions data section
    And I wait for 4000 milli seconds
    Then I clicked on Edit button under permissions data field
    And I wait for 4000 milli seconds
    And I clicked on remove button of RP Payer Test A row under permission field
    And I wait for 4000 milli seconds
    And I wait for popup to remove RP Payer Test A under permission field
    And I clicked on remove button appearing on popup for RP Payer Test A
    And I wait for 4000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 4000 milli seconds

    Examples: 
      | Search                 | Role2                         |
      | Automanager1           | Manager                       |
      | Autoexecutive1         | Executive                     |
      | Autoremedytcs1         | Remedy TCS                    |
      | Autoremedylpn1         | Remedy LPN                    |
      | Autoremedyrn1          | Remedy RN                     |
      | Autoremedyfieldrn1     | Remedy Field RN               |
      | Autoremedypm1          | Remedy PM                     |
      | Autoremedysalesteam1   | Remedy Sales Team             |
      | AutoPPartnerexecutive1 | Prospective Partner Executive |
      | Autoremedyother1       | Remedy Other                  |
      | AutotcaseManager1      | Transitional Case Manager     |
      | Autoremedyexecutive1   | Remedy Executive              |
      | Autorpadmin1           | Remedy Program Administrator  |
      | AutoPProgramadmin1     | Partner Program Administrator |

  Scenario Outline: Partner Technical Administrator edit users to different role
    Given I am on the login page
    When I enter email field autoptauser@mailinator.com for login
    And I wait for 1000 milli seconds
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 3000 milli seconds
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    Then I enter search box with <Search>
    And I wait for 3000 milli seconds
    And I click on the username card under user admin page
    And I wait for 3000 milli seconds
    And I verify the user details page for editing
    And I verify the user <Email> address
    Then I verify product tiles appear for user under user edit details page
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I wait for 3000 milli seconds
    And I should see dropdown list to select role
    And I wait for 2000 milli seconds
    Then I clicked <Role1> under edit user role tab to edit the role
    And I wait for 3000 milli seconds
    Then I clicked on Save button under edit user role tab after editing
    And I wait for 6000 milli seconds
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    And I wait for 6000 milli seconds
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
    Then I clicked on Emblem Health from dropdown list of payer
    Then I clicked on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I enter "RP Payer Test A" on search field under Health system Name
    And I wait for 2000 milli seconds
    Then I clicked on RP Payer Test A from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    And I wait for 2000 milli seconds
    Then I enter "*" on search field under Provider Name
    And I wait for 4000 milli seconds
    Then I clicked on select all facilities under Provider Name
    And I wait for 2000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 6000 milli seconds

    Examples: 
      | Search                 | Role1                         | Email                           |
      | Automanager1           | Executive                     | managertesting@mailinator.com   |
      | Autoexecutive1         | Manager                       | executivetesting@mailinator.com |
      | AutoPPartnerexecutive1 | Partner Program Administrator | ppetesting@mailinator.com       |
      | AutoPProgramadmin1     | Prospective Partner Executive | autoppauser@mailinator.com      |
      | AutotcaseManager1      | Case Manager                  | tcmtesting@mailinator.com       |

  Scenario Outline: Partner Technical Administrator edit users back to its previous state
    Given I am on the login page
    When I enter email field autoptauser@mailinator.com for login
    And I wait for 1000 milli seconds
    And I enter password field Testing1 for Login
    Then I click Access button
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
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I wait for 3000 milli seconds
    And I should see dropdown list to select role
    And I wait for 2000 milli seconds
    Then I clicked <Role2> under edit user role tab again
    And I wait for 3000 milli seconds
    Then I clicked on Save button under edit user role tab after editing
    And I wait for 6000 milli seconds
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    And I wait for 6000 milli seconds
    Then I clicked on Edit button under user Phone row
    And I wait for 4000 milli seconds
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "8358654789"
    Then I clicked on Save button under edit user Phone tab
    And I wait for 2000 milli seconds
    Then I verify the Permissions field
    And I wait for 2000 milli seconds
    Then I verify the text under permissions data section
    And I wait for 4000 milli seconds
    Then I clicked on Edit button under permissions data field
    And I wait for 4000 milli seconds
    And I clicked on remove button of RP Payer Test A row under permission field
    And I wait for 4000 milli seconds
    And I wait for popup to remove RP Payer Test A under permission field
    And I clicked on remove button appearing on popup for RP Payer Test A
    And I wait for 4000 milli seconds
    Then I clicked on save button under permissions data field
    And I wait for 4000 milli seconds

    Examples: 
      | Search                 | Role2                         |
      | Automanager1           | Manager                       |
      | Autoexecutive1         | Executive                     |
      | AutoPPartnerexecutive1 | Prospective Partner Executive |
      | AutoPProgramadmin1     | Partner Program Administrator |
      | AutotcaseManager1      | Transitional Case Manager     |
