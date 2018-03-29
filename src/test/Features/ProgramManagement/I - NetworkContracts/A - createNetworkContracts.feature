Feature: Create Network Contracts functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
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
    And I verify "Programs" as default tab selected on view profile of "Payor" Organization
    And I verify the "Create New Program" button on view profile of "Payor" Organization
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

  Scenario Outline: <Description>
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
    And I select Organization type "<Organization_Type>" for Contract "1" on "create" Contracts page
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create" Contracts page
    And I enter "<Contract_Id>" in "Contract Id" field for "Contract1" on create Contract page
    And I select Bundle "<Bundle_1>" for Contract "1" on "create" Contracts page
    And I enter "<Price>" in "price" field for "Bundle1 Price1" on create Contract page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    And I enter "<Trend_Factor>" in "trendFactor" field for "Bundle1 Price1" on create Contract page
    And I enter "<Upper_Bound>" in "upperBound" field for "Bundle1 Price1" on create Contract page
    And I enter "<Lower_Bound>" in "lowerBound" field for "Bundle1 Price1" on create Contract page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "Create Contracts" on Payor organization page

    Examples: 
      | Description                                                       | Has_MO | Payor_Name | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | Program_Name | Organization_Type | Organization_Name | Contract_Id | Bundle_1                    | Price | Trend_Factor | Upper_Bound | Lower_Bound | Message                       |
      | Create Contracts with all available fields using PGP Organization | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | PGP               | PGPNAME           | CID         | DelRefBundle1iUcLlBcukb0312 |   113 |          121 |         135 |         106 | Contract Successfully Created |
      | Create Contracts with all available fields using PGP Organization | YES    | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | PGP               | PGPNAME           | CID         | BNC1FhdQtwAnpJ1426          |   113 |          121 |         135 |         106 | Contract Successfully Created |

  Scenario Outline: <Description>
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
    And I select Organization type "<Organization_Type>" for Contract "1" on "create" Contracts page
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create" Contracts page
    And I enter "<Contract_Id>" in "Contract Id" field for "Contract1" on create Contract page
    And I select Bundle "<Bundle_1>" for Contract "1" on "create" Contracts page
    And I enter "<Price>" in "price" field for "Bundle1 Price1" on create Contract page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    And I enter "<Trend_Factor>" in "trendFactor" field for "Bundle1 Price1" on create Contract page
    And I enter "<Upper_Bound>" in "upperBound" field for "Bundle1 Price1" on create Contract page
    And I enter "<Lower_Bound>" in "lowerBound" field for "Bundle1 Price1" on create Contract page
    Then I click on "Add Price" button on "create" organization page
    And I enter "<Price1>" in "price" field for "Bundle1 Price2" on create Contract page
    Then I enter date "<PriceStartDate1>" in "PriceStartDate" field for index "8"
    Then I enter date "<PriceEndDate1>" in "Baseline Date" field for index "9"
    Then I enter date "<BaselineStartDate1>" in "BaselineStartDate" field for index "10"
    Then I enter date "<BaselineEndDate1>" in "BaselineEndDate" field for index "11"
    And I enter "<Trend_Factor>" in "trendFactor" field for "Bundle1 Price2" on create Contract page
    And I enter "<Upper_Bound>" in "upperBound" field for "Bundle1 Price2" on create Contract page
    And I enter "<Lower_Bound>" in "lowerBound" field for "Bundle1 Price2" on create Contract page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "Create Contracts" on Payor organization page

    Examples: 
      | Description                                          | Has_MO | Payor_Name | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | PriceStartDate1 | PriceEndDate1 | BaselineStartDate1 | BaselineEndDate1 | Program_Name | Organization_Type | Organization_Name | Contract_Id | Bundle_1             | Price | Price1 | Trend_Factor | Upper_Bound | Lower_Bound | Message                       |
      | Create contract with 1 Bundle having multiple Prices | NO     | PAYORNAME  | 2017/02/05        | 2019/12/28      | 2018/01/04      | 2019/06/21    | 2018/02/02     | 2018/05/30   | 2018/03/01        | 2018/04/04      | 2018/06/02      | 2018/10/30    | 2018/07/01         | 2018/08/04       | PROGRAMNAME  | ACH               | ACHNAME           | CID         | BPBun1rSJpbinZbN2926 |   123 |    101 |          121 |         135 |         106 | Contract Successfully Created |

  Scenario Outline: <Description>
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
    And I select Organization type "<Organization_Type>" for Contract "1" on "create" Contracts page
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create" Contracts page
    And I enter "<Contract_Id>" in "Contract Id" field for "Contract1" on create Contract page
    And I select Bundle "<Bundle_1>" for Contract "1" on "create" Contracts page
    And I enter "<Price1>" in "price" field for "Bundle1 Price1" on create Contract page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    And I enter "<Trend_Factor>" in "trendFactor" field for "Bundle1 Price1" on create Contract page
    And I enter "<Upper_Bound>" in "upperBound" field for "Bundle1 Price1" on create Contract page
    And I enter "<Lower_Bound>" in "lowerBound" field for "Bundl1 Price1" on create Contract page
    Then I click on "Add Bundle" button on "create" organization page
    And I select Bundle "<Bundle_2>" for Contract "1" on "create" Contracts page
    And I enter "<Price2>" in "price" field for "Bundle2 Price1" on create Contract page
    Then I enter date "<BundleStartDate1>" in "BundleStartDate" field for index "8"
    Then I enter date "<BundleEndDate1>" in "BundleEndDate" field for index "9"
    Then I enter date "<PriceStartDate1>" in "PriceStartDate" field for index "10"
    Then I enter date "<PriceEndDate1>" in "Baseline Date" field for index "11"
    Then I enter date "<BaselineStartDate1>" in "BaselineStartDate" field for index "12"
    Then I enter date "<BaselineEndDate1>" in "BaselineEndDate" field for index "13"
    And I enter "<Trend_Factor1>" in "trendFactor" field for "Bundle2 Price1" on create Contract page
    And I enter "<Upper_Bound1>" in "upperBound" field for "Bundle2 Price1" on create Contract page
    And I enter "<Lower_Bound1>" in "lowerBound" field for "Bundle2 Price1" on create Contract page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "Create Contracts" on Payor organization page

    Examples: 
      | Description                           | Has_MO | Payor_Name | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | BundleStartDate1 | BundleEndDate1 | PriceStartDate1 | PriceEndDate1 | BaselineStartDate1 | BaselineEndDate1 | Program_Name | Organization_Type | Organization_Name | Contract_Id | Bundle_1              | Bundle_2           | Price1 | Price2 | Trend_Factor | Upper_Bound | Lower_Bound | Trend_Factor1 | Upper_Bound1 | Lower_Bound1 | Message                       |
      | Create contract with multiple Bundles | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2017/03/01      | 2018/03/30    | 2017/05/01     | 2017/08/30   | 2017/06/09        | 2017/07/12      | 2018/05/01       | 2019/06/30     | 2018/08/03      | 2019/03/26    | 2018/11/09         | 2019/01/12       | PROGRAMNAME  | ACH               | ACHNAME           | CID         | bundle-odMHVgKKzU4124 | BNC2dIojiGTMkl0308 |    113 |     96 |          121 |         135 |         106 |           121 |          135 |          106 | Contract Successfully Created |

  Scenario Outline: Verify available fields on create network contract page
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I verify the "<PGP_Organization_Name>" on "Create" Netwotk Conntract page
    And I verify "*Program" on Create Netwotk Contract page
    And I verify Search box for Hospital Organization on "Create" Netwotk Conntract page
    And I verify "*" field on "Create" Netwotk Conntract page
    And I verify Default Network Contract Start date should be today's date
    And I verify "End Date" field on "Create" Netwotk Conntract page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

    Examples: 
      | Description                                   | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name |
      | Verify fields on create network contract page | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |

  Scenario Outline: Elements on Create Network Contract page after selecting Contract(Program) with Start Date and End Date.
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I verify the "<PGP_Organization_Name>" on "Create" Netwotk Conntract page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I verify "<Contract_ID>" in "Contract Id" after selecting Contract Name
    And I verify "<Start_Date>" in "Start Date" after selecting Contract Name
    And I verify "<End_Date>" in "End Date" after selecting Contract Name
    And I verify Default Network Contract Start Date should be Bundled payment Contract's Start Date
    And I verify Default Network Contract End Date should be Bundled payment Contract's End Date
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

    Examples: 
      | Description                                                                                           | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | Contract_ID | Start_Date | End_Date   |
      | Verify after selecting Contract(Program) with Start Date and End Date on create Network Contract page | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2018-02-02 | 2018-02-02 |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create Network" Contracts page
    And I click on react date picker close icon for "Start Date"
    And I click on react date picker close icon for "End Date"
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMessage>" field validation message on create organization page

    Examples: 
      | Description                                  | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | Contract_ID | Start_Date | End_Date   | Organization_Name | ValidationMessage                                        |
      | Check validation for blank Program Name      | NO     | PGPNAME  |              | PGPNAME               |         123 | 2018-02-02 | 2018-02-02 | ACHNAME           | Program is not present                                   |
      | Check validation for blank Organization name | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2018-02-02 | 2018-02-02 |                   |                                                          |
      | Check validation for blank Start Date name   | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2018-02-02 | 2018-02-02 | ACHNAME           | Start Date is not present                                |
      | Check validation for blank End Date name     | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2018-02-02 | 2018-02-02 | ACHNAME           | End Date is greater than the Contract (Program) End Date |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create Network" Contracts page
    And I click on react date picker close icon for "Start Date"
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    And I click on react date picker close icon for "End Date"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMessage>" field validation message on create organization page

    Examples: 
      | Description                                                                                         | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | Contract_ID | ContractStartDate | ContractEndDate | Organization_Name | ValidationMessage                                                                                                    |
      | Check Validation when Network Contract Start Date is prior to Bundled Payment Contract Start Date   | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2017/01/01        | 2019/12/28      | ACHNAME           | Start Date is prior to the Contract (Program) Start Date                                                             |
      | Check Validation when Network Contract Start Date is greater than Bundled Payment Contract End Date | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2019/12/31        | 2019/12/28      | ACHNAME           | Start Date is greater than the Contract (Program) End Date                                                           |
      | Check Validation when Network Contract End Date is prior to Bundled Payment Contract Start Date     | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2019/12/26        | 2019/12/20      | ACHNAME           | End Date is prior to the Start Date                                                                                  |
      | Check Validation when Network Contract End Date is greater than Bundled Payment Contract End Date   | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2017/01/01        | 2019/12/31      | ACHNAME           | End Date is greater than the Contract (Program) End Date                                                             |
      | Check Validation when Network Contract Start Date is same as Network Contract End Date              | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |         123 | 2019/12/28        | 2019/12/28      | ACHNAME           | Validation errors: Require valid date range. End date (if specified) should be less a future date to the start date. |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    Then I search "<SearchParam> - <Has_MO>" and verify with search list options on "Organization_Name" dropdown box

    Examples: 
      | Description                                                      | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | SearchParam |
      | Search for a Hospital organization by CCN                        | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               | CCN         |
      | Search for a Hospital organization by Hospital Organization Name | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               | ACHNAME     |

  Scenario Outline: Create Network contract with all the available fields
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create Network" Contracts page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create Contracts" on Payor organization page

    Examples: 
      | Description                                           | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | Organization_Name | Message                              |
      | Create Network contract with all the available fields | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               | ACHNAME           | NetworkContract Successfully Created |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create Network" Contracts page
    And I click on react date picker close icon for "Start Date"
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    And I click on react date picker close icon for "End Date"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create Contracts" on Payor organization page

    Examples: 
      | Description                                           | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | Organization_Name | ContractStartDate | ContractEndDate | Message                              |
      | Create Network contract with all the available fields | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               | ACHNAME           | 2017/01/12        | 2019/12/20      | NetworkContract Successfully Created |
      | Create Network contract with all the available fields | YES    | PGPNAME  | PROGRAMNAME  | PGPNAME               | ACHNAME           | 2017/01/12        | 2019/12/20      | NetworkContract Successfully Created |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create Network" Contracts page
    Then I click on cancel search button
    And I verify the selected Hospital organization should not be displayed in the search box

    Examples: 
      | Description                                  | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | Organization_Name |
      | Check the cancel search button functionality | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               | ACHNAME           |

  Scenario Outline: <Description>
    When I click on "PGP" organization tab on organization dashboard
    When I search with "<PGP_Name> - <Has_MO>" on organization in search box
    And I click "<PGP_Name> - <Has_MO>" field in search list on organization page
    And I verify "<PGP_Name> - <Has_MO>" name on the header of view profile
    And I verify "Bundled Payment Contracts" as default tab selected on view profile of "PGP" Organization
    And I verify "Network Contracts" tab present under "PGP" Organization
    And I click on "Network Contracts" tab on view profile of "PGP" Organization
    And I verify the "Create New Network Contract" button on view profile of "PGP" Organization
    Then I click on "Create New Network Contract" button on "create" organization page
    And I verify "Create Network Contract" header text on create organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I select Organization name "<Organization_Name> - <Has_MO>" for Contract "1" on "create Network" Contracts page
    Then I verify the "No results found" message for invalid search in Organization Name dropdown box

    Examples: 
      | Description                                   | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name | Organization_Name |
      | Error message if an organization is not found | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |                   |
