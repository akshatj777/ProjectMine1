Feature:  Create PGP org with no managing org ,with managing org and cancel create PGP org

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Then Navigate to program management home page
    Given user clicks on Organization link
    Then user verifys the header of the organizations page


  Scenario Outline: Create PGP org with no managing org

    When user clicks on pgp org tab
    Then user verifys the pgp org page
    When user clicks on create new
    Then user verifies create pgp org page header "Create PGP Organization"
    Given Enter PGP org data and click on submit "<orgName>" and "<shortName>" and "<region>" and "<market>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<ein>" and "<npi>" and "<mOrgIdx>"
    And wait for the page to load and get the message
    Then org is created successfuly message verification "<expectedMsg>"

    Examples:

      | orgName        | shortName              | mOrgIdx | region | market | address1 | address2  | city    | state | zip   | ein        | npi | expectedMsg                                     |
      | createPgpNMorg | valid pgo org org data | 1       | 2      | 6      | ADDR1    | 7th floor | Arizona | NY    | 10020 | 1234567890 |     | Success! PGP Organization Successfully Created. |

  Scenario Outline: Cancel Create PGP org with no managing org

    When user clicks on pgp org tab
    Then user verifys the pgp org page
    When user clicks on create new
    Then user verifies create pgp org page header "Create PGP Organization"
    Given Enter PGP org data and click on cancel "<orgName>" and "<shortName>" and "<region>" and "<market>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<ein>" and "<npi>" and "<mOrgIdx>"
    Then user landing page after create cancel "<url>"

    Examples:

      | orgName    | shortName              | mOrgIdx | region | market | address1 | address2  | city    | state | zip   | ein        | npi | url                       |
      | cancelCPgp | valid pgo org org data | 1       | 2      | 6      | ADDR1    | 7th floor | Arizona | NY    | 10020 | 1234567890 |     | organizations-browser/pgp |
