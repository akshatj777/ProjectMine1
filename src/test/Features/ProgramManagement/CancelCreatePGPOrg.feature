Feature: Cancel Create PGP org test

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Given user clicks on Organization link
    Then user verifys the header of the organizations page
    When user clicks on pgp org tab
    Then user verifys the pgp org page
    When user clicks on create new
    Then user verifies create pgp org page header "Create PGP Organization"


  Scenario Outline:

    Given Enter pgp data and click on cancel  "<name>"  and "<shortName>" and "<region>" and "<market>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<ein>" and "<npi>"
    Then user lands on pgp Org page

    Examples:

      | name               | shortName              | region | market | address1 | address2  | city    | state | zip   | ein        | npi |
      | cancelCreatePGPOrg | valid pgo org org data | 1      | 3      | ADDR1    | 7th floor | Arizona | NY    | 10020 | 1234567890 |     |

