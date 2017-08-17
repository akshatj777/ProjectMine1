Feature: CTool Report Links Verification

@sanity
Scenario Outline: User should not see program overview under dashboard for Model 3 users

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    Then I wait for 2000 milli seconds
    Then I verify current page "Reports" title
    And I should not see Reports Tile text as <Menu 1>
    
    Examples:
    
      | email                         | Menu 1      |
      | shutestauf171115a@yopmail.com | Dashboards  |
      | shutestjul24430@yopmail.com   | Dashboards  |
      | shutestagu22945am@yopmail.com | Dashboards  |
      | shutestjul24340p@yopmail.com  | Dashboards  |
      
@sanity         
Scenario Outline: User should see Program Overview under Dashboard and verify sanity for program overview reports for RPFIN,RPFNOFIN and OPSFIN Roles with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    
    Then I should see "Overall Program" appearing under program overview reports
    And I should see "EPISODES" under overall program
    Then I verify episodes graph appearing under overall program report
    And I should see "NPRA" under overall program
    Then I verify npra graph appearing under overall program report
    
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
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "Claims" table under overall program report
    Then I should see claims table under post acute utilization report
    Then I should see claims table under SNF Length of stay report
    Then I should see claims table under Readmissions report
    Then I should see data source filter on the left side of overall program report
    Then I select "Episode Connect" radio button under data source filter
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I select "Claims" radio button under data source filter
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    Then I should see "EC" table under overall program report
    Then I should see "EC" table under post acute utilization report
    Then I should see "EC" table under SNF length of stay report
    Then I should see "EC" table under readmissions report
    
    Examples:
    
      | email                              | Menu 1     |
      | shutestaug231132a@yopmail.com      | Dashboards |
      | shutestaug221130a@yopmail.com      | Dashboards |
      | reptestachmodel2opsfin@yopmail.com | Dashboards |
      
Scenario Outline: User should be able to expand and collapse PAU,SNF and Readmission Graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    
    Then I should see "Post Acute Utilization" under program overview reports
    And I click on "Post Acute Utilization" under program overview reports
    Then I should see "SNF Length of Stay" under program overview reports
    And I click on "SNF Length of Stay" under program overview reports
    Then I should see "Readmissions" under program overview reports
    And I click on "Readmissions" under program overview reports
    Then I again click on Post Acute Utilization under program overview reports
    Then I should see "SNF Length of Stay" under program overview reports
    Then I again click on SNF Length of Stay under program overview reports
    Then I again click on Readmissions under program overview reports
    
    Examples:
         
      | email                              | Menu 1     |
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |
    
Scenario Outline: User should click on zoom in and zoom out under post accute utilization graphs for RPFIN Role users with Medicare,Emblem and Multiple payer with ACH Provider Type
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Dashboards" under reports tile text
    Then I verify current page "Reports" title
    
    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |
      
    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    Then I wait untill loading icon disappears in program overview report
    And I will wait to see "Overall Program" under program overview report in iframe
    
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
      #| Medicare Payer Users| 
      | shutestaug231132a@yopmail.com      | Dashboards |
      #| Emblem Payer Users  |
      | emblemachrpfin@yopmail.com         | Dashboards |
      #| Multiple Payer Users|
      | multipayerachrpfin@yopmail.com     | Dashboards |