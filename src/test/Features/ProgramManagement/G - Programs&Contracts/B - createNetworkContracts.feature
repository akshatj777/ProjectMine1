Feature: Create Network Contracts functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    When I click on Organization link on Program Management page
    When I click on "Payor" organization tab on organization dashboard

  Scenario Outline: <Description>
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

  Scenario Outline: Create Contracts with all available fields
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
    And I select Bundle1 "<Bundle_1>" for Contract "1" on "create" Contracts page
    And I enter price "<Price>" for Contract "1" on "create" Contracts page
    Then I enter date "<ContractStartDate>" in "ContractStartDate" field
    #Then I select the date from date picker with logic "minus" days from current date
    #| Start Date | End Date |
    #|         10 |        1 |
    #|          9 |        2 |
    #|          5 |        3 |
    #|          7 |        4 |
    #And I enter "<Trend_Factor>" in "Trend Factor" for "Bundle Price1" for Contract "1" on "create" Contracts page
    #And I enter "<Upper_Bound>" in "Upper Bound" for "Bundle Price1" for Contract "1" on "create" Contracts page
    #And I enter "<Lower_Bound>" in "Lower Bound" for "Bundle Price1" for Contract "1" on "create" Contracts page
    Then I click on "Submit" button on "create" organization page

    #Then I verify "<Message>" after submitting the "create Contracts" on Payor organization page
    Examples: 
      | Description                                | Payor_Name | ContractStartDate | Program_Name | Organization_Type | Organization_Name                           | Bundle_1          | Price | Trend_Factor | Upper_Bound | Lower_Bound | Bundle_2                  | Message                       |
      | Create Contracts with all available fields | PAYORNAME  | 2018/02/01        | PROGRAMNAME  | PGP               | createHospOrgForContractToDelkJoiUzJEIp4504 | mB1JIadXaQOHI4507 |   123 |          121 |         135 |         106 | GGCtBundle2LvERLGiEDx1057 | Contract Successfully Created |

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
    And I verify Default Network Contract Start date should be today's date
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

    Examples: 
      | Description                                                                                           | Has_MO | PGP_Name | Program_Name | PGP_Organization_Name |
      | Verify after selecting Contract(Program) with Start Date and End Date on create Network Contract page | NO     | PGPNAME  | PROGRAMNAME  | PGPNAME               |
