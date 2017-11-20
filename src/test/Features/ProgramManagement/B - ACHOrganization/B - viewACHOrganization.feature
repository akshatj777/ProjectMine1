Feature: View the Hospital Organization Finctionality tests.

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I click on "Hospital" organization tab on organization dashboard

  Scenario Outline: Verfication of details on view profile of Hospital Organization
    When I search with <Hosp_Name> on organization in search box
    And I click <Hosp_Name> field in search list on organization page
    And I Verify the "x" button on View page
    And I click on "x" button on particular organization
    And User should get redirected to the managing organization tab page
    And I verify "Hospital" as default organizations tab selected on homepage
    When I search with <Hosp_Name> on organization in search box
    And I click <Hosp_Name> field in search list on organization page
    And I verify <Hosp_Name> name on the header of view profile
    And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    And I verify <City> in "city" on view profile of "Hospital" Organization
    And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    And I verify CCN <CCN> on view profile of "Hospital" organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    And I verify NIP number <NPI> on view profile of "Hospital" organization
    And I verify Region name <LRegion> on view profile of "Hospital" organization
    And I verify Market name <LMarket> on view profile of "Hospital" organization
    And I verify the count of the Location
    And I verify header name "ID" under "Location" for "Hospital" organization
    And I verify header name "Location Name" under "Location" for "Hospital" organization
    And I verify header name "Address" under "Location" for "Hospital" organization
    And I verify header name "Type" under "Location" for "Hospital" organization
    And I verify header name "Region" under "Location" for "Hospital" organization
    And I verify header name "Market" under "Location" for "Hospital" organization
    And I Verify the "Edit" button on View page
    And I click on "Edit" button on particular organization
    And I click on Add Location button
    Then I verify "Location 2" on "Edit" organization page
    And I enter location name <Loc_Name> for Location "2" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "2" on "create" organization page
    And I enter location type <Loc_Type> for Location "2" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "2" on "create" organization page
    And I enter region <Loc_Region> for Location "2" on "create" organization page
    And I enter city <Loc_City> for Location "2" on "create" organization page
    And I enter market <Loc_Market> for Location "2" on "create" organization page
    And I enter state <Loc_State> for Location "2" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "2" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    When I search with <Hosp_Name> on organization in search box
    And I click <Hosp_Name> field in search list on organization page
    And I verify <Hosp_Name> name on the header of view profile
    And I verify the count of the Location

    Examples: 
      | Hosp_Org_Name | Address1 | Short_Name | Address2  | City | State    | Postal_Code | Loc_Name | LAddress1 | Loc_Type  | LAddress2 | LRegion | LCity | LMarket    | LState   | LPostal_Code | CCN | EIN | NPI | StateVerification |
      | ACH           | Address1 | Short      | Addresss2 | City | New York |       10000 | LocName  | LAddress1 | Swing bed | LAddress2 | West    | LCity | Oil States | New York |        10000 | CCN | EIN | NPI | NY                |

  