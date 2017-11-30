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
    And I verify "*Address 1" field on edit organization page
    And I verify "Address 2" field on edit organization page
    And I verify "*City" field on edit organization page
    And I verify "Region" dropdown field on edit organization page
    And I verify "Market" dropdown field on edit organization page
    And I verify "*State" dropdown field on edit organization page
    And I verify "*Postal Code" field on edit organization page
    And I verify "EIN" identifier is not editable
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
      | Description                         | Has_MO | Managing_Org | Edited_PGP_Name | ValidationMsg                     |
      | Check validation for blank PGP name | NO     | MONAME       |                 | Please enter an Organization Name |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit PGP Organization" header text on edit organization page
    And I edit "PGP Organization Name" field to "<Edited_PGP_Name>" for organization
    And I edit "Address 1" field to "<Address1>" for organization
    And I edit "Short Name" field to "<Short_Name>" for organization
    And I edit "Address 2" field to "<Address2>" for organization
    And I edit "City" field to "<City>" for organization
    And I edit "Postal Code" field to "<Postal_Code>" for organization
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on edit organization page

    Examples: 
      | Description                                    | Edited_PGP_Name                                                              | Address1                                       | Short_Name                                     | Address2                                       | City                                           | Postal_Code | ValidationMessage                                              |
      | Check Character Limit for PGP name field       | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                |                                                |                                                |                                                |             | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field       |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |                                                |             | The first address line may not be greater than 45 characters.  |
      | Check Character Limit for Short Name field     |                                                                              |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |                                                |             | The shortName may not be greater than 45 characters.           |
      | Check Character Limit for Address2 field       |                                                                              |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                |             | The second address line may not be greater than 45 characters. |
      | Check Character Limit for City field           |                                                                              |                                                |                                                |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |             | The City may not be greater than 45 characters.                |
      | Check Character Limit for Postal code field    |                                                                              |                                                |                                                |                                                |                                                | 10000-00000 | Please enter a valid Zip Code                                  |
      | Check Allowed Characters for Postal code field |                                                                              |                                                |                                                |                                                |                                                | abcdefghi   | Please enter a valid Zip Code                                  |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I verify "Edit PGP Organization" header text on edit organization page
    And I edit "PGP Organization Name" field to "<Edited_PGP_Name>" for organization
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
      | Edit PGP Organization with Mandatory fields - Without MO                                                                                   | NO     | MONAME       | PGPNAME         |          |            |          |      |         |         |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Region + Market - With MO                                                                    | YES    | MONAME       | PGPNAME         |          |            |          |      | Midwest | Chicago |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + Address2 + City + State + Region + Market + postal Code - Without MO | NO     | MONAME       | PGPNAME         | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + Address2 + City + State + Region + Market - With MO                  | YES    | MONAME       | PGPNAME         | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + Address2 + City + State- Without MO                                  | NO     | MONAME       | PGPNAME         | Address1 | Short_Name | Address2 | City |         |         |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + Address2 + City - With MO                                            | YES    | MONAME       | PGPNAME         | Address1 | Short_Name | Address2 | City |         |         |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name + Address2 - Without MO                                                | NO     | MONAME       | PGPNAME         | Address1 | Short_Name | Address2 |      |         |         |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address1 + Short Name - With MO                                                              | YES    | MONAME       | PGPNAME         | Address1 | Short_Name |          |      |         |         |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Short Name + Address2 + City + State + postal Code - With MO                                 | YES    | MONAME       | PGPNAME         |          | Short_Name | Address2 | City |         |         | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + Address2 + City + State + postal Code - With MO                                              | YES    | MONAME       | PGPNAME         |          |            | Address2 | City |         |         | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields+ City + State + postal Code - With MO                                                          | YES    | MONAME       | PGPNAME         |          |            |          | City |         |         | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with Mandatory fields + City + Region + Market - With MO                                                             | YES    | MONAME       | PGPNAME         |          |            |          | City | Midwest | Chicago |            |             | Success! PGP Organization Successfully Updated.                                                         |
      | Edit Duplicate PGP Organization with all the available fields - Without MO                                                                 | NO     | MONAME       | DUPLICATE_PGP   |          |            |          |      |         |         |            |             | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Edit Duplicate PGP Organization with all the available fields - With MO                                                                    | YES    | MONAME       | DUPLICATE_PGP   |          |            |          |      |         |         |            |             | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Edit PGP Organization with all the available fields - Without MO                                                                           | NO     | MONAME       | ACHNAME         | Address1 | Short_Name | Address2 | City |         |         | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |
      | Edit PGP Organization with all the available fields - With MO                                                                              | YES    | MONAME       | ACHNAME         | Address1 | Short_Name | Address2 | City |         |         | California |       10000 | Success! PGP Organization Successfully Updated.                                                         |

  Scenario Outline: Verification of Cancel Button Functionality on edit a PGP Organization page
    When I click on "PGP" organization tab on organization dashboard
    Then I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I verify "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "Address 1" field to "<Edited_Address1>" for organization
    And I edit "City" field to "<Edited_City>" for organization
    And I click on "Cancel" button on "Edit" organization page
    Then User navigated to "PGP" view page
    And I verify <Address1> in "address1" on view profile of "PGP" Organization
    And I verify <City> in "city" on view profile of "PGP" Organization

    Examples: 
      | Description                                 | Has_MO | PGP_Name | Address1 | City | Edited_Address1 | Edited_City |
      | Verification of cancel button functionality | YES    | PGPNAME  | Address1 | City | Edited_Address1 | Edited_City |
