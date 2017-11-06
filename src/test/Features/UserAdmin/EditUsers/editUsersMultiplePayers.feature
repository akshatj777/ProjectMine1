Feature: Edit Users with multiple payers

  Scenario Outline: Super Administrator edit users to different role
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    Then I enter search box with <Search>
    And I click on the username card under user admin page
    And I verify the user details page for editing
    And I verify the user <Email> address
    Then I verify product tiles appear for user under user edit details page
    Then I clicked on Edit button under user Role row
    And I clicked on role tab to edit the user role assigned
    And I should see dropdown list to select role
    Then I clicked <Role1> under edit user role tab to edit the role
    Then I clicked on Save button under edit user role tab
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    Then I clicked on Edit button under user Phone row
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "7523648621"
    Then I clicked on Save button under edit user Phone tab
    Then I verify the Permissions field
    Then I clicked on Edit button under permissions data field
    Then I clicked on Payer field to edit the payer
    Then I clicked on Medicare from dropdown list of payer
    Then I clicked on search field under Health system Name
    Then I enter "Mountainside Hospital" on search field under Health system Name
    Then I clicked on Mountainside Hospital from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    Then I enter "*" on search field under Provider Name
    Then I clicked on select all facilities under Provider Name
    Then I clicked on save button under permissions data field
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Search                  | Role1                         | Email                               |
      | MultipleManager         | Executive                     | MultipleManager@yopmail.com         |
      | MultipleExecutive       | Manager                       | multipleexecutive@yopmail.com       |
      | MultipleRemedyTcs       | Remedy LPN                    | MultipleRemedyTcs@yopmail.com       |
      | MultipleRemedyLpn       | Remedy TCS                    | MultipleRemedyLpn@yopmail.com       |
      | MultipleRemedyRn        | Remedy Field RN               | MultipleRemedyRn@yopmail.com        |
      | MultipleRemedyFieldRn   | Remedy RN                     | MultipleRemedyFieldRn@yopmail.com   |
      | MultipleRemedyPm        | Remedy Sales Team             | MultipleRemedyPm@yopmail.com        |
      | MultipleRemedySalesTeam | Remedy PM                     | MultipleRemedySalesTeam@yopmail.com |
      | MultipleRemedyExecutive | Prospective Partner Executive | MultipleRemedyExecutive@yopmail.com |
      | MultiplePPE             | Remedy Executive              | MultiplePPE@yopmail.com             |
      | MultipleRemedyOther     | Partner Program Administrator | MultipleRemedyOther@yopmail.com     |
      | MultiplePPA             | Remedy Other                  | MultiplePPA@yopmail.com             |
      | MultipleRPA             | Transitional Case Manager     | MultipleRPA@yopmail.com             |
      | MultipleTCM             | Remedy Program Administrator  | MultipleTCM@yopmail.com             |

  Scenario Outline: Super Administrator edit users users back to its previous state
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    Then I enter search box with <Search>
    And I click on the username card under user admin page
    And I verify the user details page for editing
    Then I verify product tiles appear for user under user edit details page
    Then I clicked on Edit button under user Role row
    And I clicked on role tab to edit the user role assigned
    And I should see dropdown list to select role
    Then I clicked <Role2> under edit user role tab to edit the role
    Then I clicked on Save button under edit user role tab
    And I verify the user role again
    Then I clicked on Edit button under user Phone row
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "8358654789"
    Then I clicked on Save button under edit user Phone tab
    Then I verify the Permissions field
    Then I verify the text under permissions data section
    Then I clicked on Edit button under permissions data field
    And I clicked on remove button of Mountainside Hospital row under permission field
    And I wait for popup to remove Mountainside Hospital under permission field
    And I clicked on remove button appearing on popup for Mountainside Hospital
    Then I clicked on save button under permissions data field
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Search                  | Role2                         |
      | MultipleManager         | Manager                       |
      | MultipleExecutive       | Executive                     |
      | MultipleRemedyTcs       | Remedy TCS                    |
      | MultipleRemedyLpn       | Remedy LPN                    |
      | MultipleRemedyRn        | Remedy RN                     |
      | MultipleRemedyFieldRn   | Remedy Field RN               |
      | MultipleRemedyPm        | Remedy PM                     |
      | MultipleRemedySalesTeam | Remedy Sales Team             |
      | MultipleRemedyExecutive | Remedy Executive              |
      | MultiplePPE             | Prospective Partner Executive |
      | MultipleRemedyOther     | Remedy Other                  |
      | MultiplePPA             | Partner Program Administrator |
      | MultipleRPA             | Remedy Program Administrator  |
      | MultipleTCM             | Transitional Case Manager     |

  Scenario Outline: Remedy Technical Administrator edit users to different role
    Given I am on the login page
    When I enter email field autortauser@mailinator.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    Then I enter search box with <Search>
    And I click on the username card under user admin page
    And I verify the user details page for editing
    And I verify the user <Email> address
    Then I verify product tiles appear for user under user edit details page
    Then I clicked on Edit button under user Role row
    And I clicked on role tab to edit the user role assigned
    And I should see dropdown list to select role
    Then I clicked <Role1> under edit user role tab to edit the role
    Then I clicked on Save button under edit user role tab after editing
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    Then I clicked on Edit button under user Phone row
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "7523648621"
    Then I clicked on Save button under edit user Phone tab
    Then I verify the Permissions field
    Then I clicked on Edit button under permissions data field
    Then I clicked on Payer field to edit the payer
    Then I clicked on Medicare from dropdown list of payer
    Then I clicked on search field under Health system Name
    Then I enter "Mountainside Hospital" on search field under Health system Name
    Then I clicked on Mountainside Hospital from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    Then I enter "*" on search field under Provider Name
    Then I clicked on select all facilities under Provider Name
    Then I clicked on save button under permissions data field
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Search                  | Role1                         | Email                               |
      | MultipleManager         | Executive                     | MultipleManager@yopmail.com         |
      | MultipleExecutive       | Manager                       | multipleexecutive@yopmail.com       |
      | MultipleRemedyTcs       | Remedy LPN                    | MultipleRemedyTcs@yopmail.com       |
      | MultipleRemedyLpn       | Remedy TCS                    | MultipleRemedyLpn@yopmail.com       |
      | MultipleRemedyRn        | Remedy Field RN               | MultipleRemedyRn@yopmail.com        |
      | MultipleRemedyFieldRn   | Remedy RN                     | MultipleRemedyFieldRn@yopmail.com   |
      | MultipleRemedyPm        | Remedy Sales Team             | MultipleRemedyPm@yopmail.com        |
      | MultipleRemedySalesTeam | Remedy PM                     | MultipleRemedySalesTeam@yopmail.com |
      | MultipleRemedyExecutive | Prospective Partner Executive | MultipleRemedyExecutive@yopmail.com |
      | MultiplePPE             | Remedy Executive              | MultiplePPE@yopmail.com             |
      | MultipleRemedyOther     | Partner Program Administrator | MultipleRemedyOther@yopmail.com     |
      | MultiplePPA             | Remedy Other                  | MultiplePPA@yopmail.com             |
      | MultipleRPA             | Transitional Case Manager     | MultipleRPA@yopmail.com             |
      | MultipleTCM             | Remedy Program Administrator  | MultipleTCM@yopmail.com             |

  Scenario Outline: Remedy Technical Administrator edit users back to its previous state
    Given I am on the login page
    When I enter email field autortauser@mailinator.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    Then I enter search box with <Search>
    And I click on the username card under user admin page
    And I verify the user details page for editing
    Then I verify product tiles appear for user under user edit details page
    Then I clicked on Edit button under user Role row
    And I clicked on role tab to edit the user role assigned
    And I should see dropdown list to select role
    Then I clicked <Role2> under edit user role tab to edit the role
    Then I clicked on Save button under edit user role tab
    And I verify the user role again
    Then I clicked on Edit button under user Phone row
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "8358654789"
    Then I clicked on Save button under edit user Phone tab
    Then I verify the text under permissions data section
    Then I clicked on Edit button under permissions data field
    And I clicked on remove button of Mountainside Hospital row under permission field
    And I wait for popup to remove Mountainside Hospital under permission field
    And I clicked on remove button appearing on popup for Mountainside Hospital
    Then I clicked on save button under permissions data field
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Search                  | Role2                         |
      | MultipleManager         | Manager                       |
      | MultipleExecutive       | Executive                     |
      | MultipleRemedyTcs       | Remedy TCS                    |
      | MultipleRemedyLpn       | Remedy LPN                    |
      | MultipleRemedyRn        | Remedy RN                     |
      | MultipleRemedyFieldRn   | Remedy Field RN               |
      | MultipleRemedyPm        | Remedy PM                     |
      | MultipleRemedySalesTeam | Remedy Sales Team             |
      | MultipleRemedyExecutive | Remedy Executive              |
      | MultiplePPE             | Prospective Partner Executive |
      | MultipleRemedyOther     | Remedy Other                  |
      | MultiplePPA             | Partner Program Administrator |
      | MultipleRPA             | Remedy Program Administrator  |
      | MultipleTCM             | Transitional Case Manager     |

  Scenario Outline: Partner Technical Administrator edit users to different role
    Given I am on the login page
    When I enter email field autoptauser@mailinator.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    Then I enter search box with <Search>
    And I click on the username card under user admin page
    And I verify the user details page for editing
    And I verify the user <Email> address
    Then I verify product tiles appear for user under user edit details page
    Then I clicked on Edit button under user Role row
    And I clicked on role tab to edit the user role assigned
    And I should see dropdown list to select role
    Then I clicked <Role1> under edit user role tab to edit the role
    Then I clicked on Save button under edit user role tab after editing
    And I verify the user role again
    Then I verify product tiles appear for user under user edit details page after role change
    Then I clicked on Edit button under user Phone row
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "7523648621"
    Then I clicked on Save button under edit user Phone tab
    Then I verify the Permissions field
    Then I clicked on Edit button under permissions data field
    Then I clicked on Payer field to edit the payer
    Then I clicked on Medicare from dropdown list of payer
    Then I clicked on search field under Health system Name
    Then I enter "Mountainside Hospital" on search field under Health system Name
    Then I clicked on Mountainside Hospital from dropdown list of Health system Name
    Then I clicked on search field under Provider Name
    Then I enter "*" on search field under Provider Name
    Then I clicked on select all facilities under Provider Name
    Then I clicked on save button under permissions data field
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Search            | Role1                         | Email                         |
      | MultipleManager   | Executive                     | MultipleManager@yopmail.com   |
      | MultipleExecutive | Manager                       | multipleexecutive@yopmail.com |
      | MultiplePPE       | Partner Program Administrator | MultiplePPE@yopmail.com       |
      | MultipleTCM       | Prospective Partner Executive | MultipleTCM@yopmail.com       |

  Scenario Outline: Partner Technical Administrator edit users back to its previous state
    Given I am on the login page
    When I enter email field autoptauser@mailinator.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    Then I enter search box with <Search>
    And I click on the username card under user admin page
    And I verify the user details page for editing
    Then I verify product tiles appear for user under user edit details page
    Then I clicked on Edit button under user Role row
    And I clicked on role tab to edit the user role assigned
    And I should see dropdown list to select role
    Then I clicked <Role2> under edit user role tab to edit the role
    Then I clicked on Save button under edit user role tab
    And I verify the user role again
    Then I clicked on Edit button under user Phone row
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "8358654789"
    Then I clicked on Save button under edit user Phone tab
    Then I verify the Permissions field
    Then I verify the text under permissions data section
    Then I clicked on Edit button under permissions data field
    And I clicked on remove button of Mountainside Hospital row under permission field
    And I wait for popup to remove Mountainside Hospital under permission field
    And I clicked on remove button appearing on popup for Mountainside Hospital
    Then I clicked on save button under permissions data field
    And I click on the top user account link
    Then I select Log Out option from the dropdown
    And I should see Log in widget

    Examples: 
      | Search            | Role2                         |
      | MultipleManager   | Manager                       |
      | MultipleExecutive | Executive                     |
      | MultiplePPE       | Prospective Partner Executive |
      | MultipleTCM       | Transitional Case Manager     |
