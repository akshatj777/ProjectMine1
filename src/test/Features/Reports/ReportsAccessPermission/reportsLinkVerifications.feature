Feature: User only see reports per report tiles based on their role (external and internal roles),ACH MODEL 2 facility

  Scenario Outline: For ACH MODEL 2 RPFIN, RPNOFIN reports link verification for the respective reports links functionality
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
      | Operations |

    When I click on "Operations" reports text for "Dashboards" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Operations Dashboard" in the Operations Dashboard report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims)           |
      | Financial Performance (Claims) |
      | Spending (Claims)              |

    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Financial Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Financial Performance" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Spending (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Spending" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
   
    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
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
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode with DRG Issue" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode DRG Issues" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode Avg Days to DRG" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Average Days to DRG" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Inpatient Episode Clearing Admits/Discharges in the last 1 Year" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Detail  |
      | Initial SNF Length of Stay Summary |
      | SNF Performance (Claims)           |
      | SNF Volume (Claims)                |
      | Post Acute Care (Claims)           |

    When I click on "Initial SNF Length of Stay Detail" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF LOS Detail" in the SNF LOS Detail Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "SNF Performance (Claims)" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF Performance" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "SNF Volume (Claims)" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF Volume" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Physician reports
      | Performance (Claims) |
      | Volume (Claims)      |
      | Spending (Claims)    |

    When I click on "Performance (Claims)" reports text for "Physician" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Physician Performance" in the Physician Performance Physician report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Volume (Claims)" reports text for "Physician" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Physician Volume" in the Physician Volume Physician report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Spending (Claims)" reports text for "Physician" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Physician Spending" in the Physician Spending Physician report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for NSoC reports
      | CARL                      |
      | Next Site of Care Detail  |
      | Next Site of Care Summary |

    When I click on "CARL" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "CARL" in the CARL NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Next Site of Care Detail" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
     #Then I should see "Next Site of Care Detail" in the Next Site of Care Detail NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Next Site of Care Summary" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    And I should see Reports Tile text as <Menu 7>
    When I click on the Reports Tile with text "<Menu 7>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |

    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 7>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      | email                         | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5    | Menu 6             | Menu 7       |
      | shutestaug231132a@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Physician | Next Site of Care  | Readmissions |
      | shutestaug221130a@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Physician | Next Site of Care  | Readmissions |

  Scenario Outline: For ACH MODEL 2 OPSFIN verify the respective reports link as per the user permissions
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
      | Operations |
    When I click on "Operations" reports text for "Dashboards" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Operations Dashboard" in the Operations Dashboard report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims)           |
      | Financial Performance (Claims) |
      | Spending (Claims)              |
    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Financial Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Financial Performance" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Spending (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Spending" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
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
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode with DRG Issue" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode DRG Issues" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode Avg Days to DRG" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Average Days to DRG" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Inpatient Episode Clearing Admits/Discharges in the last 1 Year" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Detail  |
      | Initial SNF Length of Stay Summary |
      | Post Acute Care (Claims)           |
    When I click on "Initial SNF Length of Stay Detail" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "SNF LOS Detail" in the SNF LOS Detail Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Detail  |
      | Next Site of Care Summary |
    When I click on "Next Site of Care Detail" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Next Site of Care Summary" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      | email                              | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5             | Menu 6       |
      | reptestachmodel2opsfin@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Next Site of Care  | Readmissions |



  Scenario Outline: For ACH MODEL 2 OPSNOFIN verify the respective reports link as per the user permissions
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
      | Operations |
    When I click on "Operations" reports text for "Dashboards" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Operations Dashboard" in the Operations Dashboard report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims)           |
    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
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
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode with DRG Issue" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode DRG Issues" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode Avg Days to DRG" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Average Days to DRG" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Inpatient Episode Clearing Admits/Discharges in the last 1 Year" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Detail  |
      | Initial SNF Length of Stay Summary |
      | Post Acute Care (Claims)           |
    When I click on "Initial SNF Length of Stay Detail" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "SNF LOS Detail" in the SNF LOS Detail Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Detail  |
      | Next Site of Care Summary |
    When I click on "Next Site of Care Detail" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Next Site of Care Summary" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    Examples:
      | email                         | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5            | Menu 6       |
      | shutestaug15240p@yopmail.com  | Dashboards | Overall Program | Patient ID | Post Acute Care | Next Site of Care | Readmissions |

  Scenario Outline: For ACH MODEL 2 OPSSPEND verify the respective reports link as per the user permissions
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
      | Operations |
    When I click on "Operations" reports text for "Dashboards" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Operations Dashboard" in the Operations Dashboard report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims)           |
      | Spending (Claims)              |
    When I click on "Performance (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Performance" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Spending (Claims)" reports text for "Overall Program" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Spending" in the Performance Overall Program report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
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
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode with DRG Issue" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode DRG Issues" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Episode Avg Days to DRG" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Episode Average Days to DRG" in the Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 3>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    #Then I should see "Inpatient Episode Clearing Admits/Discharges in the last 1 Year" in the Episode Data Issues Patient ID report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Detail  |
      | Initial SNF Length of Stay Summary |
      | Post Acute Care (Claims)           |
    When I click on "Initial SNF Length of Stay Detail" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    #Then I should see "SNF LOS Detail" in the SNF LOS Detail Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 4>"
    When I click on "Post Acute Care (Claims)" reports text for "Post Acute Care" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Post Acute Care" in the Post Acute Care report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Detail  |
      | Next Site of Care Summary |
    When I click on "Next Site of Care Detail" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 5>"
    When I click on "Next Site of Care Summary" reports text for "NSoC" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |
    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Readmissions" in the Readmissions Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 6>"
    When I click on "Readmissions (Claims)" reports text for "Readmissions" report tile
    And I wait for 2000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Readmissions Claims" in the Readmissions Claims Readmission report page header
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      | email                         | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5            | Menu 6       |
      | shutestaug221145a@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Next Site of Care | Readmissions |

  Scenario Outline: For ACH Model 2 ECReports verify the respective reports link as per the user permissions
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
      | Operations |
    When I click on "Operations" reports text for "Dashboards" report tile
    And I wait for 2000 milli seconds
    And I switch to reports embedded iframe
    Then I should see "Operations Dashboard" in the Operations Dashboard report page header
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
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    
    When I click on the Reports Tile with text "<Menu 5>"
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
      | email                         | Menu 1     | Menu 2     | Menu 3          | Menu 4             | Menu 5       |
      | repopsnofintest@yopmail.com   | Dashboards | Patient ID | Post Acute Care | Next Site of Care  | Readmissions |

