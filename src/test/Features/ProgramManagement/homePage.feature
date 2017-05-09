Feature: HomePage Test



  Scenario: User verifies home page elements and default org tab selected.

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Then Navigate to program management home page
    Given user clicks on Organization link
    Then user verifys the header of the organizations page
    Then user verifys default org tab selected on the home page
      | Managing|
    Then user verifys elements on the page
      | ManagingHospitalPGPPayor |
