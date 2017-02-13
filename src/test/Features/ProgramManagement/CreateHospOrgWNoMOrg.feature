Feature: Create Hospitalorg with no managing org test

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Given user clicks on Organization link
    Then user verifys the header of the organizations page
    When user clicks on hospital org tab
    Then user verifys the hospital org page
    When user clicks on create new
    Then user verifies create hospital org page header "Create Hospital Organization"


  Scenario Outline:

    Given select has no Morg enter hospital data and click on submit  "<name>"  and "<shortName>" and "<region>" and "<market>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<ein>" and "<npi>"
    And wait for the page to load and get the message
    Then org is created successfuly message verification "<expectedMsg>"

    Examples:

      | name       | shortName              | region | market | address1 | address2  | city    | state | zip   | ein        | npi | expectedMsg                                          |
      | pgpOrgOnet | valid pgo org org data | 2      | 6      | ADDR1    | 7th floor | Arizona | NY    | 10020 | 1234567890 |     | Success! Hospital Organization Successfully Created. |

