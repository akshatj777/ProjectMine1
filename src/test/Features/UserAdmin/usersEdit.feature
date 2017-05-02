Feature: User admin edit users details

  Scenario: Super Administrator can edit users
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "User Management"
    And I wait for 3000 milli seconds
    #Then I see by default the sort filter is "Last Name A-Z"
    #Then I should be able to click on DropDown list for sorting Newest to Oldest
    #Then I verify the filter for Newest to Oldest
    #Then I should be able to sort the users with Newest - Oldest sorting option
    Then I enter search box with "AutoManager1"
    And I wait for 3000 milli seconds
    And I click on the username card under user admin page
    And I wait for 3000 milli seconds
    And I verify the user details page for editing
    Then I clicked on Edit button under user Role row
    And I wait for 2000 milli seconds
    And I clicked on role tab to edit the user role assigned
    And I Wait for dropdown list to select role
    Then I clicked "Executive" under edit user role tab
    Then I clicked on Save button under edit user role tab
    And I wait for 2000 milli seconds
    And I verify the user role again
    Then I clicked on Edit button under user Phone row
    And I wait for 2000 milli seconds
    And I clicked on Phone tab to edit the user Phone number
    And I cleared the textbox field under edit user phone tab
    And I enter valid phone number "7697890904"
    Then I clicked on Save button under edit user Phone tab
    Then I verify the Permissions field
    Then I clicked on Edit button under permissions data field
    Then I clicked on Payer field to edit the payer
    And I wait for 2000 milli seconds
    #Then I enter text "Emblem Health" under payer field
    #And I wait for 2000 milli seconds
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
    
    
    
    
    
    
    
    
    
    
    