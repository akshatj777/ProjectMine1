Feature: Create PGP org with managing org

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Then Navigate to program management home page
    Given user clicks on Organization link
    Then user verifys the header of the organizations page

  Scenario Outline:

    When user clicks on managing org tab
    Then user verifys the managing org page
    When user clicks on create new
    Then user verifies create management org page header "Create Management Organization"
    Given Enter Morg data and click on submit  "<mOrgName>"  and "<contactPerson>" and "<contactEmail>" and "<contactPhone>" and "<addr1>" and "<addr2>" and "<city1>" and "<state1>" and "<zip1>"
    And wait for the page to load and get the message
    Then org is created successfuly message verification "Success! Management Organization Successfully Created."
    Then close the message
    When user clicks on pgp org tab
    Then user verifys the pgp org page
    When user clicks on create new
    Then user verifies create pgp org page header "Create PGP Organization"
    Given Enter PGP org data and click on submit "<orgName>" and "<shortName>" and "<region>" and "<market>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<ein>" and "<npi>" and "<mOrgIdx>"
    And wait for the page to load and get the message
    Then org is created successfuly message verification "<expectedMsg>"

    Examples: pgp org data
      | orgName        | shortName          | mOrgIdx | region | market | address1 | address2  | city    | state | zip   | ein        | npi | mOrgName     | contactPerson             | contactEmail       | contactPhone | addr1 | addr2     | city1   | state1 | zip1  | expectedMsg                                     |
      | createPgpWMorg | valid pgp org data | 0       | 2      | 6      | ADDR1    | 7th floor | Arizona | NY    | 10020 | 1234567890 |     | manOrgForPgp | valid management org data | aptest20@gmail.com | 212-567-8970 | ADDR1 | 7th floor | Arizona | NY     | 10020 | Success! PGP Organization Successfully Created. |

