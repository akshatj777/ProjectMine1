Feature: Create a Managing Organization, verify the details fields
and Verifying successfull creation message

Scenario: Fields available on Create Managing Organization
    Given I am on the login page
    When I log in as super user
    And I wait for 1000 milli seconds
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page
    Then I click on create new Organization button on Program Management homepage
    And I verify "Create Management Organization" header text on create organization form