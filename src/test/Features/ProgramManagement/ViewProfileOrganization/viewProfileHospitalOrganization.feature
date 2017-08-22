Feature: User is able to view a Hospital Organization's Profile

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario Outline: Verify view profile details of Hospital Organization
    When I click on "Hospital" organization tab on organization dashboard
    Then I search with <Hosp_Name> on organization in search box
    And I click <Hosp_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "Hospital" Organization
    And I verify <City> in "city" on view profile of "Hospital" Organization
    And I verify <State> in "state" on view profile of "Hospital" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Hospital" Organization
    And I verify CCN <CCN> on view profile of "Hospital" organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "Hospital" organization
    And I verify NIP number <NPI> on view profile of "Hospital" organization
    And I verify Region name <Region> on view profile of "Hospital" organization
    And I verify Market name <Market> on view profile of "Hospital" organization
    And I verify Managing Organization name <MO_Name> on view profile of "Hospital" organization
    And I verify Participant Id <Participant_Id> on view profile of "Hospital" Organization
    And I verify header name "ID" under "Location" for "Hospital" organization
    And I verify header name "Location Name" under "Location" for "Hospital" organization
    And I verify header name "Address" under "Location" for "Hospital" organization
    And I verify header name "Type" under "Location" for "Hospital" organization
    And I verify header name "Region" under "Location" for "Hospital" organization
    And I verify header name "Market" under "Location" for "Hospital" organization

    Examples: 
      | Hosp_Name             | Address1  | Address2 | City  | State | Postal_Code | CCN      | EIN/TIN  | NPI      | Region    | Market  | MO_Name           | Participant_Id |
      | Automate Hospital Org | ABC Block | X Stree  | New A | CT    |       50002 | 10121314 | 10111213 | 10121213 | SouthEast | Florida | Automate Mang Org |             26 |
