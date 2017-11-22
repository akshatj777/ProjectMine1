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

  Scenario Outline: Verfication of details on view profile of Hospital Organization without MO, Verify the Cross Button and Edit Button and also chek the Location details and count
    When I search with "<Hosp_Name><Has_MO>" on organization in search box
    And I click "<Hosp_Name><Has_MO>" field in search list on organization page
    And I Verify the "x" button on View page
    And I click on "x" button on particular organization
    And User should get redirected to the "Hospital" organization tab page
    When I search with "<Hosp_Name><Has_MO>" on organization in search box
    And I click "<Hosp_Name><Has_MO>" field in search list on organization page
    And I verify "<Hosp_Name><Has_MO>" name on the header of view profile
    And I verify <Organization Type> in "type" on view profile of "Hospital" Organization
    And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    And I verify <City> in "city" on view profile of "Hospital" Organization
    And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    And I verify CCN "<CCN><Has_MO>" on view profile of "Hospital" organization
    And I verify EIN/TIN id "<EIN/TIN><Has_MO>" on view profile of "Hospital" organization
    And I verify NPI number "<NPI><Has_MO>" on view profile of "Hospital" organization
    And I verify Region name <Loc_Region> on view profile of "Hospital" organization
    And I verify Market name <Loc_Market> on view profile of "Hospital" organization
    And I verify "Managing Organization - <Has_MO>" on view profile of "Hospital" Organization
    And I verify "Participant Id - <Has_MO>" on view profile of "Hospital" Organization
    And I verify "1" location count on view "Hospital" organization page
    And I verify header name "ID" under "Location" for "Hospital" organization
    And I verify header name "Location Name" under "Location" for "Hospital" organization
    And I verify header name "Address" under "Location" for "Hospital" organization
    And I verify header name "Type" under "Location" for "Hospital" organization
    And I verify header name "Region" under "Location" for "Hospital" organization
    And I verify header name "Market" under "Location" for "Hospital" organization
    And I Verify the "Edit" button on View page
    And I click on "Edit" button on particular organization
    Then I click on "+" button on "Edit Hospital" organization page
    Then I verify "Location 2" on "Edit" organization page
    And I enter location name <Loc_Name> for Location "2" on "Edit" organization page
    And I enter address1 <Loc_Address1> for Location "2" on "Edit" organization page
    And I select location type <Loc_Type> for Location "2" on "Edit" organization page
    And I enter address2 <Loc_Address2> for Location "2" on "Edit" organization page
    And I select region <Loc_Region> for Location "2" on "Edit" organization page
    And I enter city <Loc_City> for Location "2" on "Edit" organization page
    And I select market <Loc_Market> for Location "2" on "Edit" organization page
    And I select state <Loc_State> for Location "2" on "Edit" organization page
    And I enter zip <Loc_Postal_Code> for Location "2" on "Edit" organization page
    Then I click on "Submit" button on "Edit" organization page
    When I search with "<Hosp_Name><Has_MO>" on organization in search box
    And I click "<Hosp_Name><Has_MO>" field in search list on organization page
    And I verify "<Hosp_Name><Has_MO>" name on the header of view profile
    And I verify "2" location count on view "Hospital" organization page
		
    Examples: 
      | Description                                                                | Has_MO | Hosp_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Address2 | Loc_Region | Loc_City | Loc_Market | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | StateVerification | Organization Type |
      | Verfication of details on view profile of Hospital Organization without MO | NO     | ACHNAME   | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Loc_Address2 | Midwest    | Loc_City | Chicago    | California |           10000 | CCN | EIN | NPI | CA                | ACH               |
      | Verfication of details on view profile of Hospital Organization with MO    | YES    | ACHNAME   | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Loc_Address2 | Midwest    | Loc_City | Chicago    | California |           10000 | CCN | EIN | NPI | CA                | ACH               |