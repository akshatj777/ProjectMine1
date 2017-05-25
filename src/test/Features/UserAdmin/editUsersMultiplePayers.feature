Feature: Edit User for multiple payers

Scenario Outline: Super Administrator can edit users with multiple payers and remove medicare payer

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
   And I Wait for dropdown list to select role
   Then I clicked <Role1> under edit user role tab
   And I wait for 3000 milli seconds
   Then I clicked on Save button under edit user role tab
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
   And I wait for 3000 milli seconds
   And I clicked on remove button of stamford hospital row under permission field
   And I wait for 4000 milli seconds
   And I wait for popup to remove stamford hospital under permission field
   And I clicked on remove button appearing on popup
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
   Then I clicked on Edit button under user Role row
   And I wait for 4000 milli seconds
   And I clicked on role tab to edit the user role assigned
   And I wait for 6000 milli seconds
   And I Wait for dropdown list to select role
   Then I clicked <Role2> under edit user role tab
   Then I clicked on Save button under edit user role tab
   And I wait for 4000 milli seconds
   And I verify the user role again
   And I wait for 6000 milli seconds
   
   Examples: 
   
    | Search                 | Role1                         | Role2                        |
    |MultipleManager         | Executive                     | Manager                      |
    |MultipleExecutive1      | Manager                       | Executive                    |
    |MultipleRemedyTcs       | Remedy LPN                    | Remedy TCS                   |
    |MultipleRemedyLpn       | Remedy TCS                    | Remedy LPN                   |
    |MultipleRemedyRn        | Remedy Field RN               | Remedy RN                    |
    |MultipleRemedyFieldRn   | Remedy RN                     | Remedy Field RN              |
    |MultipleRemedyPm        | Remedy Sales Team             | Remedy PM                    |
    |MultipleRemedySalesTeam | Remedy PM                     | Remedy Sales Team            |
    |MultipleRemedyExecutive | Prospective Partner Executive | Remedy Executive             |
    |MultiplePPE             | Remedy Executive              | Prospective Partner Executive|
    |MultipleRemedyOther     | Partner Program Administrator | Remedy Other                 |
    |MultiplePPA             | Remedy Other                  | Partner Program Administrator|
    |MultipleRPA             | Transitional Case Manager     | Remedy Program Administrator |
    |MultipleTCM             | Remedy Program Administrator  | Transitional Case Manager    |


