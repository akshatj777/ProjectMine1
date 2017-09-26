Feature: User completes entering Hospital Organization details during creation process,
       	 submit the information for validation and creation

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  Scenario Outline: Create a Hospital organization with valid data without MO
    (Manadatory + Non-manadatory fields)

    When I click on "Hospital" organization tab on organization dashboard
    Then I click on create new Organization button on Program Management homepage
    And I select "No Management Organization" radio button for managing organization
    And I enter <Hosp_Org_Name> in "Hospital Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique CCN in "CCN" on create organization page
    And I provide unique EIN in "EIN" on create organization page
    And I provide unique NPI in "NPI" on create organization page
    Then I verify "Location 1" on "create" SNF organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <LAddress1> for Location "1" on "create" organization page
    And I enter location type <Loc_Type> for Location "1" on "create" organization page
    And I enter address2 <LAddress2> for Location "1" on "create" organization page
    And I enter region <LRegion> for Location "1" on "create" organization page
    And I enter city <LCity> for Location "1" on "create" organization page
    And I enter market <LMarket> for Location "1" on "create" organization page
    And I enter state <LState> for Location "1" on "create" organization page
    And I enter zip <LPostal_Code> for Location "1" on "create" organization page
    Then I click on "Submit" button on create organization page
    Then I verify "Success! Hospital Organization Successfully Created." after submitting the create ogranization page
    Then I search with <Hosp_Org_Name> on organization in search box
    And I click <Hosp_Org_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    And I verify <City> in "city" on view profile of "Hospital" Organization
    And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    And I verify CCN <CCN> on view profile of "Hospital" organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    And I verify NIP number <NPI> on view profile of "Hospital" organization
    And I verify Region name <LRegion> on view profile of "Hospital" organization
    And I verify Market name <LMarket> on view profile of "Hospital" organization
    And I verify header name "ID" under "Location" for "Hospital" organization
    And I verify header name "Location Name" under "Location" for "Hospital" organization
    And I verify header name "Address" under "Location" for "Hospital" organization
    And I verify header name "Type" under "Location" for "Hospital" organization
    And I verify header name "Region" under "Location" for "Hospital" organization
    And I verify header name "Market" under "Location" for "Hospital" organization

    Examples: 
      | MO_Name               | Hosp_Org_Name | Address1 | Short_Name | Address2 | City | State    | Postal_Code | Loc_Name | LAddress1 | Loc_Type  | LAddress2 | LRegion | LCity | LMarket    | LState   | LPostal_Code | CCN | EIN | NPI | StateVerification |
      | 26 Automate Manag Org | ACH           | Address  | Short      | Addresss | Cy   | New York |       40045 | LocName  | LBlockA   | Swing bed | bBlockLoc | West    | CityL | Oil States | New York |        40006 | 123 | 123 | 123 | NY                |
#
  #Scenario Outline: Edit Hospital organization without MO
    #When I click on "Hospital" organization tab on organization dashboard
    #Then I search with <Hosp_Name1> on organization in search box
    #And I click <Hosp_Name1> field in search list on organization page
    #And I click on "Edit" button on particular organization
    #And I edit "Hospital Organization Name" field to <Hosp_Name1> for organization
    #And I edit "Address 1" field to <Address1> for organization
    #And I edit "Address 2" field to <Address2> for organization
    #And I edit "City" field to <City> for organization
    #And I edit <State> field for organization
    #And I edit "Postal Code" field to <Postal_Code> for organization
    #And I edit Location "Location Name" field to <L_Name> for Location "1" for organization
    #And I edit Location "address1" field to <L_Address1> for Location "1" for organization
    #And I edit Location Type dropdown field to <L_Type> for Location "1" for organization
    #And I edit Location "address2" field to <L_Address2> for Location "1" for organization
    #And I edit Region dropdown field to <L_Region> for Location "1" for organization
    #And I edit Location "city" field to <L_City> for Location "1" for organization
    #And I edit Market dropdown field to <L_Market> for Location "1" for organization
    #And I edit Location State dropdown field to <L_State> for Location "1" for organization
    #And I edit Location "postalCode" field to <L_Postal_Code> for Location "1" for organization
    #Then I click on "Submit" button on create organization page
    #Then I search with <Hosp_Name1> on organization in search box
    #And I click <Hosp_Name1> field in search list on organization page
    #And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    #And I verify <City> in "city" on view profile of "Hospital" Organization
    #And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    #And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    #And I verify CCN <CCN> on view profile of "Hospital" organization
    #And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    #And I verify NIP number <NPI> on view profile of "Hospital" organization
    #And I verify Region name <L_Region> on view profile of "Hospital" organization
    #And I verify Market name <L_Market> on view profile of "Hospital" organization
    #And I verify header name "ID" under "Location" for "Hospital" organization
    #And I verify header name "Location Name" under "Location" for "Hospital" organization
    #And I verify header name "Address" under "Location" for "Hospital" organization
    #And I verify header name "Type" under "Location" for "Hospital" organization
    #And I verify header name "Region" under "Location" for "Hospital" organization
    #And I verify header name "Market" under "Location" for "Hospital" organization
