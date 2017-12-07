Feature: Search the PGP organizations functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "PGP" organization tab on organization dashboard

  Scenario Outline: <Description>
    Then I verify the Search bar on "PGP" organization page
    Then I search "<SearchParam> - <Has_MO>" and verify with search list options on "PGP" organization search box

    Examples: 
      | Description                                            | Has_MO | SearchParam |
      | Search PGP Organization with EIN  - With MO            | YES    | EIN         |
      | Search PGP Organization with EIN  - Without MO         | NO     | EIN         |
      | Search PGP Organization with PGP Org Name - With MO    | YES    | PGPNAME     |
      | Search PGP Organization with PGP Org Name - Without MO | No     | PGPNAME     |
      | Search PGP Organization with City                      |        | City        |
      | Search PGP Organization with State                     |        | CA          |
      | Search PGP Organization with Postal Code               |        |       10000 |

  Scenario Outline: <Description>
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "PGP Organization Name" field to "<Edited_PGP_Name> - <Has_MO>" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit PGP - <Has_MO>" organization page
    Then I search "<PGP_Name> - <Has_MO>" and verify with search list options on "PGP" organization search box
    Then I search with "<PGP_Name> - <Has_MO>" old name in organization search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New PGP Organization" link under No matches

    Examples: 
      | Description                                                     | Has_MO | PGP_Name | Edited_PGP_Name | Message                                         |
      | Search PGP Organization after editing the PGP name - With MO    | YES    | PGPNAME  | PGPNAME         | Success! PGP Organization Successfully Updated. |
      | Search PGP Organization after editing the PGP name - Without MO | NO     | PGPNAME  | PGPNAME         | Success! PGP Organization Successfully Updated. |

  Scenario Outline: <Description>
    Then I search with "<PGP_Name>" on organization in search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New PGP Organization" link under No matches

    Examples: 
      | Description                                                              | PGP_Name       |
      | Verification of error message if PGP organization is not found in search | NoMatchPGPName |
