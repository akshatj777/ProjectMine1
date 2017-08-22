Feature: User completes entering SNF Organization details during creation process,
       	 submit the information for validation and creation

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario Outline: Create a SNF organization with valid data (With Managing Organization)
                    (Manadatory + Non-manadatory fields)

    When I click on "SNF" organization tab on organization dashboard
    Then I click on create new Organization button on Program Management homepage
    And I select "Has a Management Organization" radio button for managing organization
    Then I select <MO_Name> managing organization name in Has a Management Organization drop down
    And I enter <SNF_Org_Name> in "SNF Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I enter <CCN> in "CCN" on create organization page
    And I enter <EIN> in "EIN" on create organization page
    And I enter <NPI> in "NPI" on create organization page
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
 #Submit is not included for now!!

    Examples: 
      | MO_Name            | SNF_Org_Name | Address1 | Short_Name | Address2 | City | State    | Postal_Code | CCN    | EIN    | NPI       | Loc_Name       | LAddress1 | Loc_Type | LAddress2 | LRegion | LCity | LMarket    | LState   | LPostal_Code |
      | 4571271 MONameTest | SNF          | Address  | Short      | Addresss | Cy   | New York |       40045 | 123456 | 789456 | 456789123 | adgfsadfgadsfg | LBlockA   | TCU      | bacd      | West    | Citya | Oil States | New York |        40006 |
