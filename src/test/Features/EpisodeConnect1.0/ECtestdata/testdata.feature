Feature: Add test data
  I want to use this template for my feature file

  Scenario: 63 (Stamford Start date should be one year back) (M2 90 days)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "TMH" in the facilityKey textbox
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I click on "DRG" appearing beside the facility
    Then I delete the "63" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "The Miriam Hospital" under Add drg pop up
    And I fill in DRG with "(63)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "390" days
    Then I fill in the end date with logic "minus" "30" days
    Then I select the "90" Episode length
    Then I select the "Model2" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "63" is appearing in the drg list under facility

Scenario: 63 (Stamford Start date should be one year back) (M2 90 days)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "TMH" in the facilityKey textbox
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I click on "DRG" appearing beside the facility
    Then I delete the "6" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "The Miriam Hospital" under Add drg pop up
    And I fill in DRG with "(6)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "60" days
    Then I fill in the end date with logic "minus" "-170" days
    Then I select the "90" Episode length
    Then I select the "Model2" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    
    Scenario: 63 (Stamford Start date should be one year back) (M2 90 days)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "TMH" in the facilityKey textbox
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I click on "DRG" appearing beside the facility
    Then I delete the "6" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "The Miriam Hospital" under Add drg pop up
    And I fill in DRG with "(6)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "60" days
    Then I fill in the end date with logic "minus" "-2" days
    Then I select the "90" Episode length
    Then I select the "Model2" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    
    Scenario: 63 (Stamford Start date should be one year back) (M2 90 days)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "TMH" in the facilityKey textbox
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    Then I click on the edit facility on the facilities under admin center
    And I will wait to see the edit facility text "You're editing the object" "The Miriam Hospital"
    Then I scroll the page to bottom by "600"
    Then I will checkin the Episode initiator checkbox on the edit facility
    Then I will checkin the Participating checkbox on the edit facility
    Then I will select the "Acadia St Landry" Participating facility
    Then I save the edited facility 
    And I will wait to see "The object was successfully saved." in "p" tag
    
    