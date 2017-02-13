Feature: Create management org test

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
     And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    #And users enters email and passwd jcamins-esakov@remedypartners.com and !1QqAaZz
    Then User has to wait for Autho overlay to disappear
    Given user clicks on Organization link
    Then user verifys the header of the organizations page
    When user clicks on managing org tab
    Then user verifys the managing org page
    When user clicks on create new
    Then user verifies create management org page header "Create Management Organization"


  Scenario Outline:

    Given Enter Morg data and click on submit  "<name>"  and "<contactPerson>" and "<contactEmail>" and "<contactPhone>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>"
    And wait for the page to load and get the message
    Then org is created successfuly message verification "<expectedMsg>"

    Examples:

      | name        | contactPerson             | contactEmail       | contactPhone | address1 | address2  | city    | state | zip   | expectedMsg                                            |
      | manOrgObe | valid management org data | aptest20@gmail.com | 212-567-8970 | ADDR1    | 7th floor | Arizona | NY    | 10020 | Success! Management Organization Successfully Created. |

