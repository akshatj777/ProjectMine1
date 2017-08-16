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
    And I see "1 Organization" search count on organization
    And I click <PGP_Name> field in search list on organization page
    And I verify <Address1> in "address1" on view profile of "PGP" Organization
    And I verify <City> in "city" on view profile of "PGP" Organization
    And I verify <State> in "state" on view profile of "PGP" Organization
    And I verify <Postal_Code> in "zip" on view profile of "PGP" Organization
    And I verify EIN/TIN id <EIN/TIN> on view profile of "PGP" organization
    And I verify NIP number <NPI> on view profile of "PGP" organization
    And I verify Managing Organization name <MO_Name> on view profile of "PGP" organization
    And I verify Participant Id <ParticipantId> on view profile of "PGP" Organization

    #ShortName and Region in present for now
    Examples: 
      | PGP_Name            | MO_Name               | ParticipantId | Address1 | City      | State | Postal_Code | EIN/TIN    | NPI        |
      | TestPGPOrganization | TestManagingOrgedited |       4571253 | street2, | new york, | NY    |       10052 | 9876543210 | 1234567890 |
