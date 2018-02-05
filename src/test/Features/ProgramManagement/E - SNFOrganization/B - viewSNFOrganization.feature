Feature: View SNF organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
    When I click on Organization link on Program Management page

  Scenario Outline: <Description>
    Then I verify "+" button under "Managing" organization page
    Then I click on "+" button on "Managing" organization page
    And I verify "Create Managing Organization" header text on create organization page
    Then I enter <MO_Name> in "Managing Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Contact_Email> in "Contact Email" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create MO" organization page

    Examples: 
      | Description                                            | MO_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | Message                                     |
      | Create Managing Organization with all available fields | MONAME  | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | Managing Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    Then I click on "+" button on "SNF" organization page
    And I verify "Create SNF Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <SNF_Name> in "SNF Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "SNF - <CCN>" in "CCN" on create organization page
    And I provide unique "SNF - <EIN>" in "EIN" on create organization page
    And I provide unique "SNF - <NPI>" in "NPI" on create organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "1" on "create" organization page
    And I select location type <Loc_Type> for Location "1" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "1" on "create" organization page
    And I select region <Loc_Region> for Location "1" on "create" organization page
    And I enter city <Loc_City> for Location "1" on "create" organization page
    And I select market <Loc_Market> for region "<Loc_Region>" for Location "1" on "create" organization page
    And I select state <Loc_State> for Location "1" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "1" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create SNF - <Has_MO>" organization page

    Examples: 
      | Description                                                        | Has_MO | Managing_Org | SNF_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type        | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | Message                                |
      | Create SNF Organization with all the available fields - Without MO | NO     |              | SNFNAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Skilled Nursing | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | SNF Organization Successfully Created. |
      | Create SNF Organization with all the available fields - With MO    | YES    | MONAME       | SNFNAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Skilled Nursing | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | SNF Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on "SNF" organization tab on organization dashboard
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I Verify the "x" button on View page
    And I click on "x" button on particular organization
    And User should get redirected to the "SNF" organization tab page
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I verify "<SNF_Name> - <Has_MO>" name on the header of view profile
    And I verify <Organization Type> in "type" on view profile of "SNF" Organization
    And I verify <Address1> in "address1" on view profile of "SNF" Organization
    And I verify <Address2> in "address2" on view profile of "SNF" Organization
    And I verify <City> in "city" on view profile of "SNF" Organization
    And I verify <StateVerification> in "state" on view profile of "SNF" Organization
    And I verify <Postal_Code> in "zip" on view profile of "SNF" Organization
    And I verify CCN "<CCN> - <Has_MO>" on view profile of "SNF" organization
    And I verify EIN/TIN id "<EIN/TIN> - <Has_MO>" on view profile of "SNF" organization
    And I verify NPI number "<NPI> - <Has_MO>" on view profile of "SNF" organization
    And I verify Region name <Loc_Region> on view profile of "SNF" organization
    And I verify Market name <Loc_Market> on view profile of "SNF" organization
    And I verify "Managing Organization - <Has_MO>" on view profile of "SNF" Organization
    And I verify "Participant Id - <Has_MO>" on view profile of "SNF" Organization
    And I verify "1" location count on view "SNF" organization page
    And I verify header name "ID" under "Location" for "SNF" organization
    And I verify header name "Location Name" under "Location" for "SNF" organization
    And I verify header name "Address" under "Location" for "SNF" organization
    And I verify header name "Type" under "Location" for "SNF" organization
    And I verify header name "Region" under "Location" for "SNF" organization
    And I verify header name "Market" under "Location" for "SNF" organization
    And I Verify the "Edit" button on View page
    And I click on "Edit" button on particular organization
    Then I click on "+" button on "Edit SNF" organization page
    Then I verify "Location 2" on "Edit" organization page
    And I enter location name <Loc_Name> for Location "2" on "Edit" organization page
    And I enter address1 <Loc_Address1> for Location "2" on "Edit" organization page
    And I select location type <Loc_Type> for Location "2" on "Edit" organization page
    And I enter address2 <Loc_Address2> for Location "2" on "Edit" organization page
    And I select region <Loc_Region> for Location "2" on "Edit" organization page
    And I enter city <Loc_City> for Location "2" on "Edit" organization page
    And I select market <Loc_Market> for region "<Loc_Region>" for Location "2" on "Edit" organization page
    And I select state <Loc_State> for Location "2" on "Edit" organization page
    And I enter zip <Loc_Postal_Code> for Location "2" on "Edit" organization page
    Then I click on "Submit" button on "Edit" organization page
    Then I verify "<Message>" after submitting the "Edit SNF - <Has_MO>" organization page
    When I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I click "<SNF_Name> - <Has_MO>" field in search list on organization page
    And I verify "<SNF_Name> - <Has_MO>" name on the header of view profile
    And I verify "2" location count on view "SNF" organization page

    Examples: 
      | Description                                                                             | Has_MO | SNF_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name  | Loc_Address1 | Loc_Type        | Loc_Address2 | Loc_Region | Loc_City | Loc_Market | Loc_State  | Loc_Postal_Code | CCN | EIN/TIN | NPI | StateVerification | Organization Type | Message                                |
      | Verification of SNF details and count of locations displayed under SNF org - with MO    | YES    | SNFNAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name2 | Loc_Address1 | Skilled Nursing | Loc_Address2 | Midwest    | Loc_City | Chicago    | California |           10000 | CCN | EIN     | NPI | CA                | SNF               | SNF Organization Successfully Updated. |
      | Verification of SNF details and count of locations displayed under SNF org - without MO | NO     | SNFNAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name2 | Loc_Address1 | Skilled Nursing | Loc_Address2 | Midwest    | Loc_City | Chicago    | California |           10000 | CCN | EIN     | NPI | CA                | SNF               | SNF Organization Successfully Updated. |

  Scenario Outline: <Description>
    When I search with "<MO_Name>" on organization in search box
    And I click "<MO_Name>" field in search list on organization page
    And I verify "SNF" organization tab present under "Managing" Organization
    And I click on "SNF" organization tab on under Managing Organization
    Then I verify the Search bar on "SNF" organization page
    And I get the count of "SNF" organizations
    Then I click on "+" button on "Managing" organization page
    And I verify "Create SNF Organization" header text on create organization page
    And I verify "Has a Management Organization" radio button is checked
    And I verify Managing Organization is auto filled on "create SNF" Organization page
    Then I enter <SNF_Name> in "SNF Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "SNF - <CCN>" in "CCN" on create organization page
    And I provide unique "SNF - <EIN>" in "EIN" on create organization page
    And I provide unique "SNF - <NPI>" in "NPI" on create organization page
    And I enter location name <Loc_Name> for Location "1" on "create" organization page
    And I enter address1 <Loc_Address1> for Location "1" on "create" organization page
    And I select location type <Loc_Type> for Location "1" on "create" organization page
    And I enter address2 <Loc_Address2> for Location "1" on "create" organization page
    And I select region <Loc_Region> for Location "1" on "create" organization page
    And I enter city <Loc_City> for Location "1" on "create" organization page
    And I select market <Loc_Market> for region "<Loc_Region>" for Location "1" on "create" organization page
    And I select state <Loc_State> for Location "1" on "create" organization page
    And I enter zip <Loc_Postal_Code> for Location "1" on "create" organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create SNF - <Has_MO>" organization page
    When I click on "Managing" organization tab on organization dashboard
    When I search with "<MO_Name>" on organization in search box
    And I click "<MO_Name>" field in search list on organization page
    And I verify "SNF" organization tab present under "Managing" Organization
    When I click on "SNF" organization tab on under Managing Organization
    And I verify count of "SNF" organizations is increased by 1
    And I search with "<SNF_Name> - <Has_MO>" on organization in search box
    And I verify "<SNF_Name>" details of "SNF" associated on Managing Organization page
    And I verify "CCN" details of "SNF" associated on Managing Organization page
    And I verify "<City>" details of "SNF" associated on Managing Organization page
    And I verify "<StateVerification>" details of "SNF" associated on Managing Organization page
    And I verify "<Postal_Code>" details of "SNF" associated on Managing Organization page

    Examples: 
      | Description                                                         | Has_MO | MO_Name | SNF_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type        | Loc_Address2 | Loc_Region | Loc_City | Loc_Market | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | StateVerification | Message                                |
      | Verification of SNF details and count on SNF tab under Managing org | YES    | MONAME  | SNFNAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Skilled Nursing | Loc_Address2 | Midwest    | Loc_City | Chicago    | California |           10000 | CCN | EIN | NPI | CA                | SNF Organization Successfully Created. |

  Scenario Outline: <Description>
    When I search with "<MO_Name>" on organization in search box
    And I click "<MO_Name>" field in search list on organization page
    And I verify "SNF" organization tab present under "Managing" Organization
    And I click on "SNF" organization under Managing Organization
    And I search with "<SNF_Name>" on organization in search box
    Then I verify the "No matches" message for invalid search in Organization
    And I verify the "Create New SNF Organization" link under No matches

    Examples: 
      | Description | MO_Name | SNF_Name |
      #| Searching invalid details on Managing Organization Profile Page for SNF | MONAME  | NoMatchesSNFNAME |
