Feature: Edit HHA organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page

  Scenario Outline: <Description>
    When I click on "HHA" organization tab on organization dashboard
    When I search with "<HHA_Name> - <Has_MO>" on organization in search box
    And I verify "<HHA_Name> - <Has_MO>" name on the header of view profile
    And I click "<HHA_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit HHA Organization" header text on edit organization page
    And I verify Managing Organization field on "Edit HHA - <Has_MO>" organization page
    And I verify "*HHA Organization Name" field on edit organization page
    And I verify "Short Name" field on edit organization page
    And I verify "*Address 1" field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "Region" dropdown field on edit organization page
    And I verify "Market" dropdown field on edit organization page
    And I verify "*State" dropdown field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    And I verify "CCN" field on edit organization page
    And I verify "EIN" field on edit organization page
    And I verify "NPI" field on edit organization page
    And I verify "Submit" button on edit organization page
    And I verify "Cancel" button on edit organization page

    Examples: 
      | Description                                                                  | Has_MO | HHA_Name |
      | Verification of availability of all the fields on Edit HHA Organization page | NO     | HHANAME  |

  Scenario Outline: <Description>
    When I click on "HHA" organization tab on organization dashboard
    When I search with "<HHA_Name> - <Has_MO>" on organization in search box
    And I verify "<HHA_Name> - <Has_MO>" name on the header of view profile
    And I click "<HHA_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit HHA Organization" header text on edit organization page
    And I verify Managing Organization field on "Edit HHA - <Has_MO>" organization page
    And I edit "HHA Organization Name" field to "<Edited_HHA_Name> - <Has_MO>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                            | Has_MO | HHA_Name | Edited_HHA_Name | Address1 | City | State      | Postal_Code | ValidationMsg                     |
      | Check validation for blank HHA name    | NO     | HHANAME  |                 | Address1 | City | California |       10000 | Please enter an Organization Name |
      | Check validation for blank Address1    | NO     | HHANAME  | HHANAME         |          | City | California |       10000 | Please enter an Address           |
      | Check validation for blank City        | NO     | HHANAME  | HHANAME         | Address1 |      | California |       10000 | Please enter a City               |
      | Check validation for blank State       | YES    | HHANAME  | HHANAME         | Address1 | City |            |       10000 | Please select a State             |
      | Check validation for blank Postal code | NO     | HHANAME  | HHANAME         | Address1 | City | California |             | Please enter a Zip Code           |

  Scenario Outline: <Description>
    When I click on "HHA" organization tab on organization dashboard
    When I search with "<HHA_Name> - <Has_MO>" on organization in search box
    And I verify "<HHA_Name> - <Has_MO>" name on the header of view profile
    And I click "<HHA_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit HHA Organization" header text on edit organization page
    And I verify Managing Organization field on "Edit HHA - <Has_MO>" organization page
    And I edit "HHA Organization Name" field to "<Edited_HHA_Name> - <Has_MO>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Short Name" field to "<Short_Name>" for organization
    And I edit "Address 2" field to "<Org_Address2>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    Then I click on "Submit" button on "Edit" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                                    | Has_MO | HHA_Name | Edited_HHA_Name                                                              | Address1                                                  | Short_Name                                     | Address2                                                  | City                                           | Postal_Code  | ValidationMessage                                              |  |
      | Check Character Limit for HHA name field       | NO     | HHANAME  | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                           |                                                |                                                           |                                                |              | The Organization Name may not be greater than 75 characters.   |  |
      | Check Character Limit for Address1 field       | NO     | HHANAME  |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                                                           |                                                |              | The first address line may not be greater than 55 characters.  |  |
      | Check Character Limit for Short Name field     | NO     | HHANAME  |                                                                              |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                           |                                                |              | The shortName may not be greater than 45 characters.           |  |
      | Check Character Limit for Address2 field       | NO     | HHANAME  |                                                                              |                                                           |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |              | The second address line may not be greater than 55 characters. |  |
      | Check Character Limit for City field           | NO     | HHANAME  |                                                                              |                                                           |                                                |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |              | The City may not be greater than 45 characters.                |  |
      | Check Character Limit for Postal code field    | YES    | HHANAME  |                                                                              |                                                           |                                                |                                                           |                                                | 10000-00000  | Please enter a valid Zip Code                                  |  |
      | Check Allowed Characters for Postal code field | YES    | HHANAME  |                                                                              |                                                           |                                                |                                                           |                                                | abcdefghijkl | Please enter a valid Zip Code                                  |  |
