Feature: M3 EC Next site of care summary report verification.

  Scenario Outline: User should see only model3 reports not other reports for snf and hha users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    Then I should see Reports Tile text as Patient ID
    Then I should see Reports Tile text as Next Site of Care
    Then I should see Reports Tile text as Readmissions
    And I should not see Reports Tile text as "Dashboards"
    And I should not see Reports Tile text as "Overall Program"
    And I should not see Reports Tile text as "Physician"
    And I should not see Reports Tile text as "Post Acute Care"
    When I click on the Reports Tile with text "Patient ID"
    Then I should see following Reports text for Patient ID reports
      | Episode DRG Issues [Model 3]         |
      | InPatient Episode Clearing [Model 3] |
    Then I should not see "Episode DRG Issues" report after clicking on patient id
    Then I should not see "InPatient Episode Clearing" report after clicking on patient id
    When I click on the Reports Tile with text "Next Site of Care"
    Then I should see following Reports text for NSoC reports
      | Next Site of Care Summary [Model 3] |
    Then I should not see "CARL" report after clicking on next site of care
    Then I should not see "Next Site of Care Summary" report after clicking on next site of care
    When I click on the Reports Tile with text "Readmissions"
    Then I should see following Reports text for Readmissions reports
      | Readmissions [Model 3] |
    Then I should not see "Readmissions" report after clicking on readmissions
    Then I should not see "Readmissions (Claims)" report after clicking on readmissions

    Examples: 
      | email                             |
      | RPFINM3SNFSaberHealth@yopmail.com |
      | RPFINM3HHAVisitingQA@yopmail.com  |

  Scenario Outline: User should have the default filters appearing under nsoc model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary [Model 3]" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify anchor post acute admission year "Anchor Post Acute Admission Year includes previous Anchor Post Acute Admission Year and current Anchor Post Acute Admission Year" is preselected under nsoc model3 report
    Then I verify isAnchorAdmission filter having "isAnchorAdmission includes 1" under preselected nsoc model3 filter

    Examples: 
      | email                             |
      | RPFINM3SNFSaberHealth@yopmail.com |
      | RPFINM3HHAVisitingQA@yopmail.com  |
