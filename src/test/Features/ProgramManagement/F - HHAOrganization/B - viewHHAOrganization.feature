Feature: View HHA organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page

  Scenario Outline: <Description>
    When I click on "HHA" organization tab on organization dashboard
    When I search with "<HHA_Name> - <Has_MO>" on organization in search box
    And I click "<HHA_Name> - <Has_MO>" field in search list on organization page
    And I Verify the "x" button on View page
    And I click on "x" button on particular organization
    And User should get redirected to the "HHA" organization tab page
    When I search with "<HHA_Name> - <Has_MO>" on organization in search box
    And I click "<HHA_Name> - <Has_MO>" field in search list on organization page
    And I verify "<HHA_Name> - <Has_MO>" name on the header of view profile
    And I verify <Organization Type> in "type" on view profile of "HHA" Organization
    And I verify <Address1> in "address1" on view profile of "HHA" Organization
    And I verify <Address2> in "address2" on view profile of "HHA" Organization
    And I verify <City> in "city" on view profile of "HHA" Organization
    And I verify Region name <Region> on view profile of "HHA" organization
    And I verify Market name <Market> on view profile of "HHA" organization
    And I verify <StateVerification> in "state" on view profile of "HHA" Organization
    And I verify <Postal_Code> in "zip" on view profile of "HHA" Organization
    And I verify CCN "<CCN> - <Has_MO>" on view profile of "HHA" organization
    And I verify EIN/TIN id "<EIN/TIN> - <Has_MO>" on view profile of "HHA" organization
    And I verify NPI number "<NPI> - <Has_MO>" on view profile of "HHA" organization
    And I verify "Managing Organization - <Has_MO>" on view profile of "HHA" Organization
    And I verify "Participant Id - <Has_MO>" on view profile of "HHA" Organization
    And I Verify the "Edit" button on View page

    Examples: 
      | Description                                                             | Has_MO | HHA_Name | Address1 | Short_Name | Address2 | Region  | Market  | City | State      | Postal_Code | CCN | EIN/TIN | NPI | StateVerification | Organization Type  |
      | Verification of HHA Organization details on HHA view page  - without MO | NO     | HHANAME  | Address1 | Short_Name | Address2 | Midwest | Chicago | City | California |       10000 | CCN | EIN     | NPI | CA                | Home Health Agency |
      | Verification of HHA Organization details on HHA view page - with MO     | YES    | HHANAME  | Address1 | Short_Name | Address2 | Midwest | Chicago | City | California |       10000 | CCN | EIN     | NPI | CA                | Home Health Agency |
