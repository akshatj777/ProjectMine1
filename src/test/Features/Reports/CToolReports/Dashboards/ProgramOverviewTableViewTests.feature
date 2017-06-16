Feature: Verification of multiple test scenarios for table view

  Scenario Outline: User should be able to collapse overall program,post acute,snf los and readmission tables
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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    Then I click on "Table" button for view filter under filter options
    And I wait for 10000 milli seconds
    Then I should see "Overall Program" under program overview reports
    And I click on "Overall Program" under program overview reports
    Then I should see "Post Acute Utilization" under program overview reports
    And I click on "Post Acute Utilization" under program overview reports
    And I wait for 2000 milli seconds
    Then I should see "SNF Length of Stay" under program overview reports
    And I click on "SNF Length of Stay" under program overview reports
    Then I should see "Readmissions" under program overview reports
    And I click on "Readmissions" under program overview reports

    Examples: 
      | email                         | Menu 1     |
      | shutestaug231132a@yopmail.com | Dashboards |

  Scenario Outline: Verification of claims and ec data in a single table when user selects both claims and episode conect data
                    for overall program tables

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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    Then I click on "Table" button for view filter under filter options
    And I wait for 10000 milli seconds
    Then I select "Episode Connect" radio button under data source filter
    And I wait for 10000 milli seconds
    Then I verify "Claims & EC:" is appearing under overall program table view data
    Then I should see ec data is appearing with color "<Blue>" for episodes column under overall program
    Then I should see claims data is appearing with color "<Green>" for episodes column under overall program

    Examples: 
      | email                         | Menu 1     | Blue    | Green   |
      | shutestaug231132a@yopmail.com | Dashboards | #1F78B4 | #2BA02D |

  Scenario Outline: Verification of claims and ec data in a single table when user selects both claims and episode conect data
                    for post acute utilization tables

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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    Then I click on "Table" button for view filter under filter options
    And I wait for 10000 milli seconds
    And I click on "Overall Program" under program overview reports
    Then I select "Episode Connect" radio button under data source filter
    And I wait for 10000 milli seconds
    Then I verify "Claims & EC :" is appearing under post acute utilization table view data
    Then I should see ec data is appearing with color "<Blue>" for all columns under post acute utilization
    Then I should see claims data is appearing with color "<Green>" for all columns under post acute utilization

    Examples: 
      | email                         | Menu 1     | Blue    | Green   |
      | shutestaug231132a@yopmail.com | Dashboards | #1F78B4 | #2BA02D |

  Scenario Outline: Verification of claims and ec data in a single table when user selects both claims and episode conect data
                    for snf length of stay tables

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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    Then I click on "Table" button for view filter under filter options
    And I wait for 10000 milli seconds
    And I click on "Overall Program" under program overview reports
    And I click on "Post Acute Utilization" under program overview reports
    And I wait for 2000 milli seconds
    Then I select "Episode Connect" radio button under data source filter
    And I wait for 10000 milli seconds
    Then I verify "Claims & EC:" is appearing under snf length of stay table view data
    Then I should see ec data is appearing with color "<Blue>" for all columns under snf length of stay
    Then I should see claims data is appearing with color "<Green>" for all columns under snf length of stay

    Examples: 
      | email                         | Menu 1     | Blue    | Green   |
      | shutestaug231132a@yopmail.com | Dashboards | #1F78B4 | #2BA02D |

  Scenario Outline: Verification of claims and ec data in a single table when user selects both claims and episode conect data
                    for readmissions tables

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
    And I wait for 60000 milli seconds
    And I switch to reports embedded iframe
    Then I click on "Table" button for view filter under filter options
    And I wait for 10000 milli seconds
    And I click on "Overall Program" under program overview reports
    And I click on "Post Acute Utilization" under program overview reports
    And I wait for 2000 milli seconds
    Then I select "Episode Connect" radio button under data source filter
    And I wait for 10000 milli seconds
    Then I verify "Claims & EC:" is appearing under readmissions table view data
    Then I should see ec data is appearing with color "<Blue>" for all columns under readmissions
    Then I should see claims data is appearing with color "<Green>" for all columns under readmissions

    Examples: 
      | email                         | Menu 1     | Blue    | Green   |
      | shutestaug231132a@yopmail.com | Dashboards | #1F78B4 | #2BA02D |
