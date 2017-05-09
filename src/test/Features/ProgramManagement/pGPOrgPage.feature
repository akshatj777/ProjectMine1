Feature: PGP Org Page test

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear
    Then Navigate to program management home page


  Scenario:

    Given user clicks on Organization link
    Then user verifys the header of the organizations page
    When user clicks on pgp org tab
    Then user verifys the pgp org page
    When user clicks on create new
    Then user verifies create pgp org page header "Create PGP Organization"
