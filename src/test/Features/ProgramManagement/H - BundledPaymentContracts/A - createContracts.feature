Feature: Create Bundled Payment Contracts under Payor Organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    When I click on Organization link on Program Management page

  Scenario Outline: <Description>
    When I click on "Hospital" organization tab on organization dashboard
    Then I click on "+" button on "Hospital" organization page
    And I verify "Create Hospital Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <Hosp_Name> in "Hospital Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "ACH - <CCN>" in "CCN" on create organization page
    And I provide unique "ACH - <EIN>" in "EIN" on create organization page
    And I provide unique "ACH - <NPI>" in "NPI" on create organization page
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
    Then I verify "<Message>" after submitting the "create ACH - <Has_MO>" organization page

    Examples: 
      | Description                                                             | Has_MO | Managing_Org | Hosp_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Loc_Name | Loc_Address1 | Loc_Type  | Loc_Region | Loc_Market | Loc_Address2 | Loc_City | Loc_State  | Loc_Postal_Code | CCN | EIN | NPI | Message                                     |
      | Create Hospital Organization with all the available fields - Without MO | NO     |              | ACHNAME   | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | Hospital Organization Successfully Created. |
      | Create Hospital Organization with all the available fields - With MO    | YES    | MONAME       | ACHNAME   | Address1 | Short_Name | Address2 | City | California |       10000 | Loc_Name | Loc_Address1 | Inpatient | Midwest    | Chicago    | Loc_Address2 | Loc_City | California |           10000 | CCN | EIN | NPI | Hospital Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    Then I click on "+" button on "PGP" organization page
    And I verify "Create PGP Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <PGP_Name> in "PGP Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <City> in "City" on create organization page
    And I select region "<Region>" in "create PGP" organization page
    And I select market "<Market>" in "create PGP" organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "PGP - <EIN>" in "EIN" on create organization page
    And I provide unique "PGP - <NPI>" in "NPI" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create PGP - <Has_MO>" organization page

    Examples: 
      | Description                                                        | Has_MO | Managing_Org | PGP_Name | Address1 | Short_Name | Address2 | City | Region  | Market  | State      | Postal_Code | EIN | NPI | Message                                |
      | Create PGP Organization with all the available fields - Without MO | NO     |              | PGPNAME  | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | EIN | NPI | PGP Organization Successfully Created. |
      | Create PGP Organization with all the available fields - With MO    | YES    | MONAME       | PGPNAME  | Address1 | Short_Name | Address2 | City | Midwest | Chicago | California |       10000 | EIN | NPI | PGP Organization Successfully Created. |

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
    When I click on "HHA" organization tab on organization dashboard
    Then I click on "+" button on "HHA" organization page
    And I verify "Create HHA Organization" header text on create organization page
    And I select "<Has_MO>" radio button for managing organization
    Then I select "<Managing_Org>" managing organization name in "<Has_MO>" Has a Management Organization drop down
    Then I enter <HHA_Name> in "HHA Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Short_Name> in "Short Name" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I select region "<Region>" in "create HHA" organization page
    And I select market "<Market>" in "create HHA" organization page
    And I enter <City> in "City" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "HHA - <CCN>" in "CCN" on create organization page
    And I provide unique "HHA - <EIN>" in "EIN" on create organization page
    And I provide unique "HHA - <NPI>" in "NPI" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create HHA - <Has_MO>" organization page

    Examples: 
      | Description                                                        | Has_MO | Managing_Org | HHA_Name | Address1 | Short_Name | Address2 | City | State      | Postal_Code | Region  | Market  | CCN | EIN | NPI | Message                                |
      | Create HHA Organization with all the available fields - Without MO | NO     |              | HHANAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Midwest | Chicago | CCN | EIN | NPI | HHA Organization Successfully Created. |
      | Create HHA Organization with all the available fields - With MO    | YES    | MONAME       | HHANAME  | Address1 | Short_Name | Address2 | City | California |       10000 | Midwest | Chicago | CCN | EIN | NPI | HHA Organization Successfully Created. |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    Then I click on "+" button on "Payor" organization page
    And I verify "Create Payor Organization" header text on create organization page
    Then I enter <Payor_Name> in "Payor Organization Name" on create organization page
    And I enter <Address1> in "Address 1" on create organization page
    And I enter <Contact_Person> in "Contact Person" on create organization page
    And I enter <Address2> in "Address 2" on create organization page
    And I enter <Contact_Email> in "Contact Email" on create organization page
    And I enter <City> in "City" on create organization page
    And I enter <Contact_Phone> in "Contact Phone" on create organization page
    And I select <State> in State on create organization page
    And I enter <Postal_Code> in "Postal Code" on create organization page
    And I provide unique "Payor - <EIN>" in "EIN" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create Payor" organization page

    Examples: 
      | Description                                         | Payor_Name | Contact_Person    | Contact_Email      | Contact_Phone | Address1 | Address2 | City | State    | Postal_Code | EIN | Message                                  |
      | Create Payor Organization with all available fields | PAYORNAME  | ContactPersonTest | Sample@yopmail.com |    5555599999 | Address1 | Address2 | City | New York |       10001 | EIN | Payor Organization Successfully Created. |

  Scenario Outline: Create Programs under Payor Organization
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Programs" as default tab selected on view profile of Payor Organization
    And I verify the "Create New Program" button on view profile of "payor" Organization
    Then I click on "Create New Program" button on "create" organization page
    And I verify "Create Program" header text on create organization page
    Then I enter <Program_Name> in "Program Name" on create organization page
    And I click on checkbox for "Attribute to the physician who admitted the patient" Attribution rule
    And I click on checkbox for "Attribute to the triggering provider id on the triggering claim" Attribution rule
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create Programs" on Payor organization page

    Examples: 
      | Description                              | Payor_Name | Program_Name | Message                      |
      | Create Programs under Payor Organization | PAYORNAME  | PROGRAMNAME  | Program Successfully Created |

  Scenario Outline: Verification of details on Contracts under Payor Organization
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "payor" Organization
    And I verify the "Create New Contract" button on view profile of "payor" Organization
    And I verify "Program " header label under "Payor" view profile page
    And I verify "Contract ID " header label under "Payor" view profile page
    And I verify "Organization Name " header label under "Payor" view profile page
    And I verify "Type " header label under "Payor" view profile page
    And I verify "Address " header label under "Payor" view profile page
    Then I click on "Create New Contract" button on "create" organization page
    And I verify "Create Contract" header text on create Contracts page
    And I verify "*Program" field on create Contracts page
    And I verify "Contract 1 " on "Create Contract" page under Payor Organization
    And I verify "Contract Id" field on create Contracts page
    And I verify "*Start Date" field for Contract "1" on Create Contracts page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

    Examples: 
      | Description                                                   | Payor_Name | Program_Name |
      | Verification of details on Contracts under Payor Organization | PAYORNAME  | PROGRAMNAME  |

  Scenario Outline: Create Contracts with all available fields
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    And I verify the "Create New Contract" button on view profile of "Payor" Organization
    Then I click on "Create New Contract" button on "create" organization page
    And I verify "Create Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I select Organiztion type "<Organization_Type>" for Contract "1" on "create" Contracts page
    And I select Organiztion name "<Organization_Name>" for Contract "1" on "create" Contracts page
    And I select Bundle "<Bundle_1>" for Contract "1" on "create" Contracts page
    And I enter price "<Price>" for Contract "1" on "create" Contracts page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "PriceEndDate" field for index "5"
    And I enter "<Trend_Factor>" in "Trend Factor" for "Bundle Price1" for Contract "1"
    And I enter "<Upper_Bound>" in "Upper Bound" for "Bundle Price1" for Contract "1"
    And I enter "<Lower_Bound>" in "Lower Bound" for "Bundle Price1" for Contract "1"
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create Contracts" on Payor organization page

    Examples: 
      | Description                                                            | Payor_Name | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | Program_Name | Organization_Type | Organization_Name | Bundle_1                          | Price | Trend_Factor | Upper_Bound | Lower_Bound | Message                       |
      | Create Contracts with all available fields using Hospital Organization | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | PROGRAMNAME  | ACH               | ACHNAME           | CBundle2ttTyIYdppE0100            |   123 |          121 |         135 |         106 | Contract Successfully Created |
      | Create Contracts with all available fields using PGP Organization      | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | PROGRAMNAME  | PGP               | PGPNAME           | BundleHosp PMBCHWMO BPTest_1_Feb7 |   123 |          121 |         135 |         106 | Contract Successfully Created |
      | Create Contracts with all available fields using SNF Organization      | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | PROGRAMNAME  | SNF               | SNFNAME           | CBundle2FYlGIztSgH0152            |   123 |          121 |         135 |         106 | Contract Successfully Created |
      | Create Contracts with all available fields using HHA Organization      | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | PROGRAMNAME  | HHA               | HHANAME           | CBundle1ykOiPLQGfp3039            |   123 |          121 |         135 |         106 | Contract Successfully Created |
