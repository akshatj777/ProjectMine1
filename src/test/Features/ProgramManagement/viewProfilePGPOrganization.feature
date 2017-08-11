Feature: User is able to view a PGP Organization's Profile

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    Then I click on Organization link on Program Management page

  @Smoke
  Scenario Outline: Verify view profile details of PGP Organization
    When I click on "PGP" organization tab on organization dashboard
    Then I search with <PGP_Name> on organization in search box
    And I verify Participant Id <ParticipantId> on view profile of Managing Organization
    And I verify <Address1> in "address1" on view profile of Managing Organization
    #And I verify <Address2> in "address2" on view profile of Managing Organization
    And I verify <City> in "city" on view profile of Managing Organization
    And I verify <State> in "state" on view profile of Managing Organization
    And I verify <Postal_Code> in "zip" on view profile of Managing Organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of PGP organization

    Examples: 
      | PGP_Name            | ParticipantId | Address1 | City     | State | Postal_Code | EIN/TIN    | NPI        |
      | TestPGPOrganization |       4571253 | street2  | new york | NY    |       10052 | 9876543210 | 1234567890 |
