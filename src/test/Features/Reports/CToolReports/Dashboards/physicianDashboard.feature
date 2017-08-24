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
      | email                              |
      | shutestaug231132a@yopmail.com      |
      
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
      | email                              |
      | shutestaug231132a@yopmail.com      |
      
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
    
   
   