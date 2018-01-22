Feature: Create Programs organization under Payor Organization functionality tests

  Background: 
    Given I am on the login page
    When I log in as super user
    Then I should see Tile text Program Management
    And I click on the "Program Management" tile
    And I switch to new window
    Then I verify "Welcome to Program Management" header on the page
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

  Scenario Outline: Verification of details on Programs under Payor Organization
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Programs" as default tab selected on view profile of Payor Organization
    And I verify "ID" header label under "Payor" view profile page
    And I verify "Program Name" header label under "Payor" view profile page
    And I verify the "Create New Program" button on view profile of payor Organization
    Then I click on "Create New Program" button on "create" organization page
    And I verify "Create Program" header text on create organization page
    And I verify "*Program Name" field on create organization page
    And I verify "Submit" button on create organization page
    And I verify "Cancel" button on create organization page

    Examples: 
      | Description                                                  | Payor_Name |
      | Verification of details on Programs under Payor Organization | PAYORNAME  |

  Scenario Outline: Create Programs under Payor Organization
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Programs" as default tab selected on view profile of Payor Organization
    And I verify the "Create New Program" button on view profile of payor Organization
    Then I click on "Create New Program" button on "create" organization page
    And I verify "Create Program" header text on create organization page
    Then I enter <Program_Name> in "Program Name" on create organization page
    Then I click on "Submit" button on "create" organization page
    Then I verify "<Message>" after submitting the "create Programs" on Payor organization page

    Examples: 
      | Description                              | Payor_Name | Program_Name | Message                      |
      | Create Programs under Payor Organization | PAYORNAME  | PROGRAMNAME  | Program Successfully Created |

  Scenario Outline: Edit Programs under Payor Organization
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Programs" as default tab selected on view profile of Payor Organization
    Then I search with "<Program_Name>" on organization in search box
    And I verify "<Program_Name>" field in search list on organization page
    And I click "<Program_Name>" field in search list on organization page
    And I verify "Edit Program" header text on edit organization page
    And I edit "Program Name" field to "<Edited_Program_Name>" for organization
    Then I click on "Submit" button on "edit" organization page
    Then I verify "<Message>" after submitting the "edit Programs" on Payor organization page

    Examples: 
      | Description                            | Payor_Name | Program_Name | Edited_Program_Name | Message                      |
      | Edit Programs under Payor Organization | PAYORNAME  | PROGRAMNAME  | PROGRAMNAME         | Program Successfully Updated |

  Scenario Outline: Create Contracts under Payor Organization
    When I search with "<Payor_Name>" on organization in search box
    And I click "<Payor_Name>" field in search list on organization page
    And I verify "<Payor_Name>" name on the header of view profile
    And I verify "Contracts" tab present under Payor Organization
    And I click on "Contracts" tab on view profile of payor Organization
    And I verify the "Create New Contract" button on view profile of payor Organization
    Then I click on "Create New Contract" button on "create" organization page
    And I select "<Program_Name>" Program name in create Contract page under Payor Organization
    And I verify "Contract 1 " on "Create Contract" page under Payor Organization
    And I select Organiztion type "<Organization_Type>" for Contract "1" on "create" Contracts page
    And I select Organiztion name "<Organization_Name>" for Contract "1" on "create" Contracts page
    And I verify "Bundle 1" on "Create Contract" page under Payor Organization
    And I select Bundle1 "<Bundle_1>" for Contract "1" on "create" Contracts page
    And I verify "Bundle Price 1" on "Create Contract" page under Payor Organization
    And I enter price "<Price>" for Contract "1" on "create" Contracts page
    Then I select the date from date picker with logic "minus" days from current date
      | Start Date | End Date |
      |         10 |        1 |
      |          9 |        2 |
      |          8 |        3 |
      |          7 |        4 |
    And I enter "<Trend_Factor>" for "Bundle Price1" for Contract "1" on "create" Contracts page
    And I enter "<Upper_Bound>" for "Bundle Price1" for Contract "1" on "create" Contracts page
    And I enter "<Lower_Bound>" for "Bundle Price1" for Contract "1" on "create" Contracts page
    Then I click on "Add Bundle" button on "create Contracts" organization page
    And I select Bundle1 "<Bundle_2>" for Contract "1" on "create" Contracts page
    And I enter price "<Price>" for Contract "1" on "create" Contracts page
    Then I select the date from date picker with logic "minus" days from current date
      | Start Date | End Date |
      |          6 |        5 |
      |          5 |        4 |
      |          4 |        6 |
    Then I click on "Submit" button on "create" organization page

    Examples: 
      | Description                               | Payor_Name | Program_Name | Organization_Type | Organization_Name | Bundle_1                 | Price | Trend_Factor | Upper_Bound | Lower_Bound | Bundle_1                  |
      | Create Contracts under Payor Organization | PAYORNAME  | PROGRAMNAME  | ACH               | ACHNAMEEBBjZCzy   | GCtBundle1qujtNJtLAc1057 |   123 |          121 |         135 |         106 | GGCtBundle2LvERLGiEDx1057 |
