Feature: Cancel Create payor org test

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Given user clicks on Organization link
    Then user verifys the header of the organizations page
    When user clicks on payor org tab
    Then user verifys the payor org page
    When user clicks on create new
    Then user verifies create payor org page header "Create Payor Organization"


  Scenario Outline:

    Given Enter payor data and click on cancel  "<name>"  and "<contactPerson>" and "<contactEmail>" and "<contactPhone>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<ein>"
    Then user lands on payor Org page

    Examples:

      | name                 | contactPerson             | contactEmail       | contactPhone | address1 | address2  | city    | state | zip   | ein        |
      | cancelCreatePayorOrg | valid management org data | aptest20@gmail.com | 212-567-8970 | ADDR1    | 7th floor | Arizona | NY    | 10020 | 1234567890 |

