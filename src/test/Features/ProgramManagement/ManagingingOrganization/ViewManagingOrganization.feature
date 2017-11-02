Feature: View the Managing organization

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page

  Scenario Outline: View managing organization and also verify Details displayed for associated organization
    When I click on Organization link on Program Management page
    When I search with <MO_Name> on organization in search box
    And I click <MO_Name> field in search list on organization page
    And I verify <MO_Name> name on the header of view profile
    And I verify Participant Id <ParticipantId> on view profile of "Managing" Organization
    And I verify <Address1> in "address1" on view profile of "Managing" Organization
    And I verify <Address2> in "address2" on view profile of "Managing" Organization
    And I verify <City> in "city" on view profile of "Managing" Organization
    And I verify <StateInitials> in "state" on view profile of "Managing" Organization
    And I verify <Postal_Code> in "zip" on view profile of "Managing" Organization
    Then I verify <Contact_Person> in "contact-name" on view profile of "Managing" Organization
    And I verify <Contact_Phone> in "contact-phone" on view profile of "Managing" Organization
    And I verify <Contact_Email> in "contact-email" on view profile of "Managing" Organization
    And I verify "ACH" organization present under "Managing" Organization
    And I verify "PGP" organization present under "Managing" Organization
    And I verify "SNF" organization present under "Managing" Organization
    Then I verify "ACH" organization by default selected under Managing Organization
    And I verify "CCN" header label under "ACH" organization in Managing Organization
    And I verify "ACH Organization Name" header label under "ACH" organization in Managing Organization
    And I verify "City" header label under "ACH" organization in Managing Organization
    And I verify "State" header label under "ACH" organization in Managing Organization
    And I verify "Postal Code" header label under "ACH" organization in Managing Organization
    And I click on "PGP" organization under Managing Organization
    And I verify "TIN/EIN" header label under "PGP" organization in Managing Organization
    And I verify "PGP Organization Name" header label under "PGP" organization in Managing Organization
    And I verify "City" header label under "PGP" organization in Managing Organization
    And I verify "State" header label under "PGP" organization in Managing Organization
    And I verify "Postal Code" header label under "PGP" organization in Managing Organization
    And I click on "SNF" organization under Managing Organization
    And I verify "CCN" header label under "SNF" organization in Managing Organization
    And I verify "SNF Organization Name" header label under "SNF" organization in Managing Organization
    And I verify "City" header label under "SNF" organization in Managing Organization
    And I verify "State" header label under "SNF" organization in Managing Organization
    And I verify "Postal Code" header label under "SNF" organization in Managing Organization

    Examples: 
      | MO_Name | Contact_Person | Contact_Email         | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | StateInitials | ParticipantId |
      | API_MO  | John           | API_smith@yopmail.com |    6544123414 | Addres1  | Adddres2 | City | New York |       45201 | NY            | Sample        |

  Scenario Outline: To verify the count for the associated Organizations
    When I click on Organization link on Program Management page
    When I search with <MO_Name> on organization in search box
    And I click <MO_Name> field in search list on organization page
    And I verify <MO_Name> name on the header of view profile
    And I verify "ACH" organization present under "Managing" Organization
    And I verify "PGP" organization present under "Managing" Organization
    And I verify "SNF" organization present under "Managing" Organization
    Then I verify "ACH" organization by default selected under Managing Organization
    And I verify the count for the associated organization
    And I click on "PGP" organization under Managing Organization
    And I verify the count for the associated organization
    And I click on "SNF" organization under Managing Organization
    And I verify the count for the associated organization

    Examples: 
      | MO_Name       |
      | EditTestMnOrg |

  Scenario Outline: To verify that the count is increased by 1, when a Organization is associated
    When I click on Organization link on Program Management page
    When I search with <MO_Name> on organization in search box
    And I click <MO_Name> field in search list on organization page
    And I verify <MO_Name> name on the header of view profile
    And I verify "ACH" organization present under "Managing" Organization
    And I verify "PGP" organization present under "Managing" Organization
    And I verify "SNF" organization present under "Managing" Organization
    Then I verify "ACH" organization by default selected under Managing Organization
    And I verify the count for the associated organization
    Then I click on create new Organization button on Program Management homepage
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
    When I click on Organization link on Program Management page
    When I search with <MO_Name> on organization in search box
    And I click <MO_Name> field in search list on organization page
    And I verify the count for the associated organization

    Examples: 
      | MO_Name             | Hosp_Org_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | CCN | EIN | NPI | Loc_Name | LAddress1 | Loc_Type | LAddress2 | LRegion | LCity | LMarket | LState | LPostal_Code | StateInitials | ParticipantId |
      | Automate Manag Orgg | ACH           | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | CCN | EIN | NPI | way123   | LAddress  |          |           |         |       |         |        |              | NY            | Sample        |

  Scenario Outline: View managing organization and click on the cross button
    When I click on Organization link on Program Management page
    When I search with <MO_Name> on organization in search box
    And I click <MO_Name> field in search list on organization page
    And I verify <MO_Name> name on the header of view profile
    And I click on the cross button
    And user should get redirected to the managing organization tab page
    And I verify "Managing" as default organizations tab selected on homepage

    Examples: 
      | MO_Name       |
      | EditTestMnOrg |

  Scenario Outline: Searching Organizations on Managing Profile Page with associated organization
    When I click on Organization link on Program Management page
    When I search with <MO_Name> on organization in search box
    And I click <MO_Name> field in search list on organization page
    And I verify "ACH" organization present under "Managing" Organization
    And I verify "PGP" organization present under "Managing" Organization
    And I verify "SNF" organization present under "Managing" Organization
    Then I verify "ACH" organization by default selected under Managing Organization
    When I search with <Org_Name> on organization in search box
    And I click <Org_Name> field in search list on organization page
    And I click on the cross button
    And I click on "PGP" organization under Managing Organization
    When I search with <Org_Name1> on organization in search box
    And I click <Org_Name1> field in search list on organization page
    And I click on the cross button
    And I click on "SNF" organization under Managing Organization
    When I search with <Org_Name2> on organization in search box
    And I click <Org_Name2> field in search list on organization page

    Examples: 
      | MO_Name       | Org_Name | Org_Name1       | Org_Name2  |
      | EditTestMnOrg | fghfhfhf | pgpnamewertfcsc | snfnamedef |
