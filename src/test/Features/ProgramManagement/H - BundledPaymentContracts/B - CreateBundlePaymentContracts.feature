Feature: Create Bundled Payment Contracts functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    When I click on Organization link on Program Management page

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
    And I verify "Contract Id" field on create Contracts page under Payor Organization
    And I verify "*Start Date" field for "Contract1" on create Contracts page
    And I verify "End Date" field for "Contract1" on create Contracts page
    And I verify "*Start Date" field for "Bundle1" on create Contracts page
    And I verify "End Date" field for "Bundle1" on create Contracts page
    And I verify "*Start Date" field for "Bundle_price1" on create Contracts page
    And I verify "End Date" field for "Bundle_price1" on create Contracts page
    And I verify "*Price" field on create Contracts page under Payor Organization
    And I verify "Trend Factor" field on create Contracts page under Payor Organization
    And I verify "Upper Bound" field on create Contracts page under Payor Organization
    And I verify "Lower Bound" field on create Contracts page under Payor Organization
    And I verify "Add Price" button on create organization page
    And I verify "Add Bundle" button on create organization page
    And I verify "+" button on create organization page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

    Examples: 
      | Description                                                   | Payor_Name | Program_Name |
      | Verification of details on Contracts under Payor Organization | PAYORNAME  | PROGRAMNAME  |

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
    And I select Bundle "<Bundle_1>" for Contract "1" on "create" Contracts page
    And I enter price "<Price>" for Contract "1" on "create" Contracts page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    And I enter "<Trend_Factor>" in "Trend Factor" field for "Bundle Price1" on create Contract page
    And I enter "<Upper_Bound>" in "Upper Bound" field for "Bundle Price1" on create Contract page
    And I enter "<Lower_Bound>" in "Lower Bound" field for "Bundle Price1" on create Contract page
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                                                                                                     | Has_MO | Payor_Name | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | Program_Name | Organization_Type | Organization_Name | Bundle_1          | Price | Trend_Factor | Upper_Bound | Lower_Bound | ValidationMsg                                               |
      | Check validation message if Program Name is left blank                                                          | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      |              | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |   123 |          121 |         135 |         106 | Please select a Program                                     |
      | Check validation message if Provider Name is left blank                                                         | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               |                   | mB1EyRIrOIXAH0314 |   123 |          121 |         135 |         106 | Please select an organization                               |
      | Check validation message if Start Date is left blank for Contract Section                                       | NO     | PAYORNAME  |                   | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |   123 |          121 |         135 |         106 | Required                                                    |
      | Check validation message if Bundle Name is left blank                                                           | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           |                   |   123 |          121 |         135 |         106 | Required                                                    |
      | Check validation message if Start Date is left blank for Bundle Section                                         | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      |                 | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |   123 |          121 |         135 |         106 | Required                                                    |
      | Check validation message if Price field is left blank                                                           | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |       |          121 |         135 |         106 | Required                                                    |
      | Check validation message if Start Date is left blank for Bundle price Section                                   | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    |                | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |   123 |          121 |         135 |         106 | Required                                                    |
      | Check validation message for Contract creation with Contract End Date is before the Contract Start Date         | NO     | PAYORNAME  | 2017/01/05        | 2017/01/03      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |   123 |          121 |         135 |         106 | The Contract End Date is before the start date              |
      | Check validation message for contract creation with Bundle End Date is before the bundle Start Date             | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/02/24      | 2019/01/24    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |   123 |          121 |         135 |         106 | The bundle end date is before the bundle start date         |
      | Check validation message for Contract creation with Bundle Price End Date is before the Bundle Price Start Date | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/05/03     | 2019/04/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |       |          121 |         135 |         106 | The bundle end date is before the bundle start date         |
      | Check validation message for contract creation with Bundle End Date is after Contract End Date                  | NO     | PAYORNAME  | 2017/01/01        | 2019/10/25      | 2019/01/01      | 2019/11/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |       |          121 |         135 |         106 | The bundle end date is after the contract end date          |
      | Check validation messages for contract creation with Bundle Price End Date is after Bundle End Date             | NO     | PAYORNAME  | 2017/01/01        | 2019/12/25      | 2019/01/01      | 2019/09/30    | 2019/03/03     | 2019/10/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |       |          121 |         135 |         106 | The bundle price end date is after the bundle end date      |
      | Check validation messages for contract creation with Bundle Start Date is before the Contract Start Date        | NO     | PAYORNAME  | 2017/03/01        | 2019/12/25      | 2017/02/21      | 2019/09/30    | 2019/03/03     | 2019/08/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |       |          121 |         135 |         106 | The bundle start date is before the contract start date     |
      | Check validation messages for contract creation with Bundle Price Start Date is before the Bundle Start Date    | NO     | PAYORNAME  | 2017/01/01        | 2019/12/25      | 2018/04/21      | 2019/09/30    | 2018/03/03     | 2019/08/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | mB1EyRIrOIXAH0314 |       |          121 |         135 |         106 | The bundle price start date is before the bundle start date |

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
    And I enter "<Price>" in "price" field for "Bundle Price1" on create Contract page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    And I enter "<Trend_Factor>" in "Trend Factor" field for "Bundle Price1" on create Contract page
    And I enter "<Upper_Bound>" in "Upper Bound" field for "Bundle Price1" on create Contract page
    And I enter "<Lower_Bound>" in "Lower Bound" field for "Bundle Price1" on create Contract page
    Then I click on "Submit" button on "create" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on create organization page

    Examples: 
      | Description                                                            | Has_MO | Payor_Name | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | Program_Name | Organization_Type | Organization_Name | Contract_Id | Bundle_1 | Price | Trend_Factor | Upper_Bound | Lower_Bound | ValidationMsg                 |
      | Create Contracts with all available fields using Hospital Organization | NO     | PAYORNAME  | 2017/01/01        | 2019/12/31      | 2019/01/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           |         111 | Bundle   |   123 |          121 |         135 |         106 | Contract Successfully Created |
