Feature: CTool Report Links Verification

Scenario Outline: User should not see program overview under dashboard for OPSNOFIN,OPSPEND and ECREPORTS Roles for ACH and PGP Provider Type

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    And I should not see Reports Tile text as <Menu 1>
    
    Examples:
    
      | email                         | Menu 1     |
      | shutestaug15240p@yopmail.com  | Dashboard  |
      | shutestjul26420p@yopmail.com  | Dashboard  |
      | repopsnofintest@yopmail.com   | Dashboard  |
      | shutestaug221150a@yopmail.com | Dashboard  |
      | shutestaug221145a@yopmail.com | Dashboard  |
      | shutestjul26415@yopmail.com   | Dashboard  |
      
Scenario Outline: User should see Program Overview under Dashboard and verify sanity for program overview reports for RPFIN,RPFNOFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I should see "Overall Program" appearing under program overview reports
    And I should see "EPISODES" under overall program
    Then I verify episodes graph appearing under overall program report
    And I should see "NPRA" under overall program
    Then I verify npra graph appearing under overall program report
    And I wait for 2000 milli seconds
    
    Then I should see "Post Acute Utilization" under program overview reports
    And I should see "SKILLED NURSING" under overall program
    Then I verify skilled nursing graph appearing under overall program report
    And I should see "LONG TERM ACUTE CARE" under overall program
    Then I verify long term acute care graph appearing under overall program report
    And I should see "INPATIENT REHAB" under overall program
    Then I verify inpatient rehab graph appearing under overall program report
    And I should see "HOME HEALTH" under overall program
    Then I verify home health graph appearing under overall program report
    And I should see "HOME" under overall program
    Then I verify home graph appearing under overall program report
    And I should see "OTHER" under overall program
    Then I verify other graph appearing under overall program report
    And I wait for 2000 milli seconds
    Then I should see "SNF Length of Stay" under program overview reports
    And I should see "INITIAL SNF LENGTH OF STAY" under overall program
    Then I verify initial snf length of stay graph appearing under overall program report
    And I should see "SNF DAYS" under overall program
    Then I verify snf days graph appearing under overall program report
    
    Then I should see "Readmissions" under program overview reports
    And I should see "EPISODES w READMIT" under overall program
    Then I verify episodes w readmit graph appearing under overall program report
    And I should see "READMITS PER EPISODE" under overall program
    Then I verify readmits per episode graph appearing under overall program report
    
    And I verify "Filter option(s)" is present on the left side of overall program report
    Then I should see daterange filter on the left side of overall program report
    Then I should see partcipant filter on the left side of overall program report
    Then I should see episode initiator filter on the left side of overall program report
    Then I should see facility filter on the left side of overall program report
    Then I should see bundle filter on the left side of overall program report
    Then I should see bundle risk filter on the left side of overall program report
    Then I should see view filter on the left side of overall program report
    And I click on "Table" option appearing under view filter
    And I wait for 5000 milli seconds
    Then I should see "Claims" table under overall program report
    Then I should see claims table under post acute utilization report
    Then I should see claims table under SNF Length of stay report
    Then I should see claims table under Readmissions report
    Then I should see data source filter on the left side of overall program report
    Then I select "Episode Connect" radio button under data source filter
    And I wait for 5000 milli seconds
    Then I should see "EC" table under overall program report
    Then I should see "EC" table under post acute utilization report
    Then I should see "EC" table under SNF length of stay report
    Then I should see "EC" table under readmissions report
    And I wait for 2000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | shutestaug221130a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should be able to expand and collapse PAU,SNF and Readmission Graphs for RPFIN and OPSFIN Roles with ACH Provider Type

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I should see "Post Acute Utilization" under program overview reports
    And I click on "Post Acute Utilization" under program overview reports
    And I wait for 2000 milli seconds
    Then I should see "SNF Length of Stay" under program overview reports
    And I click on "SNF Length of Stay" under program overview reports
    Then I should see "Readmissions" under program overview reports
    And I click on "Readmissions" under program overview reports
    Then I again click on Post Acute Utilization under program overview reports
    And I wait for 2000 milli seconds
    Then I should see "SNF Length of Stay" under program overview reports
    Then I again click on SNF Length of Stay under program overview reports
    And I wait for 2000 milli seconds
    Then I again click on Readmissions under program overview reports
    And I wait for 2000 milli seconds
    
    Examples:
         
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
    