#
    #Examples: 
      #| Hosp_Name         | Hosp_Name1 | Address1  | Short_Name   | Address2  | City   | State   | Postal_Code | CCN      | EIN      | NPI      | L_Name              | L_Address1       | L_Type   | L_Address2       | L_Region | L_Market      | L_City       | L_State | L_Postal_Code | StateVerification |
      #| Hosp Org Ach Name | ACH        | Street AB | Hos Ach Name | Street BA | City Y | Arizona |       10041 | 14001400 | 15001500 | 12001200 | Test Edit Loca Name | Block A Loca Add | Children | Block BA Loc Add | West     | Desert Island | City New Loc | Kansas  |         79845 | AZ                |
#
  #Scenario Outline: Create a Hospital organization with valid data with MO
                   #(Manadatory + Non-manadatory fields)
#
    #When I click on "Hospital" organization tab on organization dashboard
    #Then I click on create new Organization button on Program Management homepage
    #And I select "Has a Management Organization" radio button for managing organization
    #Then I select <MO_Name> managing organization name in Has a Management Organization drop down
    #And I enter <Hosp_Org_Name> in "Hospital Organization Name" on create organization page
    #And I enter <Address1> in "Address 1" on create organization page
    #And I enter <Short_Name> in "Short Name" on create organization page
    #And I enter <Address2> in "Address 2" on create organization page
    #And I enter <City> in "City" on create organization page
    #And I select <State> in State on create organization page
    #And I enter <Postal_Code> in "Postal Code" on create organization page
    #And I provide unique CCN in "CCN" on create organization page
    #And I provide unique EIN in "EIN" on create organization page
    #And I provide unique NPI in "NPI" on create organization page
    #Then I verify "Location 1" on "create" SNF organization page
    #And I enter location name <Loc_Name> for Location "1" on "create" organization page
    #And I enter address1 <LAddress1> for Location "1" on "create" organization page
    #And I enter location type <Loc_Type> for Location "1" on "create" organization page
    #And I enter address2 <LAddress2> for Location "1" on "create" organization page
    #And I enter region <LRegion> for Location "1" on "create" organization page
    #And I enter city <LCity> for Location "1" on "create" organization page
    #And I enter market <LMarket> for Location "1" on "create" organization page
    #And I enter state <LState> for Location "1" on "create" organization page
    #And I enter zip <LPostal_Code> for Location "1" on "create" organization page
    #Then I click on "Submit" button on create organization page
    #Then I verify "Success! Hospital Organization Successfully Created." after submitting the create ogranization page
    #Then I search with <Hosp_Org_Name> on organization in search box
    #And I click <Hosp_Org_Name> field in search list on organization page
    #And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    #And I verify <City> in "city" on view profile of "Hospital" Organization
    #And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    #And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    #And I verify CCN <CCN> on view profile of "Hospital" organization
    #And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    #And I verify NIP number <NPI> on view profile of "Hospital" organization
    #And I verify Region name <LRegion> on view profile of "Hospital" organization
    #And I verify Market name <LMarket> on view profile of "Hospital" organization
    #And I verify header name "ID" under "Location" for "Hospital" organization
    #And I verify header name "Location Name" under "Location" for "Hospital" organization
    #And I verify header name "Address" under "Location" for "Hospital" organization
    #And I verify header name "Type" under "Location" for "Hospital" organization
    #And I verify header name "Region" under "Location" for "Hospital" organization
    #And I verify header name "Market" under "Location" for "Hospital" organization
