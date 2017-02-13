Feature: Managing Org Page test

  Background:

    Given User on the home page
    When User click on Login button
    Then User has to wait for the Autho overlay to laod
    And users enters email and passwd lbarinstein+qaadmin@remedypartners.com and Testing1
    Then User has to wait for Autho overlay to disappear


  Scenario:

    Given user clicks on Organization link
    Then user verifys the header of the organizations page
    When user clicks on managing org tab
    Then user verifys the managing org page
    And user clicks on create new
    Then user verifies create management org page header "Create Management Organization"

