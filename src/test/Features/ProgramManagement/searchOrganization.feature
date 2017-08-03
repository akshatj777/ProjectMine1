Feature: User should be able to search Organization

  Background: 
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text Program Management
    Then I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  Scenario Outline: Search Managing Organization by Name or Participant Id
    Then I search <MO_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I verify <MO_Name> field after search on organization homepage
    And I search <Participant_Id> on organization in search box
    And I see "1 Organization" search count on organization
    And I verify <Participant_Id> field after search on organization homepage

    Examples:
      | MO_Name | Participant_Id |
      | MOName  |        4571265 |
