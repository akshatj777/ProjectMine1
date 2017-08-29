Feature: Verification of physician report under dashboard

  Scenario Outline: User should be able to verify physician report appearing under dashboard
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

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify clicking on attributed physician name is opening scorecard dashboard
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
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify attributed physician appearing in performance scorecard page
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
    Then I verify current page "Performance Scorecard Dashboard" title
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    Then I verify "Attributed Physician" is appearing under filter options in newly opened scorecard page
    Then I verify "physician" filter is appearing under filter options under scorecard page

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

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
      | email                         |
      | shutestaug231132a@yopmail.com |

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
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    Then I click on "Table" button for view filter under filter options
    Then I wait until loading icon disappears in physician dashboard report
    Then I should see "Performance Evaluation by Physician" appearing under physician dashboard reports
    And I should verify spotlights are not appearing on the physician dashboard page
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
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify physician report under dashboard is appearing for RPFIN role user for medicare,emblem and multiple payer users
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

    Examples: 
      | email                          |
      #| Medicare                      |
      | shutestaug231132a@yopmail.com  |
      #| Emblem                        |
      | emblemachrpfin@yopmail.com     |
      #| Multiple Payer User           |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: Verify dashboard category is not appearing for model 3 users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    Then I verify current page "Reports" title
    And I should not see Reports Tile text as <Menu 1>

    Examples: 
      | email                         | Menu 1     |
      | shutestauf171115a@yopmail.com | Dashboards |

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

  Scenario Outline: Verify user should see kpi boxes,tabular view and disposition graphs in performance scorecard dashboard page
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
    Then I verify current page "Performance Scorecard Dashboard" title
    Then I wait until loading icon disappears in physician dashboard report
    And I will wait to see "Performance Scorecard" in the newly opened tab after clicking attributed physician
    Then I verify scorecards appearing on performance scorecard dashboard page
    And I verify "Episodes (Eps)" KPI is appearing under performance scorecard
    And I verify "Avg Episode Cost" KPI is appearing under performance scorecard
    And I verify "% Disch to SNF" KPI is appearing under performance scorecard
    And I verify "SNF Days" KPI is appearing under performance scorecard
    And I verify "% Eps w Readmit" KPI is appearing under performance scorecard
    Then I verify "Top 5 Bundle Performance" section is appearing on the performance scorecard dashboard page
    Then I verify "Top 5 Facility Performance" section is appearing on the performance scorecard dashboard page
    Then I verify "Post-Acute Care Discharge Disposition" section is appearing on the performance scorecard dashboard page
    And I verify Top 5 "Bundle" performance table is appearing on the performance scorecard dashboard page
    And I verify Top 5 "Facility" performance table is appearing on the performance scorecard dashboard page
    Then I verify bar containers appearing under post acute care discharge disposition on the performance scorecard dashboard page

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
    #And I verify adjusted calculation is appearing on the "Episodes (Eps)" kpi box
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