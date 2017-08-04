Feature: User Only See Reports of the particular participant

Scenario Outline: Before Adding Penn participant user should see reports of PGP,Model 2 and RPFIN for Medicare payer users

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
    And I wait for 20000 milli seconds
     And I switch to reports embedded iframe
    Then I should see "Overall Program" appearing under program overview reports
    And I navigate back
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title
    And I wait to see "Dashboards" under reports tile text

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues         |
      | Inpatient Episode Clearing |

    When I click on "Episode DRG Issues" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait untill refresh button is disappeared
    Then I should see "Episode DRG Issues" in the Episode DRG Issues Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Patient ID" under reports tile text
        
    When I click on the Reports Tile with text "<Menu 2>"
    When I click on "Inpatient Episode Clearing" reports text for "Patient ID" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait untill refresh button is disappeared
    Then I should see "InPatient Episode Clearing" in the Inpatient Episode Clearing Patient ID report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Post Acute Care" under reports tile text

    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Summary |
      
    When I click on "Initial SNF Length of Stay Summary" reports text for "Post Acute Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait untill refresh button is disappeared
    Then I should see "SNF LOS Summary" in the Post Acute Care report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Next Site of Care" under reports tile text
    
    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Summary |

    When I click on "Next Site of Care Summary" reports text for "Next Site of Care" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait untill refresh button is disappeared
    Then I should see "Next Site of Care Summary" in the Next Site of Care Summary NSOC report page header
    And I navigate back
    Then I verify current page "Reports" title
    And I wait to see "Readmissions" under reports tile text
    
    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |

    When I click on "Readmissions" reports text for "Readmissions" report tile
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    And I wait untill refresh button is disappeared
    Then I should see "Readmissions EC" in the Readmissions Readmission report page header
    And I navigate back
    Then I verify current page "Reports" title

    Examples:
      | email                       | Menu 1     | Menu 2     | Menu 3          | Menu 4            | Menu 5       |
      | shutestjul15440p@yopmail.com| Dashboards | Patient ID | Post Acute Care | Next Site of Care | Readmissions |
