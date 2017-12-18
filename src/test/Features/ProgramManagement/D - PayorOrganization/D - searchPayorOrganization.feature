Feature: Search the Payor organization functionality test

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "Payor" organization tab on organization dashboard

  Scenario Outline: <Description>
    Then I verify the Search bar on "Payor" organization page
    Then I search "<SearchParam>" and verify with search list options on "Payor" organization search box

    Examples: 
      | Description                                            | SearchParam |
      | Search Payor Organization with Postal Code             |       10001 |
      | Search Payor Organization with State                   | NY          |
      | Search Payor Organization with City                    | City        |
      | Search Payor Organization with Payor Organization Name | PAYORNAME   |
      | Search Payor Organization with Paticipant ID           | PID         |

  Scenario Outline: Search for a Payor organization after editing the Payor organization name
    Then I search with "<Payor_Name>" on organization in search box
    And I verify "<Payor_Name>" field in search list on organization page
    And I click "<Payor_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit Payor Organization" header text on edit organization page
    And I edit "Payor Organization Name" field to "<Edited_Payor_Name>" for organization
    Then I click on "Submit" button on "edit" organization page
    Then I verify "Success! Payor Organization Successfully Updated." after submitting the "edit Payor" organization page
    Then I search "<Edited_Payor_Name>" and verify with search list options on "Payor" organization search box
    Then I search with "<Payor_Name>" old name in organization search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New Payor Organization" link under No matches

    Examples: 
      | Description                                                               | Payor_Name | Edited_Payor_Name |
      | Search for a Payor organization after editing the Payor organization name | PAYORNAME  | PAYORNAME         |

  Scenario Outline: Verification of error message if an organization is not found in search box
    Then I search with "<Payor_Name>" on organization in search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New Payor Organization" link under No matches

    Examples: 
      | Description                                                                 | Payor_Name          |
      | Verification of error message if an Payor organization is not found in search box | NoMatchPayorOrgName |
