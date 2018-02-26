@AECTestData
Feature: Configure Test Data for EC smoke automation.

   Scenario: 63 (Stamford Start date should be one year back) (M2 90 days)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "TSH" in the facilityKey textbox
    And I fill in group with "Stamford" on facility creation page
    And I fill in name with "Stamford Hospital" on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "TSH" in "td" tag
    And I click on "DRG" appearing beside the facility
    Then I delete the "63" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "Stamford Hospital" under Add drg pop up
    And I fill in DRG with "(63)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "440" days
    Then I fill in the end date with logic "minus" "-200" days
    Then I select the "90" Episode length
    Then I select the "Model2" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "63" is appearing in the drg list under facility

    Scenario: 6 (BPCI Allentown) (M2 90 days)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "A" in the facilityKey textbox
    And I fill in group with "St Luke's" on facility creation page
    And I fill in name with "Allentown" on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "A" in "td" tag
    And I click on "DRG" appearing beside the facility
    Then I delete the "6" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "Allentown" under Add drg pop up
    And I fill in DRG with "(6)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "100" days
    Then I fill in the end date with logic "minus" "-200" days
    Then I select the "90" Episode length
    Then I select the "Model2" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility

  Scenario: Rhode Island Hospital (66) INTRACRANIAL HEMORRHAGE OR CEREBRAL INFARCTION W/O CC/MCC" "(BPCI) (Stamford) (M2 90 days)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "RIH" in the facilityKey textbox
    And I fill in group with "LifeSpan" on facility creation page
    And I fill in name with "Rhode Island Hospital" on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "RIH" in "td" tag
    And I click on "DRG" appearing beside the facility
    Then I delete the "66" drg
    Then I scroll the page to bottom by "-600"
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "Rhode Island Hospital" under Add drg pop up
    And I fill in DRG with "(66)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "90" days
    Then I fill in the end date with logic "minus" "-2" days
    Then I select the "90" Episode length
    Then I select the "Model2" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "66" is appearing in the drg list under facility

  Scenario: PGP A M3, PGP B M2. Different model.(Test Data)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "110109" in the facilityKey textbox
    And I fill in group with "110109" on facility creation page
    And I fill in name with "Emanuel County Hospital Authority" on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "110109" in "td" tag
    Then I click on the edit facility on the facilities under admin center
    And I will wait to see the edit facility text "You're editing the object" "Emanuel County Hospital Authority"
    When I fill in "Group" xpath "//*[@id='edit_bpfacility_group']" with "110109"
    Then I scroll the page to bottom by "600"
    Then I will checkin the Participating checkbox on the edit facility
    Then I save the edited facility
    And I will wait to see "The object was successfully saved." in "p" tag
    When I am on "/secure/admin/facility"
    Then I enter "264770638" in the facilityKey textbox
    And I fill in group with "Envision Health Care" on facility creation page
    And I fill in name with "Kemwall Inpatient Services" on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "264770638" in "td" tag
    Then I click on the edit facility on the facilities under admin center
    And I will wait to see the edit facility text "You're editing the object" "Kemwall Inpatient Services"
    Then I scroll the page to bottom by "600"
    Then I will checkin the Episode initiator checkbox on the edit facility
    Then I will checkin the Participating checkbox on the edit facility
    Then I will select the "Emanuel County Hospital Authority" Participating facility
    Then I save the edited facility
    And I will wait to see "The object was successfully saved." in "p" tag
    When I am on "/secure/admin/facility"
    Then I wait untill i see list of facilities after searching
    And I click on "DRG" appearing beside the facility
    Then I delete the "6" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "Kemwall Inpatient Services" under Add drg pop up
    And I fill in DRG with "(6)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "40" days
    Then I fill in the end date with logic "minus" "-60" days
    Then I select the "30" Episode length
    Then I select the "Model3" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    Then I add the "6" drg
    Then I fill in the period start date with logic "minus" "-61" days
    Then I fill in the period end date with logic "minus" "-150" days
    Then I select the period "90" Episode length
    Then I select the period "Model2" model
    Then I select the period "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    Then I add the "6" drg
    Then I fill in the period start date with logic "plus month" "-151" days
    Then I fill in the period end date with logic "minus" "-240" days
    Then I select the period "60" Episode length
    Then I select the period "Model3" model
    Then I select the period "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    Then I add the "6" drg
    Then I fill in the period start date with logic "minus" "-241" days
    Then I fill in the period end date with logic "minus" "-330" days
    Then I select the period "30" Episode length
    Then I select the period "Model2" model
    Then I select the period "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    When I am on "/secure/admin/facility"
    Then I enter "262348219" in the facilityKey textbox
    And I fill in group with "Saber Health" on facility creation page
    And I fill in name with "Broomall Healthcare Group, Inc." on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "262348219" in "td" tag
    Then I click on the edit facility on the facilities under admin center
    And I will wait to see the edit facility text "You're editing the object" "Broomall Healthcare Group, Inc."
    Then I scroll the page to bottom by "600"
    Then I will checkin the Episode initiator checkbox on the edit facility
    Then I will checkin the Participating checkbox on the edit facility
    Then I will select the "Emanuel County Hospital Authority" Participating facility
    Then I save the edited facility
    And I will wait to see "The object was successfully saved." in "p" tag
    When I am on "/secure/admin/facility"
    Then I wait untill i see list of facilities after searching
    And I click on "DRG" appearing beside the facility
    Then I delete the "6" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "Broomall Healthcare Group, Inc." under Add drg pop up
    And I fill in DRG with "(6)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "34" days
    Then I fill in the end date with logic "minus" "-60" days
    Then I select the "30" Episode length
    Then I select the "Model2" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    Then I add the "6" drg
    Then I fill in the period start date with logic "minus" "-61" days
    Then I fill in the period end date with logic "minus" "-150" days
    Then I select the period "90" Episode length
    Then I select the period "Model3" model
    Then I select the period "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    Then I add the "6" drg
    Then I fill in the period start date with logic "minus" "-151" days
    Then I fill in the period end date with logic "minus" "-240" days
    Then I select the period "60" Episode length
    Then I select the period "Model3" model
    Then I select the period "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    Then I add the "6" drg
    Then I fill in the period start date with logic "minus" "-241" days
    Then I fill in the period end date with logic "minus" "-330" days
    Then I select the period "60" Episode length
    Then I select the period "Model2" model
    Then I select the period "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "6" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility

  Scenario: Ramsey Inpatient Physicians (PGP) -> DRG : 177 Central Maine Medical Center (HHH)
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility"
    Then I enter "200024" in the facilityKey textbox
    And I fill in group with "200024" on facility creation page
    And I fill in name with "Central Maine Medical Center" on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "200024" in "td" tag
    Then I click on the edit facility on the facilities under admin center
    And I will wait to see the edit facility text "You're editing the object" "Central Maine Medical Center"
    When I fill in "Group" xpath "//*[@id='edit_bpfacility_group']" with "200024"
    Then I scroll the page to bottom by "600"
    Then I will checkin the Participating checkbox on the edit facility
    Then I save the edited facility
    And I will wait to see "The object was successfully saved." in "p" tag
    When I am on "/secure/admin/facility"
    Then I enter "611433919" in the facilityKey textbox
    And I fill in group with "Envision Health Care" on facility creation page
    And I fill in name with "Ramsey Inpatient Physicians" on facility creation page
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I will wait to see "611433919" in "td" tag
    Then I click on the edit facility on the facilities under admin center
    And I will wait to see the edit facility text "You're editing the object" "Ramsey Inpatient Physicians"
    Then I scroll the page to bottom by "600"
    Then I will checkin the Episode initiator checkbox on the edit facility
    Then I will checkin the Participating checkbox on the edit facility
    Then I will select the "Central Maine Medical Center" Participating facility
    Then I save the edited facility
    And I will wait to see "The object was successfully saved." in "p" tag
    When I am on "/secure/admin/facility"
    Then I wait untill i see list of facilities after searching
    And I click on "DRG" appearing beside the facility
    Then I delete the "177" drg
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    Then I scroll the page to bottom by "-600"
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    Then I wait untill i see "Add DRG to " "Ramsey Inpatient Physicians" under Add drg pop up
    And I fill in DRG with "(177)"
    And I click on searched result in the drgs
    Then I fill in the start date with logic "minus" "34" days
    Then I fill in the end date with logic "minus" "-120" days
    Then I select the "30" Episode length
    Then I select the "Model3" model
    Then I select the "Medicare" payer
    When I click on Add button after selecting the drg
    Then I verify "177" is appearing in the drg list under facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility