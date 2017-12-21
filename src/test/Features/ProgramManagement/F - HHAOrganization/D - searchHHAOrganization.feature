Feature: Search the HHA organizations functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "HHA" organization tab on organization dashboard

  Scenario Outline: <Description>
    Then I verify the Search bar on "HHA" organization page
    Then I search "<SearchParam> - <Has_MO>" and verify with search list options on "HHA" organization search box

    Examples: 
      | Description                                            | Has_MO | SearchParam |
      | Search HHA Organization with CCN  - With MO            | YES    | CCN         |
      | Search HHA Organization with CCN  - Without MO         | NO     | CCN         |
      | Search HHA Organization with HHA Org Name - With MO    | YES    | HHANAME     |
      | Search HHA Organization with HHA Org Name - Without MO | NO     | HHANAME     |
      | Search HHA Organization with City                      |        | City        |
      | Search HHA Organization with State                     |        | CA          |
      | Search HHA Organization with Postal Code               |        |       10000 |

  Scenario Outline: <Description>
    Then I search with "<HHA_Name> - <Has_MO>" on organization in search box
    And I verify "<HHA_Name> - <Has_MO>" field in search list on organization page
    And I click "<HHA_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "HHA Organization Name" field to "<Edited_HHA_Name> - <Has_MO>" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit HHA - <Has_MO>" organization page
    Then I search "<HHA_Name> - <Has_MO>" and verify with search list options on "HHA" organization search box
    Then I search with "<HHA_Name> - <Has_MO>" old name in organization search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New HHA Organization" link under No matches

    Examples: 
      | Description                                                     | Has_MO | HHA_Name | Edited_HHA_Name | Message                                         |
      | Search HHA Organization after editing the HHA name - With MO    | YES    | HHANAME  | HHANAME         | Success! HHA Organization Successfully Updated. |
      | Search HHA Organization after editing the HHA name - Without MO | NO     | HHANAME  | HHANAME         | Success! HHA Organization Successfully Updated. |

  Scenario Outline: <Description>
    Then I search with "<HHA_Name>" on organization in search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New HHA Organization" link under No matches

    Examples: 
      | Description                                                              | HHA_Name       |
      | Verification of error message if HHA organization is not found in search | NoMatchHHAName |
