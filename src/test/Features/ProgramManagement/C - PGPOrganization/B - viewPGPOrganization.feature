Feature: View Functionality tests for PGP Organization.

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
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I Verify the "x" button on View page
    And I click on "x" button on particular organization
    And User should get redirected to the "PGP" organization tab page
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify <Organization Type> in "type" on view profile of "PGP" Organization
    And I verify <Address1> in "address1" on view profile of "PGP" Organization
    And I verify <City> in "city" on view profile of "PGP" Organization
    And I verify Region name <Region> on view profile of "PGP" organization
    And I verify Market name <Market> on view profile of "PGP" organization
    And I verify <StateVerification> in "state" on view profile of "PGP" Organization
    And I verify <Postal_Code> in "zip" on view profile of "PGP" Organization
    And I verify EIN/TIN id "<EIN/TIN> - <Has_MO>" on view profile of "PGP" organization
    And I verify NPI number "<NPI> - <Has_MO>" on view profile of "PGP" organization
    And I verify "Managing Organization - <Has_MO>" on view profile of "PGP" Organization
    And I verify "Participant Id - <Has_MO>" on view profile of "PGP" Organization
    And I Verify the "Edit" button on View page

    Examples: 
      | Description                                                             | Has_MO | PGP_Name | Address1 | Short_Name | Address2 | Region  | Market  | City | State      | Postal_Code | EIN/TIN | NPI | StateVerification | Organization Type |
      | Verification of PGP Organization details on PGP view page  - without MO | NO     | PGPNAME  | Address1 | Short_Name | Address2 | Midwest | Chicago | City | California |       10000 | EIN     | NPI | CA                | PGP               |
      | Verification of PGP Organization details on PGP view page - with MO     | YES    | PGPNAME  | Address1 | Short_Name | Address2 | Midwest | Chicago | City | California |       10000 | EIN     | NPI | CA                | PGP               |
