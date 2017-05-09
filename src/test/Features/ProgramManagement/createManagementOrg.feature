Feature: Create management org test

  Background: user login and navigates to home page and clicks on create new managing org

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Then Navigate to program management home page
    Given user clicks on Organization link
    When user clicks on managing org tab
    When user clicks on create new
    Then user verifies create management org page header "Create Management Organization"

  Scenario Outline: create a managing org

    Given Enter Morg data and click on submit  "<name>"  and "<contactPerson>" and "<contactEmail>" and "<contactPhone>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>"
    And wait for the page to load and get the message
    Then org is created successfuly message verification "<expectedMsg>"

    Examples:

      | name         | contactPerson             | contactEmail       | contactPhone | address1 | address2  | city    | state | zip   | expectedMsg                                            |
      | createManOrg | valid management org data | aptest20@gmail.com | 212-567-8970 | ADDR1    | 7th floor | Arizona | NY    | 10020 | Success! Management Organization Successfully Created. |

  Scenario Outline:Cancel create management org

    Given Enter data and click on cancel  "<name>"  and "<contactPerson>" and "<contactEmail>" and "<contactPhone>" and "<address1>" and "<address2>" and "<city>" and "<state>" and "<zip>"
    Then user landing page after create cancel "<url>"

    Examples:

      | name            | contactPerson             | contactEmail       | contactPhone | address1 | address2  | city    | state | zip   | url                      |
      | cancelCreatManO | valid management org data | aptest20@gmail.com | 212-567-8970 | ADDR1    | 7th floor | Arizona | NY    | 10020 | organizations-browser/mo |

