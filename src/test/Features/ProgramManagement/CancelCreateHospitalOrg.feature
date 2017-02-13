Feature: Cancel Create Hospital org test

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Given user clicks on Organization link
    And user verifys the header of the organizations page
    And user clicks on hospital org tab
    Then user verifys the hospital org page
    When user clicks on create new
    Then user verifies create hospital org page header "Create Hospital Organization"


  Scenario Outline:

    Given Enter hospital data and click on cancel  "<name>" and "<shortName>" and "<ccn>" and "<ein>" and "<npi>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<locationName>" and "<locationType>" and "<marketId>" and "<regionId>"
    Then user lands on hospital org tab and verifies no of orgs

    Examples:

      | name                | shortName       | ccn        | ein        | npi        | address1    | address2  | city    | state | zip   | locationName   | locationType | marketId | regionId |
      | cancelCreateHospOrg | aptestShortName | 1234567890 | 1234567890 | 1234567890 | 256 5th ave | 7th floor | NewYork | NY    | 10020 | apLocationName | 4            | 7        | 2        |