Scenario Outline: User should click on zoom in and zoom out under post accute utilization graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I should see "Post Acute Utilization" under program overview reports
    And I click on "Zoom In" button under skilled nursing graph for post accute utilization report
    And I wait for 5000 milli seconds
    Then I verify "Zoom out" text appearing on the "skilled nursing" graph
    And I click on "Zoom out" button under skilled nursing graph for post accute utilization report
    And I wait for 3000 milli seconds
    And I click on "Zoom In" button under long term acute care graph for post accute utilization report
    And I wait for 3000 milli seconds
    Then I verify "Zoom out" text appearing on the "long term acute care" graph
    And I click on "Zoom out" button under long term acute care graph for post accute utilization report
    And I wait for 3000 milli seconds
    And I click on "Zoom In" button under inpatient rehab graph for post accute utilization report
    And I wait for 3000 milli seconds
    Then I verify "Zoom out" text appearing on the "inpatient rehab" graph
    And I click on "Zoom out" button under inpatient rehab graph for post accute utilization report
    And I wait for 3000 milli seconds
    And I click on "Zoom In" button under home health graph for post accute utilization report
    And I wait for 3000 milli seconds
    Then I verify "Zoom out" text appearing on the "home health" graph
    And I click on "Zoom out" button under home health graph for post accute utilization report
    And I wait for 3000 milli seconds
    And I click on "Zoom In" button under home graph for post accute utilization report
    And I wait for 3000 milli seconds
    Then I verify "Zoom out" text appearing on the "home" graph
    And I click on "Zoom out" button under home graph for post accute utilization report
    And I wait for 3000 milli seconds
    And I click on "Zoom in" button under other graph for post accute utilization report
    And I wait for 3000 milli seconds
    Then I verify "Zoom out" text appearing on the "other" graph
    And I click on "Zoom out" button under other graph for post accute utilization report
    And I wait for 3000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
           
