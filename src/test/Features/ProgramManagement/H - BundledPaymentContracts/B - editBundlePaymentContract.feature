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
    Then I search with "<Bundle_Payment_Contract>" on view profile of "Payor" Organization search box
    Then I verify "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    Then I click "<Bundle_Payment_Contract>" field in search list on view profile of "Payor" Organization search box
    And I verify "*Start Date" field for "Contract1" on create Contracts page
    And I verify "End Date" field for "Contract1" on create Contracts page
    And I verify "*Start Date" field for "Bundle1" on create Contracts page
    And I verify "End Date" field for "Bundle1" on create Contracts page
    And I verify "*Start Date" field for "Bundle_price1" on create Contracts page
    And I verify "End Date" field for "Bundle_price1" on create Contracts page

    Examples: 
      | Description                                                                         | Payor_Name | Bundle_Payment_Contract |
      | Verification of details on Contracts under Payor Organization on edit contract page | PAYORNAME  | PROGRAMNAME             |
