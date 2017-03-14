Feature: User only see reports per report tiles based on their role (external and internal roles),PGP MODEL 3 facility

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
      | Episode DRG Issues                 |

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