Scenario Outline: User should click on export Episodes graphs for RPFIN and OPSFIN Roles with ACH Provider Type

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    And I click on export symbol on "episodes" graph
    Then I Verify "PNG" is appearing after clicking on "episodes" export symbol
    Then I Verify "XLS" is appearing after clicking on "episodes" export symbol
    Then I Verify "CSV" is appearing after clicking on "episodes" export symbol
    
    And I click on "PNG" option under "episodes" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "episodes" graph
    Then I verify "Medium" is appearing under Export Options for "episodes" graph
    Then I verify "Large" is appearing under Export Options for "episodes" graph
    Then I verify "Custom" is appearing under Export Options for "episodes" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "episodes" graph
    And I click on "Medium" Export Options for "episodes" graph
    And I click on "Large" Export Options for "episodes" graph
    And I click on "Custom" Export Options for "episodes" graph
    And I click on "Export" Export Options for "episodes" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "episodes" graph
    Then I should click on "XLS" option under "episodes" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "episodes" graph
    Then I should click on "CSV" option under "episodes" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on export NPRA graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
     
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    And I click on export symbol on "NPRA" graph
    Then I Verify "PNG" is appearing after clicking on "NPRA" export symbol
    Then I Verify "XLS" is appearing after clicking on "NPRA" export symbol
    Then I Verify "CSV" is appearing after clicking on "NPRA" export symbol
    
    And I click on "PNG" option under "NPRA" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "NPRA" graph
    Then I verify "Medium" is appearing under Export Options for "NPRA" graph
    Then I verify "Large" is appearing under Export Options for "NPRA" graph
    Then I verify "Custom" is appearing under Export Options for "NPRA" graph
    Then I verify graph appearing under export options popup
    
   	And I click on "Small" Export Options for "NPRA" graph
    And I click on "Medium" Export Options for "NPRA" graph
    And I click on "Large" Export Options for "NPRA" graph
    And I click on "Custom" Export Options for "NPRA" graph
    
    And I click on "Export" Export Options for "NPRA" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "NPRA" graph
    Then I should click on "XLS" option under "NPRA" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "NPRA" graph
    Then I should click on "CSV" option under "NPRA" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on export SNF graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    And I click on export symbol on "SNF" graph
    Then I Verify "PNG" is appearing after clicking on "SNF" export symbol
    Then I Verify "XLS" is appearing after clicking on "SNF" export symbol
    Then I Verify "CSV" is appearing after clicking on "SNF" export symbol
    
    And I click on "PNG" option under "SNF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "SNF" graph
    Then I verify "Medium" is appearing under Export Options for "SNF" graph
    Then I verify "Large" is appearing under Export Options for "SNF" graph
    Then I verify "Custom" is appearing under Export Options for "SNF" graph
    Then I verify graph appearing under export options popup
    And I click on "Small" Export Options for "SNF" graph
    And I click on "Medium" Export Options for "SNF" graph
    And I click on "Large" Export Options for "SNF" graph
    And I click on "Custom" Export Options for "SNF" graph
    
    And I click on "Export" Export Options for "SNF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "SNF" graph
    Then I should click on "XLS" option under "SNF" export symbol
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "100"
    And I click on export symbol on "SNF" graph
    Then I should click on "CSV" option under "SNF" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on export Long Term Acute Care graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    And I click on export symbol on "LTCH" graph
    Then I Verify "PNG" is appearing after clicking on "LTCH" export symbol
    Then I Verify "XLS" is appearing after clicking on "LTCH" export symbol
    Then I Verify "CSV" is appearing after clicking on "LTCH" export symbol
    
    And I click on "PNG" option under "LTCH" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "LTCH" graph
    Then I verify "Medium" is appearing under Export Options for "LTCH" graph
    Then I verify "Large" is appearing under Export Options for "LTCH" graph
    Then I verify "Custom" is appearing under Export Options for "LTCH" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "LTCH" graph
    And I click on "Medium" Export Options for "LTCH" graph
    And I click on "Large" Export Options for "LTCH" graph
    And I click on "Custom" Export Options for "LTCH" graph
    And I click on "Export" Export Options for "LTCH" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "LTCH" graph
    Then I should click on "XLS" option under "LTCH" export symbol
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "100"
    And I click on export symbol on "LTCH" graph
    Then I should click on "CSV" option under "LTCH" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
 Scenario Outline: User should click on export Inpatient Rehab graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    And I click on export symbol on "IRF" graph
    Then I Verify "PNG" is appearing after clicking on "IRF" export symbol
    Then I Verify "XLS" is appearing after clicking on "IRF" export symbol
    Then I Verify "CSV" is appearing after clicking on "IRF" export symbol
    
    And I click on "PNG" option under "IRF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "IRF" graph
    Then I verify "Medium" is appearing under Export Options for "IRF" graph
    Then I verify "Large" is appearing under Export Options for "IRF" graph
    Then I verify "Custom" is appearing under Export Options for "IRF" graph
    Then I verify graph appearing under export options popup
    And I click on "Small" Export Options for "IRF" graph
    And I click on "Medium" Export Options for "IRF" graph
    And I click on "Large" Export Options for "IRF" graph
    And I click on "Custom" Export Options for "IRF" graph
    
    And I click on "Export" Export Options for "IRF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "IRF" graph
    Then I should click on "XLS" option under "IRF" export symbol
    And I wait for 4000 milli seconds
    Then I scroll the page to bottom by "100"
    And I click on export symbol on "IRF" graph
    Then I should click on "CSV" option under "IRF" export symbol
    And I wait for 4000 milli seconds
        
     Examples:
     
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on export Home Health graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    Then I scroll the page to bottom by "350"
    And I click on export symbol on "HHA" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "HHA" export symbol
    Then I Verify "XLS" is appearing after clicking on "HHA" export symbol
    Then I Verify "CSV" is appearing after clicking on "HHA" export symbol
    
    And I click on "PNG" option under "HHA" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "HHA" graph
    Then I verify "Medium" is appearing under Export Options for "HHA" graph
    Then I verify "Large" is appearing under Export Options for "HHA" graph
    Then I verify "Custom" is appearing under Export Options for "HHA" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "HHA" graph
    And I click on "Medium" Export Options for "HHA" graph
    And I click on "Large" Export Options for "HHA" graph
    And I click on "Custom" Export Options for "HHA" graph
    
    And I click on "Export" Export Options for "HHA" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "HHA" graph
    Then I should click on "XLS" option under "HHA" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "HHA" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "HHA" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on export Home graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "350"
    And I click on export symbol on "home" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "home" export symbol
    Then I Verify "XLS" is appearing after clicking on "home" export symbol
    Then I Verify "CSV" is appearing after clicking on "home" export symbol
    
    And I click on "PNG" option under "home" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "home" graph
    Then I verify "Medium" is appearing under Export Options for "home" graph
    Then I verify "Large" is appearing under Export Options for "home" graph
    Then I verify "Custom" is appearing under Export Options for "home" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "home" graph
    And I click on "Medium" Export Options for "home" graph
    And I click on "Large" Export Options for "home" graph
    And I click on "Custom" Export Options for "home" graph
    
    And I click on "Export" Export Options for "home" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "home" graph
    Then I should click on "XLS" option under "home" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "home" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "home" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
     
