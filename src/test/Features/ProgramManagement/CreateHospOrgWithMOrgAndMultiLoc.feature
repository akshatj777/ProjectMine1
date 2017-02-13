Feature: Create Hospital org which has managing org and multiple locations

  Background:

  Scenario Outline:
    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Given user clicks on Organization link
    And user verifys the header of the organizations page
    When user clicks on managing org tab
    Then user verifys the managing org page
    When user clicks on create new
    Then user verifies create management org page header "Create Management Organization"
    And Enter Manging org data and click on submit
      | manorgresrtFEuy | valid management org data | aptest20@gmail.com | 212-567-8970 | ADDR1 | 7th floor | Arizona | NY | 10020 |
    And wait for the page to load and get the message
    Then org is created successfuly message verification "Success! Management Organization Successfully Created."
    Then close the message
    And user clicks on hospital org tab
    Then user verifys the hospital org page
    When user clicks on create new
    Then user verifies create hospital org page header "Create Hospital Organization"
    Given Select Morg and enter hospital data and click on submit  "<name>" and "<shortName>" and "<ccn>" and "<ein>" and "<npi>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>" and "<locationName>" and "<locationType>" and "<marketId>" and "<regionId>" and "<locAddr1>" and "<locAddr2>" and "<locCity>" and "<locState>" and "<locZip>"
    And wait for the page to load and get the message
    Then org is created successfuly message verification "<expMsg>"
    Examples:

      | name                 | shortName       | ccn        | ein        | npi        | address1    | address2  | city    | state | zip   | locationName                          | locationType | locAddr1                                | locAddr2                                | locCity                           | locState    | locZip                  | marketId | regionId | expMsg                                               |
      | hospWithMorgMultiLoc | aptestShortName | 1234567890 | 1234567890 | 1234567890 | 256 5th ave | 7th floor | NewYork | NY    | 10020 | apLoc1Name,loc2Name,loc3Name,loc4Name | 8,9,3,4      | loc1Addr1,loc2addr1,loc3addr1,loc4addr1 | loc1addr2,loc2Addr2,loc3addr1,loc4addr2 | Bellemead,Fishkill,Cary,Beaverton | CT,FL,NJ,CT | 10020,08502,12345,56789 | 7,2,6,5  | 2,1,2,2  | Success! Hospital Organization Successfully Created. |


