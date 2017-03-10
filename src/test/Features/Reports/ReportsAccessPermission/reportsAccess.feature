Feature: User only see reports per report tiles based on their role (external and internal roles),PGP MODEL 2 facility

  Scenario Outline: For PGP MODEL 2 RPFIN, RPNOFIN reports link verification for the respective reports links functionality
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    # Referring REP-2627, Dashboard>Operations should not be displayed
    # Then I should see Reports Tile text as <Menu 1>
    # When I click on the Reports Tile with text "<Menu 1>"
    # Then I should see following Reports text for Dashboards reports
    #   | Operations |
    # When I click on "Operations" reports text for "Dashboards" report tile
    # And I wait for 2000 milli seconds
    # And I switch to reports embedded iframe
    # Then I should see "Operations Dashboard" in the Operations Dashboard report page header
    # And I navigate back
    # And I wait for 1000 milli seconds
    # Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Patient ID reports
      | Episode Data Issues Detail |
      | Episode with DRG Issue     |
      | Episode Avg Days to DRG    |
      | Inpatient Episode Clearing |
      # | Inpatient Episode Clearing Summary | This should not appear
      | Episode DRG Issues         |
    # The above option should have been added
    When I click on "Episode Data Issues Detail" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Episode Data Issues" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Detail  |
      | Initial SNF Length of Stay Summary |
    When I click on "Initial SNF Length of Stay Detail" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "SNF LOS Detail" in the SNF LOS Detail Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Detail  |
      | Next Site of Care Summary |
    When I click on "Next Site of Care Detail" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Next Site of Care Detail Click on Prompts at top to select Participant" in the CARL NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions |
    # | Readmissions (Claims) | This should not be displayed
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples: 
      | email                        | Menu 2     | Menu 3          | Menu 4 | Menu 5       |
      | shutestaug15252p@yopmail.com | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestaug15220p@yopmail.com | Patient ID | Post Acute Care | NSoC   | Readmissions |

  Scenario Outline: For PGP MODEL 2 OPSFIN, OPSNOFIN, OPSSPEND and ECReports reports link verification for the respective reports links functionality
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    # Referring REP-2627, Dashboard>Operations should not be displayed
    # Then I should see Reports Tile text as <Menu 1>
    # When I click on the Reports Tile with text "<Menu 1>"
    # Then I should see following Reports text for Dashboards reports
    #  | Operations |
    #  When I click on "Operations" reports text for "Dashboards" report tile
    #  And I wait for 2000 milli seconds
    #  And I switch to reports embedded iframe
    #  Then I should see "Operations Dashboard" in the Operations Dashboard report page header
    #  And I navigate back
    #  And I wait for 1000 milli seconds
    #  Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Patient ID reports
      | Episode Data Issues Detail |
      | Episode with DRG Issue     |
      | Episode Avg Days to DRG    |
      | Inpatient Episode Clearing |
      | Episode DRG Issues         |
    # The above option was earlier not added
    When I click on "Episode Data Issues Detail" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Episode Data Issues" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Detail  |
      | Initial SNF Length of Stay Summary |
    When I click on "Initial SNF Length of Stay Detail" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "SNF LOS Detail" in the SNF LOS Detail Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Detail  |
      | Next Site of Care Summary |
    When I click on "Next Site of Care Detail" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Next Site of Care Detail Click on Prompts at top to select Participant" in the CARL NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions |
    #| Readmissions (Claims) |This should not be displayed
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples: 
      | email                         | Menu 2     | Menu 3          | Menu 4 | Menu 5       |
      | shutestaug26212p@yopmail.com  | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestjul26420p@yopmail.com  | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestjul26415@yopmail.com   | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestaug221150a@yopmail.com | Patient ID | Post Acute Care | NSoC   | Readmissions |

  Scenario: System should direct to the login page if a user tries to access the report directly through url
    Given I am on the login page
    And I go to "https://cdn-qa.remedypartners.com/reports/index.html#/reports/physician/performance-(claims)?url=pentaho%2Fapi%2Frepos%2F%253Apublic%253AClaims%253Arelease%253APhysician%20Performance.xanalyzer%2Feditor" page
    Then I wait for 2000 milli seconds
    And I should see Log in widget
