Feature: Verification of physician report under dashboard

  Scenario Outline: User should see physician dashboard report for the role user RPFIN,RPNOFIN and OPSFIN
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    Then I should see following Reports text for Dashboards reports
      | Physician |
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports

    Examples: 
      | email                              | Role    |
      | shutestaug231132a@yopmail.com      | RPFIN   |
      | shutestaug221130a@yopmail.com      | RPNOFIN |
      | reptestachmodel2opsfin@yopmail.com | OPSFIN  |

  Scenario Outline: User should not see physician dashboard report for external role users except OPSFIN
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    And I should not see Reports Tile text as "Dashboards"

    Examples: 
      | email                         | Role     |
      | shutestaug15240p@yopmail.com  | OPSNOFIN |
      | shutestaug221145a@yopmail.com | OPSSPEND |
      | repopsnofintest@yopmail.com   | ECREPORT |

  Scenario Outline: User should be able to verify physician report appearing under dashboard and clicking on attributed physician name is opening scorecard dashboard and verify drill through
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I wait for 3000 milli seconds
    When I click the first name under attributed physican column
    And I switch to new window
    Then I verify current page "Performance Scorecard Dashboard" title
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    Then I verify "Episodes (Eps)" scorecard is appearing under performance scorecard
    Then I verify "Avg Episode Cost" scorecard is appearing under performance scorecard
    Then I verify "% Disch to SNF" scorecard is appearing under performance scorecard
    Then I verify "SNF Days" scorecard is appearing under performance scorecard
    Then I verify "% Eps w Readmit" scorecard is appearing under performance scorecard

    Examples: 
      | email                              | Role   | Facility |
      | shutestaug231132a@yopmail.com      | RPFIN  | ACH      |
      | reptestachmodel2opsfin@yopmail.com | OPSFIN | ACH      |
      | shutestaug15252p@yopmail.com       | RPFIN  | PGP      |

  Scenario Outline: Verify top hundread,count,three sections and pagination on physicain dashboard report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I verify initially top "100" physicians are loaded
    Then I verify "20" physicians are present under attributed physician column on dashboard physician report
    Then I verify "100" count button appearing on the dashborad physician page
    Then I verify "500" count button appearing on the dashborad physician page
    Then I verify "All" count button appearing on the dashborad physician page
    Then I verify pagination section is appearing above of physicians on the dashboard physician page
    Then I verify pagination section is appearing at bottom of physicians on the dashboard physician page
    And I verify "First" tab is appearing above physicians inside the pagination section on dashboard physician page
    And I verify "Previous" tab is appearing above physicians inside the pagination section on dashboard physician page
    And I verify "Next" tab is appearing above physicians inside the pagination section on dashboard physician page
    And I verify "Last" tab is appearing above physicians inside the pagination section on dashboard physician page
    And I verify "First" tab is appearing below physicians inside the pagination section on dashboard physician page
    And I verify "Previous" tab is appearing below physicians inside the pagination section on dashboard physician page
    And I verify "Next" tab is appearing below physicians inside the pagination section on dashboard physician page
    And I verify "Last" tab is appearing below physicians inside the pagination section on dashboard physician page
    Then I verify "Showing 1 to 20 of 100 entries" is appearing above physicians on dashboard physician report
    Then I verify "Showing 1 to 20 of 100 entries" is appearing below physicians on dashboard physician report

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify attributed physician appearing in performance evalution and scorecard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I wait for 3000 milli seconds
    Then I verify Attributed Physician filter is appearing on physician dashboard page
    And I verify search field is appearing below the count on performance evaluation by physician page
    Then I verify "Search within selected data set" text is appearing beside the search field on physician dashboard report
    When I click the first name under attributed physican column
    And I switch to new window
    Then I verify current page "Performance Scorecard Dashboard" title
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    Then I verify "Attributed Physician" is appearing under filter options in newly opened scorecard page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify spotlights is appearing in greeen,yellow and red on the physician dashboard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I verify "red" spotlights is appearing beside the attributed physicians
    Then I verify "green" spotlights is appearing beside the attributed physicians
    Then I verify "yellow" spotlights is appearing beside the attributed physicians

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify table view under filter options and verify tables are appearing and check for drill through of physicians
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 3000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I click on "Table" button for view filter under filter options
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    And I should verify spotlights are not appearing on the physician dashboard page
    And I verify "Attributed Physician" header name is center alligned on physician dashboard report
    And I verify "Episodes (Eps)" header name is center alligned on physician dashboard report
    And I verify "Avg Episode Cost" header name is center alligned on physician dashboard report
    And I verify "% Disch to SNF" header name is center alligned on physician dashboard report
    And I verify "SNF Days" header name is center alligned on physician dashboard report
    And I verify "% Eps with Readmit" header name is center alligned on physician dashboard report
    Then I should verify "$" is appearing before the count under "Avg Episode Cost" column
    Then I should verify "%" is appearing before the count under "% Disch to SNF" column
    Then I should verify "%" is appearing before the count under "% Eps with Readmit" column
    Then I verify "performance" table is appearing after selecting table option under dashboard physician report
    When I click the first name under attributed physican column
    And I switch to new window
    Then I verify current page "Performance Scorecard Dashboard" title
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario: Verify dashboard category is not appearing for model 3 pgp users
    Given I am on the login page
    When I enter email field shutestauf171115a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    Then I verify current page "Reports" title
    And I should not see Reports Tile text as "Dashboards"

  Scenario Outline: Verify user has the ability to scan the performance of particular attributed physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 3000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I verify current page "Performance Scorecard Dashboard" title
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    Then I verify "Episodes (Eps)" scorecard is appearing under performance scorecard
    Then I verify "Avg Episode Cost" scorecard is appearing under performance scorecard
    Then I verify "% Disch to SNF" scorecard is appearing under performance scorecard
    Then I verify "SNF Days" scorecard is appearing under performance scorecard
    Then I verify "% Eps w Readmit" scorecard is appearing under performance scorecard

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify user should see kpi boxes,tabular view in performance scorecard dashboard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 3000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I verify current page "Performance Scorecard Dashboard" title
    Then I wait until loading icon disappears in physician dashboard report
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    And I verify "Episodes (Eps)" KPI is appearing under performance scorecard
    And I verify "Avg Episode Cost" KPI is appearing under performance scorecard
    And I verify "% Disch to SNF" KPI is appearing under performance scorecard
    And I verify "SNF Days" KPI is appearing under performance scorecard
    And I verify "% Eps w Readmit" KPI is appearing under performance scorecard
    Then I verify "Top 5 Bundles by Episode Volume (2016Q4 - 2017Q3)" section is appearing on the performance scorecard dashboard page
    Then I verify "Quarterly Performance (2016Q4 - 2017Q3)" section is appearing on the performance scorecard dashboard page
    Then I verify "Top 5 SNFs by Episode Volume (2016Q4 - 2017Q3)" section is appearing on the performance scorecard dashboard page
    And I verify Top 5 "Bundle" performance table is appearing on the performance scorecard dashboard page
    And I verify Top 5 "SNF" performance table is appearing on the performance scorecard dashboard page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify filters are preselected on the performance scorecard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 6000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    And I verify "All" is appearing under "payer" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "participant" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "initiator" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "facility" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "bundle" filter field in performance scorecard dashboard page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify user should be able to drill through of kpi boxes in performance scorecard dashboard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    Then I verify "Episodes (Eps)" scorecard is appearing under performance scorecard
    Then I verify "Avg Episode Cost" scorecard is appearing under performance scorecard
    Then I verify "% Disch to SNF" scorecard is appearing under performance scorecard
    Then I verify "SNF Days" scorecard is appearing under performance scorecard
    Then I verify "% Eps w Readmit" scorecard is appearing under performance scorecard
    And I click on "Episodes (Eps)" is kpi box on the performance scorecard dashboard page
    And I verify the user is on the same page by verifying the performance scorecards are appearing
    And I click on "Avg Episode Cost" is kpi box on the performance scorecard dashboard page
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Spending" title
    Then I will wait to see "Spending" is appearing in the new window
    And I switch back to old window
    And I click on "% Disch to SNF" is kpi box on the performance scorecard dashboard page
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Performance" title
    Then I will wait to see "Performance" is appearing in the new window
    And I switch back to old window
    And I click on "SNF Days" is kpi box on the performance scorecard dashboard page
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Performance" title
    Then I will wait to see "Performance" is appearing in the new window
    And I switch back to old window
    And I click on "% Eps w Readmit" is kpi box on the performance scorecard dashboard page
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Readmissions Claims" title
    Then I will wait to see "Readmissions Claims" is appearing in the new window
    And I switch back to old window

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify user should be able to drill through top 5 bundles by episodes volume
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    Then I verify "Top 5 Bundles by Episode Volume (2016Q4 - 2017Q3)" section is appearing on the performance scorecard dashboard page
    And I click on a row under top 5 "Bundle" performance table
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Spending" title
    Then I will wait to see "Spending" is appearing in the new window
    And I switch back to old window

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify attributed physician filter is preselected in the physician scorecard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    And I verify "physician" filter is not having "All" in the filter

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify the <color> and click on corresponding <color> physician and verify <message> on scorecards as per the color
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 20000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    And I click on the attributed physician having "<color>" dot in the chart of physician dashboard report
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    And I verify text with "<color>" is appearing inside the scorecards on performance scorecard page
    Then I verify "<message>" is appearing on the scorecard corresponding to the "<color>" color

    Examples: 
      | email                              | color  | messsage             |
      | shutestaug231132a@yopmail.com      | red    | Above the benchmark  |
      | reptestachmodel2opsfin@yopmail.com | red    | Above the benchmark  |
      | shutestaug231132a@yopmail.com      | green  | Below the benchmark  |
      | reptestachmodel2opsfin@yopmail.com | green  | Below the benchmark  |
      | shutestaug231132a@yopmail.com      | yellow | Within the benchmark |
      | reptestachmodel2opsfin@yopmail.com | yellow | Within the benchmark |

  Scenario Outline: Verify filters should not be clickable without selecting any value in the filter
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 40000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I uncheck All option under "<filtername>" filter in the filter options
    And I verify apply button is not clickable in the filters after unchecking all option
    Then I enter <filtertext> under the "<filtername>" field searchbox
    Then I click the <filtertext> appearing under "<filtername>" field filter under filter options
    And I click on apply button under the filter in filter options
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I verify "<selectedfilter>" is appearing under "<filtername>" filter field after applying filter

    Examples: 
      | email                              | filtername  | filtertext                       | selectedfilter                   |
      | shutestaug231132a@yopmail.com      | payer       | Medicare                         | All                              |
      | reptestachmodel2opsfin@yopmail.com | payer       | Medicare                         | All                              |
      | shutestaug231132a@yopmail.com      | participant | Penn                             | All                              |
      | reptestachmodel2opsfin@yopmail.com | participant | Penn                             | All                              |
      | shutestaug231132a@yopmail.com      | initiator   | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |
      | reptestachmodel2opsfin@yopmail.com | initiator   | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |
      | shutestaug231132a@yopmail.com      | facility    | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |
      | reptestachmodel2opsfin@yopmail.com | facility    | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center |
      | shutestaug231132a@yopmail.com      | bundle      | Amputation                       | Amputation                       |
      | reptestachmodel2opsfin@yopmail.com | bundle      | Amputation                       | Amputation                       |

  Scenario Outline: Verify the fields are no longer availble on the performance scorecard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 40000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    Then I verify "Top 5 Facility Performance" section is not appearing on the performance scorecard page
    Then I verify "Post Acute Discharge Disposition" section is not appearing on the performance scorecard page
    And I verify "Date Range" filter is not appearing in the filters section on scorecard page
    Then I verify "Top 5 Bundles by Episode Volume (2016Q4 - 2017Q3)" section is appearing on the performance scorecard dashboard page
    And I click on "LMJ Bundle Details" link on the performance scorecard page
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    And I verify past four quarters data is appearing on lmj page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify user can change physician from the scorecard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 40000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    Then I click on "physician" filter in the filter options
    And I select a "physician" name in filter and verify the same name is appearing on scorecard page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify Avg Episode Cost and Avg NPRA per episode values
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 40000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I verify "Avg Episode Cost" toggle button is appearing beside "cost metric"
    And I verify "Avg Episode Cost" header name is center alligned on physician dashboard report
    And I click on "Avg NPRA per Episode" radio button beside "cost metric"
    Then I verify "Avg NPRA per Episode" toggle button is appearing beside "cost metric"
    Then I wait for 20000 milli seconds
    And I verify "Avg NPRA per Episode" header name is center alligned on physician dashboard report
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    And I click on "Avg Episode Cost" radio button beside "cost metric"
    Then I wait for 20000 milli seconds
    Then I verify "Avg Episode Cost" toggle button is appearing beside "cost metric"
    Then I verify "Avg Episode Cost" scorecard is appearing under performance scorecard
    Then I wait for 20000 milli seconds
    And I verify column name "Episodes (Eps)" is appearing on the scorecard page
    And I verify column name "% Disch to Home" is appearing on the scorecard page
    And I verify column name "% Disch to HHA" is appearing on the scorecard page
    And I verify column name "% Disch to SNF" is appearing on the scorecard page
    And I verify column name "% Disch to IRF" is appearing on the scorecard page
    And I verify column name "% Eps w Readmit" is appearing on the scorecard page
    And I verify column name "Initial SNF LOS" is appearing on the scorecard page
    And I verify column name "SNF Days" is appearing on the scorecard page
    And I verify column name "SNF PN Utilization" is appearing on the scorecard page
    And I verify column name "Avg Episode Cost" is appearing on the scorecard page
    And I click on "Avg NPRA per Episode" radio button beside "cost metric"
    Then I verify "Avg NPRA per Episode" toggle button is appearing beside "cost metric"
    Then I verify "Avg NPRA per Episode" scorecard is appearing under performance scorecard
    And I verify column name "Episodes (Eps)" is appearing on the scorecard page
    And I verify column name "% Disch to Home" is appearing on the scorecard page
    And I verify column name "% Disch to HHA" is appearing on the scorecard page
    And I verify column name "% Disch to SNF" is appearing on the scorecard page
    And I verify column name "% Disch to IRF" is appearing on the scorecard page
    And I verify column name "% Eps w Readmit" is appearing on the scorecard page
    And I verify column name "Initial SNF LOS" is appearing on the scorecard page
    And I verify column name "SNF Days" is appearing on the scorecard page
    And I verify column name "SNF PN Utilization" is appearing on the scorecard page
    And I verify column name "Avg NPRA per Episode" is appearing on the scorecard page
    And I click on "Avg NPRA per Episode" is kpi box on the performance scorecard dashboard page
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Financial Performance" title
    Then I will wait to see "Financial Performance" is appearing in the new window
    And I switch back to old window

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify  system and adj historic radio buttons beside benchmark
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 40000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I verify "Adj Historic" toggle button is appearing beside "Benchmark"
    And I click on "System" radio button beside "cost metric"
    Then I wait for 20000 milli seconds
    Then I verify "System" toggle button is appearing beside "Benchmark"
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    And I click on "Adj Historic" radio button beside "Benchmark"
    Then I wait for 20000 milli seconds
    Then I verify "Adj Historic" column name is appearing under quaterly performance table
    And I verify "Adj Historic" column name is appearing under episodes volume table
    Then I verify "System" column is not appearing on performance scorecard page
    And I click on "System" radio button beside "Benchmark"
    Then I wait for 20000 milli seconds
    Then I verify "System" column name is appearing under quaterly performance table
    And I verify "System" column name is appearing under episodes volume table
    Then I verify "Adj Historic" column is not appearing on performance scorecard page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify top 5 snf table values under physician scorecard page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    When I click on the Reports Tile with text "Dashboards"
    When I click on "Physician" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait until loading icon disappears in physician dashboard report
    Then I wait for 40000 milli seconds
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    Then I verify "Top 5 SNFs by Episode Volume (2016Q4 - 2017Q3)" section is appearing on the performance scorecard dashboard page
    And I verify "PAC CCN" column is appearing under "top5SNFTable" column on scorecard page
    And I verify "Post Acute Facility" column is appearing under "top5SNFTable" column on scorecard page
    And I verify "Network Tier" column is appearing under "top5SNFTable" column on scorecard page
    And I verify "Episodes (Eps)" column is appearing under "top5SNFTable" column on scorecard page
    And I verify "SNF Days" column is appearing under "top5SNFTable" column on scorecard page
    And I verify "% Eps w Readmit" column is appearing under "top5SNFTable" column on scorecard page

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |
