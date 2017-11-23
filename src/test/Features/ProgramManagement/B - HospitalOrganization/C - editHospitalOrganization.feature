Feature: Edit the Hospital organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Hosp_Name>" field in search list on organization page
    And I click "<Hosp_Name> - <Hosp_Name>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit Hospital Organization" header text on edit organization page
    And I verify Managing Organization field on "Edit ACH - <Has_MO>" organization page
    And I verify "*Hospital Organization Name" field on edit organization page
    And I verify "*Address 1" field on edit organization page
    And I verify "Short Name" field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "*State" field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    Then I verify "+" button under "Edit Hospital" organization page
    And I verify "Submit" button on edit organization page
    And I verify "Cancel" button on edit organization page

    Examples: 
      | Description                                                                       | Has_MO | Hosp_Name |
      | Verification of availability of all the fields on Edit Hospital Organization page | YES    | ACHNAME   |

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with "<Hosp_Name> - <Has_MO>" on organization in search box
    And I verify "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click "<Hosp_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Hospital Organization Name" field to "<Edited_MO_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "<ValidationMessage>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                     | Has_MO | Hosp_Name | Address1 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_City | Loc_State  | Loc_Postal_Code | ValidationMsg                     |
      | Check validation for blank ACH name             | NO     |           | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Organization Name |
      | Check validation for blank Address1             | NO     | ACHNAME   |          | City | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank City                 | NO     | ACHNAME   | Address1 |      | California |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a City               |
      | Check validation for blank State                | NO     | ACHNAME   | Address1 | City |            |       10000 | LocName  | LAddress1    | LCity    | California |           10001 | Please select a State             |
      | Check validation for blank Postal code          | NO     | ACHNAME   | Address1 | City | California |             | LocName  | LAddress1    | LCity    | California |           10001 | Please enter a Zip Code           |
      | Check validation for blank Location name        | NO     | ACHNAME   | Address1 | City | California |       10000 |          | LAddress1    | LCity    | California |           10001 | Please enter a Location Name      |
      | Check validation for blank Location Address1    | NO     | ACHNAME   | Address1 | City | California |       10000 | LocName  |              | LCity    | California |           10001 | Please enter an Address           |
      | Check validation for blank Location City        | NO     | ACHNAME   | Address1 | City | California |       10000 | LocName  | LAddress1    |          | California |           10001 | Please enter a City               |
      | Check validation for blank Location State       | NO     | ACHNAME   | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    |            |           10001 | Please select a State             |
      | Check validation for blank Location Postal code | NO     | ACHNAME   | Address1 | City | California |       10000 | LocName  | LAddress1    | LCity    | California |                 | Please enter a Zip Code           |
