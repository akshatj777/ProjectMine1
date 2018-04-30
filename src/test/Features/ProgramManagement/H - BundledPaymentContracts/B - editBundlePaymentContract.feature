Feature: Edit Bundle Payment Contract functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    When I click on Organization link on Program Management page

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
      | Description                                                            | Has_MO | Payor_Name | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | Program_Name | Organization_Type | Organization_Name | Contract_Id | Bundle_1          | Price | Trend_Factor | Upper_Bound | Lower_Bound | Message                       |
      | Create Contracts with all available fields using Hospital Organization | NO     | PAYORNAME  | 2017/02/09        | 2019/12/19      | 2017/05/01      | 2018/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | PROGRAMNAME  | ACH               | ACHNAME           | CID         | CP1qYUXSUWabZ2738 |    96 |          121 |         135 |         106 | Contract Successfully Created |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I verify "<Program>" dropdown box is not editable
    Then I verify "<Organization_Type>" dropdown box is not editable
    Then I verify "<Organization_Name>" dropdown box is not editable
    Then I verify "Contract_Id" field is not editable
    Then I verify "<Bundle>" dropdown box is not editable
    And I verify "Price of bundle" field is editable
    And I verify "*Start Date" field for "Contract1" on edit Contracts page
    And I verify "End Date" field for "Contract1" on edit Contracts page
    And I verify "*Start Date" field for "Bundle1" on edit Contracts page
    And I verify "End Date" field for "Bundle1" on edit Contracts page
    And I verify "*Start Date" field for "Bundle_price1" on edit Contracts page
    And I verify "End Date" field for "Bundle_price1" on edit Contracts page
    And I verify "*Start Date" field for "Baseline Start" on edit Contracts page
    And I verify "End Date" field for "Baseline End" on edit Contracts page
    And I verify "Trend Factor" field is editable
    And I verify "Upper Bound" field is editable
    And I verify "Lower Bound" field is editable
    And I verify "Add Price" button on edit organization page
    And I verify "Add Bundle" button on edit organization page
    And I verify "+" button on edit organization page
    And I verify "Submit" button on edit organization page
    And I verify "Cancel" button on edit organization page

    Examples: 
      | Description                                                                         | Payor_Name | Bundle_Payment_Contract | Program     | Organization_Type | Organization_Name |
      | Verification of details on Contracts under Payor Organization on edit contract page | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | ACH               | ACHNAME           |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I edit "<Price>" in "price" field for "Bundle1 Price1" on edit Contract page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    And I edit "<Trend_Factor>" in "trendFactor" field for "Bundle1 Price1" on edit Contract page
    And I edit "<Upper_Bound>" in "upperBound" field for "Bundle1 Price1" on edit Contract page
    And I edit "<Lower_Bound>" in "lowerBound" field for "Bundle1 Price1" on edit Contract page
    Then I click on "Submit" button on "edit" organization page
    Then I verify "<Message>" after submitting the "Create Contracts" on Payor organization page

    Examples: 
      | Description              | Payor_Name | Bundle_Payment_Contract | Program     | Organization_Type | Organization_Name | Price | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | Trend_Factor | Upper_Bound | Lower_Bound | Message                        |
      | Edit and save a contract | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | ACH               | ACHNAME           |    96 | 2017/03/15        | 2019/10/10      | 2017/06/01      | 2018/06/30    | 2017/08/01     | 2018/04/30   | 2017/10/01        | 2017/12/30      |              |             |             | Contract Successfully Updated. |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I edit "<Price>" in "price" field for "Bundle1 Price1" on edit Contract page
    Then I click on react date picker icon for "Contract Start Date" for index "0" on edit contract page
    Then I click on react date picker icon for "Bundle Start Date" for index "1" on edit contract page
    Then I click on react date picker icon for "Bundle_Price Start Date" for index "2" on edit contract page
    Then I click on "Submit" button on "edit" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                  | Payor_Name | Bundle_Payment_Contract | Program     | Price | ValidationMsg |
      | Edit a Contract With Mandatory Field Missing | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME |       | Required      |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I click on react date picker icon for "Contract Start Date" for index "0" on edit contract page
    Then I click on "Submit" button on "edit" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                      | Payor_Name | Bundle_Payment_Contract | Program     | ValidationMsg |
      | Validation message if Start Date is left blank- Contract Section | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | Required      |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I click on react date picker icon for "Bundle Start Date" for index "1" on edit contract page
    Then I click on "Submit" button on "edit" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                    | Payor_Name | Bundle_Payment_Contract | Program     | ValidationMsg |
      | Validation message if Start Date is left blank- Bundle Section | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | Required      |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I click on react date picker icon for "Bundle_Price Start Date" for index "2" on edit contract page
    Then I click on "Submit" button on "edit" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                          | Payor_Name | Bundle_Payment_Contract | Program     | ValidationMsg |
      | Validation message if Start Date is left blank- Bundle Price Section | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | Required      |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    Then I click on "Submit" button on "edit" organization page
    And I verify "<ValidationMsg>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                                                              | Payor_Name | Bundle_Payment_Contract | Program     | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | ValidationMsg                                                   |
      | Validation message for editing Contract with Contract End Date is before the Contract Start Date         | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2017/02/07      | 2017/05/01      | 2019/06/30    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | The Contract End Date is before the start date                  |
      | Validation message for editing Contract with Bundle End Date is before the bundle Start Date             | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2019/12/19      | 2017/05/01      | 2017/04/23    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | The bundle end date is before the bundle start date             |
      | Validation message for editing Contract with Bundle Price End Date is before the Bundle Price Start Date | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2019/12/19      | 2017/05/01      | 2019/06/30    | 2019/03/03     | 2019/03/01   | 2019/03/09        | 2019/05/12      | The bundle price end date is before the bundle price start date |
      | Validation messages for editing Contract with Bundle End Date is after Contract End Date                 | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2019/12/19      | 2017/05/01      | 2019/12/21    | 2019/03/03     | 2019/05/26   | 2019/03/09        | 2019/05/12      | The bundle end date is after the contract end date              |
      | Validation messages for editing Contract with Bundle Price End Date is after Bundle End Date             | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2019/12/19      | 2017/05/01      | 2019/06/30    | 2018/03/03     | 2019/07/30   | 2019/03/09        | 2019/05/12      | The bundle price end date is after the bundle end date          |
      | Validation messages for editing Contract with Bundle Start Date is before the Contract Start Date        | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2019/12/19      | 2017/02/07      | 2019/06/30    | 2018/03/03     | 2019/07/30   | 2019/03/09        | 2019/05/12      | The bundle price end date is after the bundle end date          |
      | Validation messages for editing Contract with Bundle Price Start Date is before the Bundle Start Date    | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2017/02/07      | 2017/05/01      | 2019/06/30    | 2017/04/01     | 2019/07/30   | 2019/03/09        | 2019/05/12      | The bundle price end date is after the bundle end date          |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field for index "0"
    Then I enter date "<ContractEndDate>" in "ContractEndDate" field for index "1"
    Then I enter date "<BundleStartDate>" in "BundleStartDate" field for index "2"
    Then I enter date "<BundleEndDate>" in "BundleEndDate" field for index "3"
    Then I enter date "<PriceStartDate>" in "PriceStartDate" field for index "4"
    Then I enter date "<PriceEndDate>" in "Baseline Date" field for index "5"
    Then I enter date "<BaselineStartDate>" in "BaselineStartDate" field for index "6"
    Then I enter date "<BaselineEndDate>" in "BaselineEndDate" field for index "7"
    Then I click on "Submit" button on "edit" organization page
    And I verify "<ValidationMsg1>" mandatory field validation message on edit organization page
    And I verify "<ValidationMsg2>" mandatory field validation message on edit organization page

    Examples: 
      | Description                                                                                                                  | Payor_Name | Bundle_Payment_Contract | Program     | ContractStartDate | ContractEndDate | BundleStartDate | BundleEndDate | PriceStartDate | PriceEndDate | BaselineStartDate | BaselineEndDate | ValidationMsg1                                         | ValidationMsg2 |
      | Validation messages for editing Contract with Contract Start Date is after the Bundle Start Date and Bundle Price Start Date | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2018/03/05        | 2019/12/19      | 2017/05/01      | 2019/06/30    | 2018/03/03     | 2019/05/30   | 2019/03/09        | 2019/05/12      | The bundle price end date is after the bundle end date |                |
      | Validation messages for editing Contract with Contract End Date is before the Bundle End Date and Bundle Price End Date      | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2019/04/19      | 2017/05/01      | 2019/06/30    | 2018/03/03     | 2019/05/30   | 2019/03/09        | 2019/05/12      | The bundle price end date is after the bundle end date |                |
      | Validation messages for editing Contract with Baseline End Date is before the Baseline Start Date                            | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | 2017/02/09        | 2019/12/19      | 2017/05/01      | 2019/06/30    | 2018/03/03     | 2019/07/30   | 2019/03/09        | 2019/02/12      | The bundle price end date is after the bundle end date |                |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I click on "Add Bundle" button on "edit" organization page
    Then I search "<SearchParam>" and verify with search list options on "Bundle_1" dropdown box

    Examples: 
      | Description                                              | Payor_Name | Bundle_Payment_Contract | Program     | SearchParam       |
      | Search for a Bundle by Bundle Name on Edit contract page | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | mB1xAglksoqZt4324 |
      | Search for a Bundle by Bundle code on Edit contract page | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME |               226 |

  Scenario Outline: <Description>
    When I click on "Payor" organization tab on organization dashboard
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under "Payor" Organization
    And I click on "Contracts" tab on view profile of "Payor" Organization
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "Edit Contract" header text on edit organization page
    Then I click on "Add Bundle" button on "edit" organization page
    And I click and search with invalid name on "<Bundle2>" dropdown box
    Then I verify the "No results found" message for invalid search in Organization Name dropdown box

    Examples: 
      | Description                                                      | Payor_Name | Bundle_Payment_Contract | Program     | Bundle2             |
      | Error message for an invalid Bundle search on Edit contract page | PAYORNAME  | PROGRAMNAME             | PROGRAMNAME | InvalidSearchBundle |
