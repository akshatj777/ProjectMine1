Feature: User edit details of existing SNF organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario Outline: Edit and save changes for all fields of SNF Organization
    When I click on "SNF" organization tab on organization dashboard
    Then I search with <SNF_Name> on organization in search box
    And I click <SNF_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "SNF Organization Name" field to <SNF_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "City" field to <City> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "CCN" field to <CCN> for organization
    And I edit "EIN" field to <EIN> for organization
    And I edit "NPI" field to <NPI> for organization
    And I edit Location "Location Name" field to <L_Name> for Location "1" for organization
    And I edit Location "address1" field to <L_Address1> for Location "1" for organization
    And I edit Location Type dropdown field to <L_Type> for Location "1" for organization
    And I edit Location "address2" field to <L_Address2> for Location "1" for organization
    And I edit Region dropdown field to <L_Region> for Location "1" for organization
    And I edit Location "city" field to <L_City> for Location "1" for organization
    And I edit Market dropdown field to <L_Market> for Location "1" for organization
    And I edit Location State dropdown field to <L_State> for Location "1" for organization
    And I edit Location "postalCode" field to <L_Postal_Code> for Location "1" for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | SNF_Name       | SNF_Name1      | Address1 | Short_Name | Address2 | City   | State    | Postal_Code | CCN    | EIN    | NPI    | L_Name         | L_Address1       | L_Type          | L_Address2       | L_Region | L_Market | L_City            | L_State | L_Postal_Code |
      | SNFEditTestOrg | EditSNFTestOrg | A Block  | TestSNF    | B Block  | A City | New York |       14001 | 123123 | 456456 | 123456 | SNFEditTestLoc | Edit Block A Loc | Skilled Nursing | Edit Block B Loc | Midwest  | Chicago  | City EditTest Loc | Alaska  |         15015 |

@Smoke
  Scenario Outline: Edit and save changes for all fields of SNF Organization - Previous state
    When I click on "SNF" organization tab on organization dashboard
    Then I search with <SNF_Name> on organization in search box
    And I click <SNF_Name> field in search list on organization page
    And I click on "Edit" button on particular organization
    And I edit "SNF Organization Name" field to <SNF_Name1> for organization
    And I edit "Address 1" field to <Address1> for organization
    And I edit "Address 2" field to <Address2> for organization
    And I edit "City" field to <City> for organization
    And I edit <State> field for organization
    And I edit "Postal Code" field to <Postal_Code> for organization
    And I edit "CCN" field to <CCN> for organization
    And I edit "EIN" field to <EIN> for organization
    And I edit "NPI" field to <NPI> for organization
    And I edit Location "Location Name" field to <L_Name> for Location "1" for organization
    And I edit Location "address1" field to <L_Address1> for Location "1" for organization
    And I edit Location Type dropdown field to <L_Type> for Location "1" for organization
    And I edit Location "address2" field to <L_Address2> for Location "1" for organization
    And I edit Region dropdown field to <L_Region> for Location "1" for organization
    And I edit Location "city" field to <L_City> for Location "1" for organization
    And I edit Market dropdown field to <L_Market> for Location "1" for organization
    And I edit Location State dropdown field to <L_State> for Location "1" for organization
    And I edit Location "postalCode" field to <L_Postal_Code> for Location "1" for organization
    Then I click on "Submit" button on create organization page

    Examples: 
      | SNF_Name       | SNF_Name1      | Address1 | Short_Name  | Address2 | City   | State   | Postal_Code | CCN    | EIN    | NPI    | L_Name         | L_Address1      | L_Type | L_Address2      | L_Region  | L_Market  | L_City            | L_State        | L_Postal_Code |
      | EditSNFTestOrg | SNFEditTestOrg | Block A  | EditTestSNF | Block B  | City A | Arizona |       10014 | 123789 | 456987 | 456123 | LocSNFEditTest | LocEdit Block A | TCU    | LocEdit Block B | Northeast | New jersey | Loc City EditTest | American Samoa |         10015 |
