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
    And I wait for 2000 milli seconds

    And I should see "Episodes" header title for "episodesColumnTitle" column in Operations Dashboard report
    And I should see "Readmissions" header title for "readmissionsColumnTitle" column in Operations Dashboard report
    And I should see "SNF Discharges" header title for "onBoardedColumnTitle" column in Operations Dashboard report
    And I should see "Risk Assessments" header title for "contactedColumnTitle" column in Operations Dashboard report

    When I select "Upenn - Pennsylvania Hospital" from "hospitalSelector" filter in Operations Dashboard report
    And I wait for 8000 milli seconds
    When I select "Amputation" from "summarySelector" filter in Operations Dashboard report
    And I wait for 6000 milli seconds
