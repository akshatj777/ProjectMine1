Feature: Search the Managing organization functionality test

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: <Description>
    When I click on Organization link on Program Management page
    Then I verify the Search bar on "Managing" organization page
    Then I search "<SearchParam>" and verify with search list options on "Managing" organization search box

    Examples: 
      | Description                                             | SearchParam |
      | Search Managing Organization with Postal Code           |       10001 |
      | Search Managing Organization with State                 | NY          |
      | Search Managing Organization with City                  | City        |
      | Search Managing Organization with Managing Organization | MONAME      |
      | Search Managing Organization with Paticipant ID         | PID         |

  Scenario Outline: Search for a managing organization after editing the Managing organization name
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    And I verify "<MO_Name>" field in search list on organization page
    And I click "<MO_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Managing Organization Name" field to "<Edited_MO_Name>" for organization
    Then I click on "Submit" button on "edit" organization page
    Then I verify "Success! Management Organization Successfully Updated." after submitting the "edit MO" organization page
    Then I search "<Edited_MO_Name>" and verify with search list options on "Hospital" organization search box
    Then I search with "<MO_Name>" old name in organization search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New Managing Organization" link under No matches

    Examples: 
      | Description                                                                     | MO_Name | Edited_MO_Name | 
      | Search for a managing organization after editing the Managing organization name | MONAME  | MONAME         | 

  Scenario Outline: Verification of error message if an organization is not found in search box
    When I click on Organization link on Program Management page
    Then I search with "<MO_Name>" on organization in search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New Managing Organization" link under No matches

    Examples: 
      | Description                                                                 | MO_Name               |
      | Verification of error message if an organization is not found in search box | NoMatchMnagingOrgName |
