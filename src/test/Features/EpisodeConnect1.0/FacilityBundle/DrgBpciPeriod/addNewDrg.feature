Feature: Add new DRG
@EC1Smoke
Scenario: Add new DRG for first period
     Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    When I am on "/secure/admin/facility/new"
    And I wait untill "New Facility" text is appearing on the new facility creation page
    And I fill in "facilityKey" with "randomKey" on facility creation page
    And I fill in "group" with "testNewGroup" on facility creation page
    And I fill in "name" with "testCreateNewFacilityName" on facility creation page
    And I select "HHH - Hospital" from "new_bpfacility_facilityCategory"
    Then I press "save" on the facility creation page
    And I will wait to see "The object was successfully saved." in "p" tag
    When I am on "/secure/admin/facility"
    Then I enter "testCreateNewFacilityKey" in the "facilityKey" textbox
    And I click on filter option on the facilities under admin center
    Then I wait untill i see list of facilities after searching
    And I click on "DRG" appearing beside the facility
    Then I wait untill i see "ADD NEW DRG" option on the drg list page under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    And I wait untill i see add drg popup
    And I fill in DRG with "291"
    And I click on searched result in the drgs
    When I click on Add button after selecting the drg
    Then I verify "291" is appearing in the drg list under facility
    And I click on "ADD NEW DRG" option on the drg list page in the facility
    And I wait untill i see add drg popup
    And I fill in DRG with "391"
    And I click on searched result in the drgs
    When I click on Add button after selecting the drg
    Then I verify "391" is appearing in the drg list under facility
    And I select all checkbox option on drg list page under facility
    And I click on "DELETE DRG" option on the drg list page in the facility
    And I click on "OK" button
    And I verify "291" is not appearing in the drg list under facility
    And I verify "391" is not appearing in the drg list under facility
    