#
    #Examples: 
      #| MO_Name                | Hosp_Org_Name | Address1 | Short_Name | Address2 | City | State    | Postal_Code | Loc_Name | LAddress1 | Loc_Type  | LAddress2 | LRegion | LCity | LMarket    | LState   | LPostal_Code | CCN | EIN | NPI | StateVerification |
      #| 26 Automate Manag Orgg | ACH           | Address  | Short      | Addresss | Cy   | New York |       40045 | LocName  | LBlockA   | Swing bed | bBlockLoc | West    | CityL | Oil States | New York |        40006 | 123 | 123 | 123 | NY                |
#
  #Scenario Outline: Edit and save changes for all fields of Hospital Organization
    #When I click on "Hospital" organization tab on organization dashboard
    #Then I search with <Hosp_Name> on organization in search box
    #And I click <Hosp_Name> field in search list on organization page
    #And I click on "Edit" button on particular organization
    #And I edit "Hospital Organization Name" field to <Hosp_Name> for organization
    #And I edit "Address 1" field to <Address1> for organization
    #And I edit "Address 2" field to <Address2> for organization
    #And I edit "City" field to <City> for organization
    #And I edit <State> field for organization
    #And I edit "Postal Code" field to <Postal_Code> for organization
    #And I edit Location "Location Name" field to <L_Name> for Location "1" for organization
    #And I edit Location "address1" field to <L_Address1> for Location "1" for organization
    #And I edit Location Type dropdown field to <L_Type> for Location "1" for organization
    #And I edit Location "address2" field to <L_Address2> for Location "1" for organization
    #And I edit Region dropdown field to <L_Region> for Location "1" for organization
    #And I edit Location "city" field to <L_City> for Location "1" for organization
    #And I edit Market dropdown field to <L_Market> for Location "1" for organization
    #And I edit Location State dropdown field to <L_State> for Location "1" for organization
    #And I edit Location "postalCode" field to <L_Postal_Code> for Location "1" for organization
    #Then I click on "Submit" button on create organization page
    #Then I search with <Hosp_Name> on organization in search box
    #And I click <Hosp_Name> field in search list on organization page
    #And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    #And I verify <City> in "city" on view profile of "Hospital" Organization
    #And I verify <StateVerification> in "state" on view profile of "Hospital" Organization
    #And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    #And I verify CCN <CCN> on view profile of "Hospital" organization
    #And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    #And I verify NIP number <NPI> on view profile of "Hospital" organization
    #And I verify Region name <L_Region> on view profile of "Hospital" organization
    #And I verify Market name <L_Market> on view profile of "Hospital" organization
    #And I verify header name "ID" under "Location" for "Hospital" organization
    #And I verify header name "Location Name" under "Location" for "Hospital" organization
    #And I verify header name "Address" under "Location" for "Hospital" organization
    #And I verify header name "Type" under "Location" for "Hospital" organization
    #And I verify header name "Region" under "Location" for "Hospital" organization
    #And I verify header name "Market" under "Location" for "Hospital" organization
#
    #Examples: 
      #| Hosp_Name | Address1  | Short_Name   | Address2  | City   | State   | Postal_Code | CCN | EIN      | NPI      | L_Name              | L_Address1       | L_Type   | L_Address2       | L_Region | L_Market      | L_City       | L_State | L_Postal_Code | StateVerification |
      #| ACH       | Street AB | Hos Ach Name | Street BA | City Y | Arizona |       10041 | 123 | 15001500 | 12001200 | Test Edit Loca Name | Block A Loca Add | Children | Block BA Loc Add | West     | Desert Island | City New Loc | Kansas  |         79845 | AZ                |
