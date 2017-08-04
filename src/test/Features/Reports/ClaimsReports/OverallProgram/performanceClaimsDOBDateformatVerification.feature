Feature: Verification of DOB Date format for Claims Reports

  Scenario Outline: User should be able to verify YYYY-MM-DD format for DOB field column for Claims Reports
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for 60000 milli seconds
    When I switch to reports embedded iframe
    When I click on field-panel-icon button
    And I wait for 4000 milli seconds
    When I click to "DOB" field filter under "Patient Detail" filter field
    And I choose add to report option from select options of filter field
    And I wait for 10000 milli seconds
    Then I verify the DOB column format is in YYYY-MM-DD for "Patient Detail"
    When I switch to default window from iframe
    When I click on reports tab appearing on reports page
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |
