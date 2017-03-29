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

    Then I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Dashboards reports
      | Program Overview |

    When I click on "Program Overview" reports text for "Dashboards" report tile
    And I wait for 10000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Patient ID reports
      | Episode Data Issues Detail         |
      | Episode with DRG Issue             |
      | Episode Avg Days to DRG            |
      | Inpatient Episode Clearing         |

    When I click on "Episode Data Issues Detail" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Data Issues" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Episode with DRG Issue" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode DRG Issues" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Episode Avg Days to DRG" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Average Days to DRG" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Inpatient Episode Clearing Admits/Discharges in the last 1 Year" in the Episode Data Issues Patient ID report page header
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
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
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
     #Then I should see "Next Site of Care Detail" in the Next Site of Care Detail NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Next Site of Care Summary" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |

    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      | email                         | Menu 1     | Menu 2     | Menu 3          | Menu 4 | Menu 5       |
      | shutestaug15252p@yopmail.com  | Dashboards | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestaug15220p@yopmail.com  | Dashboards | Patient ID | Post Acute Care | NSoC   | Readmissions |

  Scenario Outline: For PGP MODEL 2 OPSFIN,OPSNOFIN,OPSSPEND and ECReports verify the respective reports link as per the user permissions
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
    And I wait for 10000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Patient ID reports
      | Episode Data Issues Detail         |
      | Episode with DRG Issue             |
      | Episode Avg Days to DRG            |
      | Inpatient Episode Clearing         |

    When I click on "Episode Data Issues Detail" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Data Issues" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Episode with DRG Issue" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode DRG Issues" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Episode Avg Days to DRG" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Average Days to DRG" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Inpatient Episode Clearing Admits/Discharges in the last 1 Year" in the Episode Data Issues Patient ID report page header
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
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
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
     #Then I should see "Next Site of Care Detail" in the Next Site of Care Detail NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Next Site of Care Summary" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |

    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      | email                         | Menu 1     | Menu 2     | Menu 3          | Menu 4 | Menu 5       |
      | shutestaug26212p@yopmail.com  | Dashboards | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestjul26420p@yopmail.com  | Dashboards | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestjul26415@yopmail.com   | Dashboards | Patient ID | Post Acute Care | NSoC   | Readmissions |
      | shutestaug221150a@yopmail.com | Dashboards | Patient ID | Post Acute Care | NSoC   | Readmissions |
      
  Scenario Outline: For PGP MODEL 3 RPFIN, RPNOFIN OPSFIN and OPSNOFIN reports link verification for the respective reports links functionality
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds

    When I click on the "Reports" tile
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait for 2000 milli seconds

    And I should see Reports Tile text as <Menu 1>
    When I click on the Reports Tile with text "<Menu 1>"
    Then I should see following Reports text for Patient ID reports
      | Episode Data Issues Detail         |
      | Episode Avg Days to DRG            |
      | Inpatient Episode Clearing         |

    When I click on "Episode Data Issues Detail" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
     And I wait for 2000 milli seconds
    Then I should see "Episode Data Issues" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 1>"
    When I click on "Episode Avg Days to DRG" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Average Days to DRG" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 1>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Inpatient Episode Clearing Admits/Discharges in the last 1 Year" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Detail  |
      | Next Site of Care Summary |

    When I click on "Next Site of Care Detail" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
     #Then I should see "Next Site of Care Detail" in the Next Site of Care Detail NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Next Site of Care Summary" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
      | email                         | Menu 1     | Menu 2 |
      | shutestauf171115a@yopmail.com | Patient ID | NSoC   |
      | shutestjul24430@yopmail.com   | Patient ID | NSoC   |
      | shutestagu22945am@yopmail.com | Patient ID | NSoC   |
      | shutestjul24340p@yopmail.com  | Patient ID | NSoC   |     
  