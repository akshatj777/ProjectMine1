Feature: User only see reports per report tiles based on their role (external and internal roles),facility and model

  Scenario Outline: For RPFIN, RPNOFIN verify the respective reports links functionality
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

    And I should see Reports Tile text as <Menu 2>
    When I click on the Reports Tile with text "<Menu 2>"
    Then I should see following Reports text for Overall Program reports
      | Performance (Claims)           |
      | Financial Performance (Claims) |
      | Spending (Claims)              |

    And I should see Reports Tile text as <Menu 3>
    When I click on the Reports Tile with text "<Menu 3>"
    Then I should see following Reports text for Patient ID reports
      | Episode Data Issues Detail         |
      | Episode with DRG Issue             |
      | Episode Avg Days to DRG            |
      | Inpatient Episode Clearing         |
      | Inpatient Episode Clearing Summary |

    And I should see Reports Tile text as <Menu 4>
    When I click on the Reports Tile with text "<Menu 4>"
    Then I should see following Reports text for Post Acute Care reports
      | Initial SNF Length of Stay Detail  |
      | Initial SNF Length of Stay Summary |
      | SNF Performance (Claims)           |
      | SNF Volume (Claims)                |
      | Post Acute Care (Claims)           |

    And I should see Reports Tile text as <Menu 5>
    When I click on the Reports Tile with text "<Menu 5>"
    Then I should see following Reports text for Physician reports
      | Performance (Claims) |
      | Volume (Claims)      |
      | Spending (Claims)    |

    And I should see Reports Tile text as <Menu 6>
    When I click on the Reports Tile with text "<Menu 6>"
    Then I should see following Reports text for NSoC reports
      | CARL                      |
      | Next Site of Care Detail  |
      | Next Site of Care Summary |

    And I should see Reports Tile text as <Menu 7>
    When I click on the Reports Tile with text "<Menu 7>"
    Then I should see following Reports text for Readmissions reports
      | Readmissions          |
      | Readmissions (Claims) |

    Examples:
      | email                         | Menu 1     | Menu 2          | Menu 3     | Menu 4          | Menu 5    | Menu 6 | Menu 7       |
      | shutestaug231132a@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Physician | NSoC   | Readmissions |
      | shutestaug221130a@yopmail.com | Dashboards | Overall Program | Patient ID | Post Acute Care | Physician | NSoC   | Readmissions |
