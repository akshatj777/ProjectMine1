Feature: Verification of Managing Organization details with no ACH/PGP/HHA/SNF associated to it

  Scenario Outline: Verification of details on view profile of Managing Organization
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page
    When I search with "<MO_Name>" on organization in search box
    And I click "<MO_Name>" field in search list on organization page
    And I Verify the "x" button on View page
    And I click on "x" button on particular organization
    And User should get redirected to the managing organization tab page
    And I verify "Managing" as default organizations tab selected on homepage
    When I search with "<MO_Name>" on organization in search box
    And I click "<MO_Name>" field in search list on organization page
    And I verify "<MO_Name>" name on the header of view profile
    And I verify Participant Id on view profile of "Managing" Organization
    And I verify <Address1> in "address1" on view profile of "Managing" Organization
    And I verify <Address2> in "address2" on view profile of "Managing" Organization
    And I verify <City> in "city" on view profile of "Managing" Organization
    And I verify <StateInitials> in "state" on view profile of "Managing" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Managing" Organization
    Then I verify <Contact_Person> in "contact-name" on view profile of "Managing" Organization
    And I verify <Contact_Phone> in "contact-phone" on view profile of "Managing" Organization
    And I verify <Contact_Email> in "contact-email" on view profile of "Managing" Organization
    And I Verify the "Edit" button on View page
    And I verify "ACH" organization tab present under "Managing" Organization
    And I verify "PGP" organization tab present under "Managing" Organization
    And I verify "SNF" organization tab present under "Managing" Organization
    Then I verify "+" button under "Manaing" organization page
    Then I verify "ACH" organization tab by default selected under Managing Organization
    And I verify "CCN" header label under "ACH" organization
    And I verify "ACH Organization Name" header label under "ACH" organization
    And I verify "City" header label under "ACH" organization
    And I verify "State" header label under "ACH" organization
    And I verify "Postal Code" header label under "ACH" organization
    And I verify the count "0 Organizations" for the associated organization
    And I click on "PGP" organization under Managing Organization
    And I verify "TIN/EIN" header label under "PGP" organization
    And I verify "PGP Organization Name" header label under "PGP" organization
    And I verify "City" header label under "PGP" organization
    And I verify "State" header label under "PGP" organization
    And I verify "Postal Code" header label under "PGP" organization
    And I verify the count "0 Organizations" for the associated organization
    And I click on "SNF" organization under Managing Organization
    And I verify "CCN" header label under "SNF" organization
    And I verify "SNF Organization Name" header label under "SNF" organization
    And I verify "City" header label under "SNF" organization
    And I verify "State" header label under "SNF" organization
    And I verify "Postal Code" header label under "SNF" organization
    And I verify the count "0 Organizations" for the associated organization

    Examples: 
      | Description                          | MO_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | StateInitials |
      | View details on Managing Org profile | MONAME  | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | NY            |
