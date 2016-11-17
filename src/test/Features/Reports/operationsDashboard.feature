Feature: Operations Dashboard report

  Scenario: Operations Dashboard reports feature
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds

    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Then I should see Reports Tile text as Dashboards
    When I click on the Reports Tile with text "Dashboards"
    Then I should see "Operations" Reports text for "Dashboards" reports
    When I click on "Operations" reports text for "Dashboards" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Operations Dashboard" in the Operations Dashboard report page header
    And I wait for 4000 milli seconds