Feature: Edit data permissions for SA

  Scenario Outline: Edit from org1 to org2
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Role>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on delete organisation icon
    And I click on "Remove" button on permissions tab
    And I search for health system with <Health System1>
    And I select a <Health System1>
    Then I select "<Programs1>" programs
    Then I select "<Locations1>" locations
    Then I click on "Add Another Organization" button on permissions tab
    And I search for health system with <Health System2>
    And I select a <Health System2>
    Then I select "<Programs2>" programs
    Then I select "<Locations2>" locations2
    And I wait for 3000 milli seconds
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Then I verify "<Health System1>--<Programs1>-<Locations1>, <Health System2>--<Programs2>-<Locations2>" under Data Permissions in view user page

    Examples: 
      | user        | Role       | Email             | Health System1    | Programs1   | Locations1                  | Health System2   | Programs2   | Locations2          |
      | Super Admin | Remedy TCS | test.automatemail | Stamford Hospital | BPCI-Model2 | 2070-015--Stamford Hospital | Sound Physicians | BPCI-Model2 | 2070-023--Allentown |


Scenario Outline: Edit single location to multiple locations
  	Given I am on the login page
    When I log in as super user
    Then I should see Tile text User Admin
    And I click on the "User Admin" tile
    Then I should see header text "Users"
    Then I enter "<Role>" in search box for "<user>-<Role>"
    Then I select user with email "<Email>"
    And I verify that I am navigated to user page
    And I click on Edit button
    Then I select "Permissions" tab
    Then I click on existing organisation
    Then I click on Select All Locations button
    Then I click on Submit button
    And I wait for 3000 milli seconds
    Examples: 
      | user        | Role       | Email             | 
      | Super Admin | Remedy TCS | test.automatemail |
    