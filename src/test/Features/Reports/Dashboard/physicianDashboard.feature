Feature: Verification of physician report under dashboard

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
      | email                         |
      | shutestaug231132a@yopmail.com |

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
      | email                         |
      | shutestaug231132a@yopmail.com |

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
    And I verify "All" is appearing under "physician" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "payer" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "participant" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "initiator" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "facility" filter field in performance scorecard dashboard page
    And I verify "All" is appearing under "bundle" filter field in performance scorecard dashboard page

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

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
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify user should be able to drill through top 5 bundle performance values
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
    Then I verify "Top 5 Bundle Performance" section is appearing on the performance scorecard dashboard page
    And I click on a row under top 5 "Bundle" performance table
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Spending" title
    Then I will wait to see "Spending" is appearing in the new window
    And I switch back to old window

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify user should be able to drill through top 5 bundle performance values
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
    Then I verify "Top 5 Facility Performance" section is appearing on the performance scorecard dashboard page
    And I click on a row under top 5 "Facility" performance table
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Spending" title
    Then I will wait to see "Spending" is appearing in the new window
    And I switch back to old window

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify user should be able to drill through post acute care discharge disposition graphs
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
    Then I verify "Post-Acute Care Discharge Disposition" section is appearing on the performance scorecard dashboard page
    Then I click on one of the bar graph present under post acute care discharge disposition section
    And I switch to new window
    Then I wait until loading message disappears in the new window after clicking on element
    Then I verify current page "Performance" title
    Then I will wait to see "Performance" is appearing in the new window
    And I switch back to old window

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify the user should be able to see actual values appearing appearing on the kpi boxesw in in performance scorecard page
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
    Then I wait until loading icon disappears in physician dashboard report
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    And I verify "Episodes (Eps)" KPI is appearing under performance scorecard
    And I verify "Avg Episode Cost" KPI is appearing under performance scorecard
    And I verify "% Disch to SNF" KPI is appearing under performance scorecard
    And I verify "SNF Days" KPI is appearing under performance scorecard
    And I verify "% Eps w Readmit" KPI is appearing under performance scorecard
    Then I verify actual calculation is appearing on the "Episodes (Eps)" kpi box
    Then I verify actual calculation is appearing on the "Avg Episode Cost" kpi box
    Then I verify actual calculation is appearing on the "% Disch to SNF" kpi box
    Then I verify actual calculation is appearing on the "SNF Days" kpi box
    Then I verify actual calculation is appearing on the "% Eps w Readmit" kpi box
    And I verify adjusted calculation is appearing on the "Avg Episode Cost" kpi box
    And I verify adjusted calculation is appearing on the "% Disch to SNF" kpi box
    And I verify adjusted calculation is appearing on the "SNF Days" kpi box
    And I verify adjusted calculation is appearing on the "% Eps w Readmit" kpi box

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify user should be able to verify the column names in the financial performance tables
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
    Then I verify "Top 5 Bundle Performance" section is appearing on the performance scorecard dashboard page
    And I verify "Bundle" column is appearing under top 5 "Bundle" performance table
    And I verify "Episode Volume" column is appearing under top 5 "Bundle" performance table
    And I verify "Avg. Episode Cost" column is appearing under top 5 "Bundle" performance table
    And I verify "Avg Target Price" column is appearing under top 5 "Bundle" performance table
    Then I verify "Top 5 Facility Performance" section is appearing on the performance scorecard dashboard page
    And I verify "Facility" column is appearing under top 5 "Facility" performance table
    And I verify "Episode Volume" column is appearing under top 5 "Facility" performance table
    And I verify "Avg. Episode Cost" column is appearing under top 5 "Facility" performance table
    And I verify "Avg Target Price" column is appearing under top 5 "Facility" performance table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify user is able to see $ symbol before the value in average episode cost in performance score card page
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
    Then I verify "$" is appearing on the actual value of "Avg Episode Cost" kpi box
    Then I verify "%" is appearing on the actual value of "% Disch to SNF" kpi box
    Then I verify "%" is appearing on the actual value of "% Eps w Readmit" kpi box
    Then I verify "$" is appearing on the adjusted value of "Avg Episode Cost" kpi box
    Then I verify "%" is appearing on the adjusted value of "% Disch to SNF" kpi box
    Then I verify "%" is appearing on the adjusted value of "% Eps w Readmit" kpi box
    Then I verify "$" symbol is appearing in the values under avg episode cost and avg target price in "Bundle" table
    Then I verify "$" symbol is appearing in the values under avg episode cost and avg target price in "Facility" table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify the values under performance evaluation by physician table values are center alligned
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
    Then I verify attributed physician names are center alligned
    Then I verify episode eps column values are center alligned
    Then I verify avg episode cost column spotlights are center alligned
    Then I verify disch to snf column spotlights are center alligned
    Then I verify snf days column spotlights are center alligned
    Then I verify eps with readmit column spotlights are center alligned

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify the values in kpi boxes are center alligned under performance scorecard dashboard page
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
    Then I verify actual values in kpi boxes are center alligned in performance scorecard page
    Then I verify episode volume column values under "Bundle" performance table are center alligned
    Then I verify avg episode cost column values under "Bundle" performance table are center alligned
    Then I verify avg target price column values under "Bundle" performance table are center alligned
    Then I verify episode volume column values under "Facility" performance table are center alligned
    Then I verify avg episode cost column values under "Facility" performance table are center alligned
    Then I verify avg target price column values under "Facility" performance table are center alligned

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify adjusted historic button is visible beside benchmark on the physician dashboard page and performance scorecard page
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
    Then I verify Adjusted Historic button is appearing beside benchmark option on physician dashboard page
    When I click the first name under attributed physican column
    And I switch to new window
    Then I wait until loading icon disappears in physician dashboard report
    Then I verify current page "Performance Scorecard Dashboard" title
    And I verify Adjusted Historic button is appearing beside benchmark option on performance scorecard page

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify claims option is appearing under data source
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
    Then I verify "Claims" option is appearing beside data source on the physician dashboard report page
    Then I verify "Claims" option is appearing beside data source on the physician dashboard report page
    And I verify "Claims" option is appearing beside data source on the performance scorecard page

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify the global filters are appearing on the physician dashboard report page
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
    When I switch to default window from iframe
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Payer" filter is appearing under global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify apply button is appearing under global filters
    Then I see <payer> appearing under payer filter of global filters
    Then I see <participant> appearing under participant filter of global filters

    Examples: 
      | email                         | payer    | participant |
      | shutestaug231132a@yopmail.com | Medicare | Penn        |

  Scenario Outline: Verify the headers of the columns are center alligned
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
    And I verify "Attributed Physician" header name is center alligned on physician dashboard report
    And I verify "Episodes (Eps)" header name is center alligned on physician dashboard report
    And I verify "Avg Episode Cost" header name is center alligned on physician dashboard report
    And I verify "% Disch to SNF" header name is center alligned on physician dashboard report
    And I verify "SNF Days" header name is center alligned on physician dashboard report
    And I verify "% Eps with Readmit" header name is center alligned on physician dashboard report

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |
