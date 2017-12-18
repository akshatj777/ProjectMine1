Feature: Search SNF organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "SNF" organization tab on organization dashboard

  Scenario Outline: <Description>
    Then I verify the Search bar on "SNF" organization page
    Then I search "<SearchParam> - <Has_MO>" and verify with search list options on "SNF" organization search box

    Examples: 
      | Description                                            | Has_MO | SearchParam |
      | Search SNF Organization with CCN  - With MO            | YES    | CCN         |
      | Search SNF Organization with CCN  - Without MO         | NO     | CCN         |
      | Search SNF Organization with SNF Org Name - With MO    | YES    | SNFNAME     |
      | Search SNF Organization with SNF Org Name - Without MO | NO     | SNFNAME     |
      | Search SNF Organization with City                      |        | City        |
      | Search SNF Organization with State                     |        | CA          |
      | Search SNF Organization with Postal Code               |        |       10000 |

  Scenario Outline: <Description>
    Then I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "SNF Organization Name" field to "<Edited_SNF_Name> - <Has_MO>" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit SNF - <Has_MO>" organization page
    Then I search "<SNF_Name> - <Has_MO>" and verify with search list options on "SNF" organization search box
    Then I search with "<SNF_Name> - <Has_MO>" old name in organization search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New SNF Organization" link under No matches

    Examples: 
      | Description                                                     | Has_MO | SNF_Name | Edited_SNF_Name | Message                                         |
      | Search SNF Organization after editing the SNF name - With MO    | YES    | SNFNAME  | SNFNAME         | Success! SNF Organization Successfully Updated. |
      | Search SNF Organization after editing the SNF name - Without MO | NO     | SNFNAME  | SNFNAME         | Success! SNF Organization Successfully Updated. |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    Then I search "<SearchParam>" and verify with search list options on Location in "<SNF_Name> - <Has_MO>" profile page

    Examples: 
      | Description                                    | Has_MO | SNF_Name | SearchParam     |
      | Searching Location Name on SNF Profile Page    | YES    | SNFNAME  | Loc_Name        |
      | Searching Location Address on SNF Profile Page | YES    | SNFNAME  | Loc_Address1    |
      | Searching Location Type on SNF Profile Page    | NO     | SNFNAME  | Skilled Nursing |
      | Searching Location Region on SNF Profile Page  | NO     | SNFNAME  | Midwest         |
      | Searching Location Matket on SNF Profile Page  | NO     | SNFNAME  | Chicago         |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    Then I search with "<Loc_Name>" on Location search box in "SNF" View Profile page
    Then I verify the "No matches" message for invalid search in Organization

    Examples: 
      | Description                                                                    | Has_MO | SNF_Name | Loc_Name        |
      | Search SNF Organization with Location Name in SNF view profile page  - With MO | YES    | SNFNAME  | SNFLocationName |

  Scenario Outline: <Description>
    Then I search with "<SNF_Name>" on organization in search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New SNF Organization" link under No matches

    Examples: 
      | Description                                                              | SNF_Name       |
      | Verification of error message if SNF organization is not found in search | NoMatchSNFNAME |
