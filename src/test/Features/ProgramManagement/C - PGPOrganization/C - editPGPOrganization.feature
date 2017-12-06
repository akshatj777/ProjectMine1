Feature: Edit PGP organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit PGP Organization" header text on edit organization page
    And I verify "*PGP Organization Name" field on edit organization page
    And I verify "Short Name" field on edit organization page
    And I verify "Address 1" field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "City" field on edit organization page
    And I verify "Region" dropdown field on edit organization page
    And I verify "Market" dropdown field on edit organization page
    And I verify "State" dropdown field on edit organization page
    And I verify "Postal Code" field on edit organization page
    And I verify "*EIN" identifier is not editable
    And I verify "NPI" identifier is not editable
    And I verify "Submit" button on edit organization page
    And I verify "Cancel" button on edit organization page

    Examples: 
      | Description                                                                  | Has_MO | PGP_Name |
      | Verification of availability of all the fields on Edit PGP Organization page | NO     | PGPNAME  |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit PGP Organization" header text on edit organization page
    And I edit "PGP Organization Name" field to "<Edited_PGP_Name>" for organization

    Examples: 
      | Description                         | Has_MO | Edited_PGP_Name | ValidationMsg                     |
      | Check validation for blank PGP name | NO     |                 | Please enter an Organization Name |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit PGP Organization" header text on edit organization page
    And I edit "PGP Organization Name" field to "<Edited_PGP_Name> - <Has_MO>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Short Name" field to "<Short_Name>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on edit organization page

    Examples: 
      | Description                                    | Edited_PGP_Name                                                              | Address1                                                                | Short_Name                                     | Address2                                                                | City                                           | Postal_Code  | ValidationMessage                                              |
      | Check Character Limit for PGP name field       | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                                         |                                                |                                                                         |                                                |              | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field       |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstvwxyzabcdefghijklmnopqrst |                                                |                                                                         |                                                |              | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for Short Name field     |                                                                              |                                                                         | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                                         |                                                |              | The shortName may not be greater than 45 characters.           |
      | Check Character Limit for Address2 field       |                                                                              |                                                                         |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstvwxyzabcdefghijklmnopqrst |                                                |              | The second address line may not be greater than 55 characters. |
      | Check Character Limit for City field           |                                                                              |                                                                         |                                                |                                                                         | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |              | The City may not be greater than 45 characters.                |
      | Check Character Limit for Postal code field    |                                                                              |                                                                         |                                                |                                                                         |                                                | 10000-00000  | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for Postal code field |                                                                              |                                                                         |                                                |                                                                         |                                                | abcdefghijkl | Please enter a valid Zip Code                                  |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit PGP Organization" header text on edit organization page
    And I edit "PGP Organization Name" field to "<Edited_PGP_Name> - <Has_MO>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Short Name" field to "<Short_Name>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit Region "<Region>" in "edit PGP" organization page
    And I edit Market "<Market>" in "edit PGP" organization page
    And I edit "City" field to "<City>" for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "Edit PGP - <Has_MO>" organization page

    Examples: 
      | Description                                                                                                                                | Has_MO | Managing_Org | Edited_PGP_Name | Address1 | Short_Name | Address2 | City | Region  | Market  | State      | Postal_Code | Message                                                                                                 |
      | Edit PGP Organization with Mandatory fields - Without MO                                                                                   | NO     |              | PGPNAME         |          |            |          |      |         |         |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields - With MO                                                                                      | YES    | MONAME       | PGPNAME         |          |            |          |      |         |         |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + Address2 + City + State + Region + Market + postal Code - Without MO | NO     |              | PGPNAME         | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + City + State + Region + Market + postal Code - With MO               | YES    | MONAME       | PGPNAME         | Address1 | Short_Name |          | City | Midwest | Chicago | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + Address2 + City + State + postal Code- Without MO                    | NO     |              | PGPNAME         | Address1 | Short_Name | Address2 | City |         |         | California |       10001 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit Duplicate PGP Organization with Mandatory fields - Without MO                                                                         | NO     |              | DUPLICATE_PGP   |          |            |          |      |         |         |            |             | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Edit Duplicate PGP Organization with Mandatory fields - With MO                                                                            | YES    | MONAME       | DUPLICATE_PGP   |          |            |          |      |         |         |            |             | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Edit PGP Organization with all the available fields - Without MO                                                                           | NO     |              | PGPNAME         | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with all the available fields - With MO                                                                              | YES    | MONAME       | PGPNAME         | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