Scenario Outline: User should click on export Other graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "350"
    And I click on export symbol on "other" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "other" export symbol
    Then I Verify "XLS" is appearing after clicking on "other" export symbol
    Then I Verify "CSV" is appearing after clicking on "other" export symbol
    
    And I click on "PNG" option under "other" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "other" graph
    Then I verify "Medium" is appearing under Export Options for "other" graph
    Then I verify "Large" is appearing under Export Options for "other" graph
    Then I verify "Custom" is appearing under Export Options for "other" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "other" graph
    And I click on "Medium" Export Options for "other" graph
    And I click on "Large" Export Options for "other" graph
    And I click on "Custom" Export Options for "other" graph
    
    And I click on "Export" Export Options for "other" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    And I click on export symbol on "other" graph
    Then I should click on "XLS" option under "other" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "other" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "other" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on export Initial SNF Length of Stay graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "5000"
    And I click on export symbol on "initialSNF" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "initialSNF" export symbol
    Then I Verify "XLS" is appearing after clicking on "initialSNF" export symbol
    Then I Verify "CSV" is appearing after clicking on "initialSNF" export symbol
    
    And I click on "PNG" option under "initialSNF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "initialSNF" graph
    Then I verify "Medium" is appearing under Export Options for "initialSNF" graph
    Then I verify "Large" is appearing under Export Options for "initialSNF" graph
    Then I verify "Custom" is appearing under Export Options for "initialSNF" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "initialSNF" graph
    And I click on "Medium" Export Options for "initialSNF" graph
    And I click on "Large" Export Options for "initialSNF" graph
    And I click on "Custom" Export Options for "initialSNF" graph
    
    And I click on "Export" Export Options for "initialSNF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "initialSNF" graph
    Then I should click on "XLS" option under "initialSNF" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "initialSNF" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "initialSNF" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should click on export SNF Days graphs for RPFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 18000 milli seconds
    And I switch to reports embedded iframe
    
    Then I scroll the page to bottom by "5000"
    And I click on export symbol on "daysSNF" graph
    And I wait for 2000 milli seconds
    Then I Verify "PNG" is appearing after clicking on "daysSNF" export symbol
    Then I Verify "XLS" is appearing after clicking on "daysSNF" export symbol
    Then I Verify "CSV" is appearing after clicking on "daysSNF" export symbol
    
    And I click on "PNG" option under "daysSNF" export symbol
    And I wait for 2000 milli seconds
    Then I verify "Small" is appearing under Export Options for "daysSNF" graph
    Then I verify "Medium" is appearing under Export Options for "daysSNF" graph
    Then I verify "Large" is appearing under Export Options for "daysSNF" graph
    Then I verify "Custom" is appearing under Export Options for "daysSNF" graph
    Then I verify graph appearing under export options popup
    
    And I click on "Small" Export Options for "daysSNF" graph
    And I click on "Medium" Export Options for "daysSNF" graph
    And I click on "Large" Export Options for "daysSNF" graph
    And I click on "Custom" Export Options for "daysSNF" graph
    
    And I click on "Export" Export Options for "daysSNF" graph
    And I wait for 4000 milli seconds
    Then I close the export options popup
    And I wait for 3000 milli seconds
    
    And I click on export symbol on "daysSNF" graph
    Then I should click on "XLS" option under "daysSNF" export symbol
    And I wait for 4000 milli seconds
    And I click on export symbol on "daysSNF" graph
    And I wait for 3000 milli seconds
    Then I should click on "CSV" option under "daysSNF" export symbol
    And I wait for 4000 milli seconds
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |