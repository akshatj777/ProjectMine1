Feature: Create new facility

  @EC1Smoke
  Scenario: Create new facility with success
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
    When I am on "/secure/admin/facility/new"
    And I wait untill "New Facility" text is appearing on the new facility creation page
    And I fill in "facilityKey" with "randomKey" on facility creation page
    And I fill in "group" with "testNewGroup" on facility creation page
    And I fill in "name" with "testCreateNewFacilityName" on facility creation page
    And I select "HHH - Hospital" from "new_bpfacility_facilityCategory"
    Then I press "save" on the facility creation page
    And I will wait to see "The object was successfully saved." in "p" tag
