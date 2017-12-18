Feature: Create PGP organization functionality tests.

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "PGP" organization tab on organization dashboard

  Scenario: Verification of availability of all the fields on Create PGP Organization page
    Then I verify the Search bar on "PGP" organization page
    Then I verify "+" button under "PGP" organization page
    And I verify "TIN/EIN" header label under "PGP" organization
    And I verify "PGP Organization Name" header label under "PGP" organization
    And I verify "City" header label under "PGP" organization
    And I verify "State" header label under "PGP" organization
    And I verify "Postal Code" header label under "PGP" organization
    Then I click on "+" button on "PGP" organization page
    And I verify "Create PGP Organization" header text on create organization page
    And I verify "*PGP Organization Name" field on create organization page
    And I verify "Has a Management Organization" radio button on create organization page
    And I verify "No Management Organization" radio button on create organization page
    And I verify "Short Name" field on create organization page
    And I verify "Address 1" field on create organization page
    And I verify "Address 2" field on create organization page
    And I verify "City" field on create organization page
    And I verify "Region" dropdown field on create organization page
    And I verify "Market" dropdown field on create organization page
    And I verify "State" dropdown field on create organization page
    And I verify "Postal Code" field on create organization page
    And I verify "*EIN" field on create organization page
    And I verify "NPI" field on create organization page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

  Scenario Outline: <Description>
    Then I click on "+" button on "PGP" organization page
    And I verify "Create PGP Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <PGP_Name> in "PGP Organization Name" on create organization page
    And I provide unique "PGP - <EIN>" in "EIN" on create organization page
    And I provide unique "PGP - <NPI>" in "NPI" on create organization page
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                                      | Has_MO | Managing_Org | PGP_Name | EIN | NPI | ValidationMsg                                 |
      | Check validation for blank Managing Organization | YES    | BLANK        | PGPNAME  | EIN | NPI | A Management Organization has to be selected. |
      | Check validation for blank PGP name              | NO     |              |          | EIN | NPI | Please enter an Organization Name             |
      | Check validation for blank Identifiers           | NO     |              | PGPNAME  |     |     | The EIN field is required                     |
      | Check validation for blank EIN Identifier        | NO     |              | PGPNAME  |     | NPI | The EIN field is required                     |

  Scenario Outline: <Description>
    Then I click on "+" button on "PGP" organization page
    And I verify "Create PGP Organization" header text on create organization page
    Then I enter <PGP_Name> in "PGP Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "PGP - <EIN>" in "EIN" on create organization page
    And I provide unique "PGP - <NPI>" in "NPI" on create organization page
    And I switch the focus to "submit" button
    And I verify "<ValidationMessage>" field validation message on create organization page

    Examples: 
      | Description                                    | PGP_Name                                                                     | Address1                                                  | Short_Name                                     | Address2                                                  | City                                           | Postal_Code | EIN           | NPI           | ValidationMessage                                              |
      | Check Character Limit for PGP name field       | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwx |                                                           |                                                |                                                           |                                                |             |               |               | The Organization Name may not be greater than 75 characters.   |
      | Check Character Limit for Address1 field       |                                                                              | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |                                                           |                                                |             |               |               | The first address line may not be greater than 55 characters.  |
      | Check Character Limit for Short Name field     |                                                                              |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |                                                           |                                                |             |               |               | The shortName may not be greater than 45 characters.           |
      | Check Character Limit for Address2 field       |                                                                              |                                                           |                                                | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstabcasdfghjk |                                                |             |               |               | The second address line may not be greater than 55 characters. |
      | Check Character Limit for City field           |                                                                              |                                                           |                                                |                                                           | abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrst |             |               |               | The City may not be greater than 45 characters.                |
      | Check Character Limit for Postal code field    |                                                                              |                                                           |                                                |                                                           |                                                | 10000-00000 |               |               | The address.postalCode format is invalid.                      |
      | Check Character Limit for EIN field            |                                                                              |                                                           |                                                |                                                           |                                                |             | greaterThan10 |               | The EIN may not be greater than 10 characters.                 |
      | Check Character Limit for NPI field            |                                                                              |                                                           |                                                |                                                           |                                                |             |               | greaterThan10 | The NPI may not be greater than 10 characters.                 |
      | Check Allowed Characters for EIN field         |                                                                              |                                                           |                                                |                                                           |                                                |             | $@^&*%67$^&   |               | The EIN field must be alphanumeric.                            |
      | Check Allowed Characters for NPI field         |                                                                              |                                                           |                                                |                                                           |                                                |             |               | *@$%^93%#^&4  | The NPI field must be alphanumeric.                            |
      | Check Allowed Characters for Postal code field |                                                                              |                                                           |                                                |                                                           |                                                | abcdefghi   |               |               | The address.postalCode format is invalid.                      |

  Scenario Outline: <Description>
    Then I click on "+" button on "PGP" organization page
    And I verify "Create PGP Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <PGP_Name> in "PGP Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select region "<Region>" in "create PGP" organization page
    And I select market "<Market>" in "create PGP" organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "PGP - <EIN>" in "EIN" on create organization page
    And I provide unique "PGP - <NPI>" in "NPI" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create PGP - <Has_MO>" organization page

    Examples: 
      | Description                                                                                                                                  | Has_MO | Managing_Org | PGP_Name      | Address1 | Short_Name | Address2 | City | Region  | Market  | State      | Postal_Code | EIN | NPI | Message                                                                                                 |
      | Create PGP Organization with Mandatory fields - Without MO                                                                                   | NO     |              | PGPNAME       |          |            |          |      |         |         |            |             | EIN |     | Success! PGP Organization Successfully Created.                                                         |
      | Create PGP Organization with Mandatory fields - With MO                                                                                      | YES    | MONAME       | PGPNAME       |          |            |          |      |         |         |            |             | EIN |     | Success! PGP Organization Successfully Created.                                                         |
      | Create PGP Organization with Mandatory fields + NPI - With MO                                                                                | YES    | MONAME       | PGPNAME       |          |            |          |      |         |         |            |             | EIN | NPI | Success! PGP Organization Successfully Created.                                                         |
      | Create PGP Organization with Mandatory fields + Address1 + Short Name + Address2 + City + State + Region + Market + postal Code - Without MO | NO     |              | PGPNAME       | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | EIN |     | Success! PGP Organization Successfully Created.                                                         |
      | Create PGP Organization with Mandatory fields + Address1 + Short Name + City + State + postal Code - With MO                                 | YES    | MONAME       | PGPNAME       | Address1 | Short_Name |          | City |         |         | California |       10000 | EIN |     | Success! PGP Organization Successfully Created.                                                         |
      | Create PGP Organization with Mandatory fields + Address1 + Address2 + City + State + postal Code + Region + Market- Without MO               | NO     |              | PGPNAME       | Address1 |            | Address2 | City | Midwest | Chicago | California |       10000 | EIN |     | Success! PGP Organization Successfully Created.                                                         |
      | Create PGP Organization with Mandatory fields having duplicate organization name - Without MO                                                | NO     |              | DUPLICATE_PGP |          |            |          |      |         |         |            |             | EIN |     | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Create PGP Organization with Mandatory fields having duplicate organization name - With MO                                                   | YES    | MONAME       | DUPLICATE_PGP |          |            |          |      |         |         |            |             | EIN |     | Oh no! There is a conflict error because an entity with similar identifying attributes already existed. |
      | Create PGP Organization with all the available fields - Without MO                                                                           | NO     |              | PGPNAME       | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | EIN | NPI | Success! PGP Organization Successfully Created.                                                         |
      | Create PGP Organization with all the available fields - With MO                                                                              | YES    | MONAME       | PGPNAME       | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | EIN | NPI | Success! PGP Organization Successfully Created.                                                         |

  Scenario Outline: Identifiers - <Description>
    Then I click on "+" button on "PGP" organization page
    And I verify "Create PGP Organization" header text on create organization page
    And I provide unique "PGP - <EIN>" in "EIN" on create organization page
    And I provide unique "PGP - <NPI>" in "NPI" on create organization page
    And I switch the focus to "submit" button
    And I verify "<Message>" field validation message on create organization page
    And I verify "<Message1>" field validation message on create organization page

    Examples: 
      | Description                                                         | EIN           | NPI           | Message                            | Message1                           |
      | Verify Validation Message of PGP Organization with same EIN and NPI |    1234567890 |    1234567890 | The EIN and npi must be different. | The NPI and ein must be different. |
      | Verify Validation PGP Organization with duplicate EIN               | DUPLICATE_EIN |               | EIN Id already taken               |                                    |
      | Verify Validation of PGP Organization with duplicate NPI            |               | DUPLICATE_NPI | NPI Id already taken               |                                    |
