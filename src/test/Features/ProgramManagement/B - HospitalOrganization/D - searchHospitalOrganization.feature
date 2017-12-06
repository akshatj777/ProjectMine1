Feature: Search the Hospital organizations functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "Hospital" organization tab on organization dashboard

  Scenario Outline: <Description>
    Then I verify the Search bar on "Hospital" organization page
    Then I search "<SearchParam> - <Has_MO>" and verify with search list options on "Hospital" organization search box

    Examples: 
      | Description                                                      | Has_MO | SearchParam |
      | Search Hospital Organization with CCN  - With MO                 | YES    | CCN         |
      | Search Hospital Organization with CCN  - Without MO              | NO     | CCN         |
      | Search Hospital Organization with Hospital Org Name - With MO    | YES    | ACHNAME     |
      | Search Hospital Organization with Hospital Org Name - Without MO | NO     | ACHNAME     |
      | Search Hospital Organization with City                           |        | City        |
      | Search Hospital Organization with State                          |        | CA          |
      | Search Hospital Organization with Postal Code                    |        |       10000 |

  Scenario Outline: <Description>
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_Hospital_Name> - <Has_MO>" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "edit ACH - <Has_MO>" organization page
    Then I search "<Hosp_Name> - <Has_MO>" and verify with search list options on "Hospital" organization search box
    Then I search with "<Hosp_Name> - <Has_MO>" old name in organization search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New Hospital Organization" link under No matches

    Examples: 
      | Description                                                               | Has_MO | Hosp_Name | Edited_Hospital_Name | Message                                              |
      | Search Hospital Organization after editing the Hospital name - With MO    | YES    | ACHNAME   | ACHNAME              | Success! Hospital Organization Successfully Updated. |
      | Search Hospital Organization after editing the Hospital name - Without MO | NO     | ACHNAME   | ACHNAME              | Success! Hospital Organization Successfully Updated. |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    When I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    Then I search "<SearchParam>" and verify with search list options on Location in "<Hosp_Name> - <Has_MO>" profile page

    Examples: 
      | Description                                         | Has_MO | Hosp_Name | SearchParam  |
      | Searching Location Name on Hospital Profile Page    | YES    | ACHNAME   | Loc_Name     |
      | Searching Location Address on Hospital Profile Page | YES    | ACHNAME   | Loc_Address1 |
      | Searching Location Type on Hospital Profile Page    | NO     | ACHNAME   | Inpatient    |
      | Searching Location Region on Hospital Profile Page  | NO     | ACHNAME   | Midwest      |
      | Searching Location Matket on Hospital Profile Page  | NO     | ACHNAME   | Chicago      |

  Scenario Outline: <Description>
    Then I search with "<Hosp_Name>" on organization in search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New Hospital Organization" link under No matches

    Examples: 
      | Description                                                                   | Hosp_Name      |
      | Verification of error message if Hospital organization is not found in search | NoMatchACHName |
