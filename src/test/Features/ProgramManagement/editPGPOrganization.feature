Feature: User should be able to edit the details of an existing PGP Organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario Outline: Edit and save changes for all fields of PGP organization
    When I click on "PGP" organization tab on organization dashboard
    Then I search with <PGP_Name> on organization in search box
    And I see "1 Organization" search count on organization
    And I click <PGP_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "PGP Organization Name" field to <PGP_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Short Name" field to <Short_Name> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I enter <Region> in Region on "edit" organization page
    And I edit "City" field to <City> for organization
    And I enter <Market> in Market on "edit" organization page
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "EIN" field to <EIN> for organization
    And I edit "NPI" field to <NPI> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | Region  | PGP_Name    | PGP_Name1   | Address1 | Short_Name | Address2 | Region  | City     | Market  | State    | Postal_Code | EIN    | NPI    |
      | Midwest | PGPTestName | TestNamePGP | Block Z  | NameTPGP   | Road X   | Midwest | New Town | Chicago | Nebraska |       10065 | 123852 | 852741 |

  @Smoke
  Scenario Outline: Edit and save changes for all fields of PGP organization
    When I click on "PGP" organization tab on organization dashboard
    Then I search with <PGP_Name1> on organization in search box
    And I see "1 Organization" search count on organization
    And I click <PGP_Name1> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "PGP Organization Name" field to <PGP_Name> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Short Name" field to <Short_Name> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "City" field to <City> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "EIN" field to <EIN> for organization
    And I edit "NPI" field to <NPI> for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | PGP_Name1   | PGP_Name    | Address1 | Short_Name | Address2  | Region    | City     | Market      | State    | Postal_Code | EIN    | NPI    |
      | TestNamePGP | PGPTestName | Block A  | PGPTName   | Street XI | Northeast | New York | New England | New York |       10045 | 564532 | 215536 |
