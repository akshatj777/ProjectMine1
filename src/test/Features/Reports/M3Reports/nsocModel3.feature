Feature: M3 EC Next site of care summary report verification.

  Scenario Outline: <role> role user with <facility> facility should see only model3 reports not other reports.
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
      | email                                 | role     | facility    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA |

  Scenario Outline: <role> role user with <facility> facility should have the default filters appearing under nsoc model3 report
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
      | email                                 | role     | facility    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA |

  Scenario Outline: <role> role user with <facility> facility should see default measures as per the requirement
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
    When I click on field-layout-icon button
    Then I should see "# Episodes" under "measures" field

    Examples: 
      | email                                 | role     | facility    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA |

  Scenario Outline: <role> role user with <facility> facility should see only 3 value under model filter in nsoc model3 report
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
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Model" field filter under "Model" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Model" in the header text of filter page
    And I should see "3" in the filter value list
    And I should not see "2" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                                 | role     | facility    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA |

  Scenario Outline: <role> role user with <facility> facility should see default columns as per the requirement
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
    When I click on field-layout-icon button
    Then I should see "Anchor Post Acute Admission Month" under "clomuns" field

    Examples: 
      | email                                 | role     | facility    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA |

  Scenario Outline: <role> role user with <facility> facility should see default dimensions as per the requirement
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
    When I click on field-layout-icon button
    Then I should see "Participant" under "dimensions" field
    Then I should see "Episode Initiator" under "dimensions" field
    #As per the comments in REP-3942 ticket added episode initiator field for internal users will add anchor post acute provider field while automating external users
    Then I should see "Anchor Post Acute Discharge Care Setting" under "dimensions" field
    Then I should see "Anchor Post Acute Discharge Care Type" under "dimensions" field

    Examples: 
      | email                                 | role     | facility    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA |

  Scenario Outline: <role> role user with <facility> facility should see all columns as per the requirement should be there in drill through
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
    Then I click on a number under episodes column of nsoc model3 report
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Provider" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Provider CCN" is appearing under Episodes table
    Then I should verify "Eligibility" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Patient" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "DOD" is appearing under Episodes table
    Then I should verify "Episode Status" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "Bundle DRG Code" is appearing under Episodes table
    Then I should verify "Bundle DRG Status" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Setting" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Type" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Type Detail (EC)" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Type Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Care Setting Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Admit Date" is appearing under Episodes table
    Then I should verify "Anchor Post Acute Discharge Date" is appearing under Episodes table
    Then I should verify "Eps w Readmits" is appearing under Episodes table
    Then I should verify "Total Readmits" is appearing under Episodes table

    Examples: 
      | email                                 | role     | facility    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA |

  Scenario Outline: User with <model> and having <facility> facility should not see Nsoc Model3 report under nsoc
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    And I should not see Report with text as "Next Site of Care Summary [Model 3]"

    Examples: 
      | email                         | faclity | model  |
      | shutestauf171115a@yopmail.com | PGP     | Model3 |
      | shutestaug231132a@yopmail.com | ACH     | Model2 |
      | shutestaug15252p@yopmail.com  | PGP     | Model2 |

  Scenario Outline: User with <role> role and having <facillity> facility should be able to validate participant field value for NSOC Model3 report
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
    When I click on field-panel-icon button
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant" in the header text of filter page
    And I should see "<participant1>" in the filter value list
    And I should see "<participant2>" in the filter value list
    And I click on "<participant1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<participant1>" result in "Participant" field column for "Episode Initiator" filter field

    Examples: 
      | email                                 | role     | facility    | participant1                           | participant2                           |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         | Saber Health                           |                                        |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         | Visiting Nurse Service of NY Home Care |                                        |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         | Saber Health                           |                                        |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         | Visiting Nurse Service of NY Home Care |                                        |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         | Saber Health                           |                                        |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         | Visiting Nurse Service of NY Home Care |                                        |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         | Saber Health                           |                                        |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         | Visiting Nurse Service of NY Home Care |                                        |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         | Saber Health                           |                                        |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         | Visiting Nurse Service of NY Home Care |                                        |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         | Saber Health                           |                                        |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         | Visiting Nurse Service of NY Home Care |                                        |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA | Saber Health                           | Visiting Nurse Service of NY Home Care |

  Scenario Outline: User with <role> role and having <facillity> facility should be able to validate bpid field value for NSOC Model3 report
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
    When I click on field-panel-icon button
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I should see "<BPID2>" in the filter value list
    And I should see "<BPID3>" in the filter value list
    And I should see "<BPID4>" in the filter value list
    And I should see "<BPID5>" in the filter value list
    And I should see "<BPID6>" in the filter value list
    And I should see "<BPID7>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<BPID1>" result in "BPID" field column for "Episode Initiator" filter field

    Examples: 
      | email                                 | role     | facility    | BPID1    | BPID2    | BPID3    | BPID4    | BPID5    | BPID6    | BPID7    |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         | 3056-y63 | 3056-y67 | 3056-y68 | 3056-y85 | 3056-y95 | 3056-y98 | 3056-z13 |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         | 3056-003 |          |          |          |          |          |          |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         | 3056-y63 | 3056-y67 | 3056-y95 | 3056-z13 |          |          |          |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         | 3056-003 |          |          |          |          |          |          |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         | 3056-y63 | 3056-y67 | 3056-y95 | 3056-z13 |          |          |          |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         | 3056-003 |          |          |          |          |          |          |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         | 3056-y63 | 3056-y67 | 3056-y95 | 3056-z13 |          |          |          |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         | 3056-003 |          |          |          |          |          |          |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         | 3056-y63 | 3056-y67 | 3056-y95 | 3056-z13 |          |          |          |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         | 3056-003 |          |          |          |          |          |          |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         | 3056-y63 | 3056-y67 | 3056-y95 | 3056-z13 |          |          |          |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         | 3056-003 |          |          |          |          |          |          |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA | 3056-003 | 3056-y63 | 3056-y67 | 3056-y95 | 3056-z13 |          |          |

  Scenario Outline: User with <role> role and having <facillity> facility should be able to validate ccn field value for NSOC Model3 report in frontend and database
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
    When I click on field-panel-icon button
    When I click to "CCN" field filter under "Dashboard - Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Dashboard - Anchor CCN" in the header text of filter page
    And I should see "<CCN>" in the value list after selecting filter
    And I click on "<CCN1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<CCN1>" result in "CCN" field column for "Anchor Facility" filter field
    Then User executes query
      """
      select ccn from atlas.pentahoUserRoles 
      where username in ('<email>')
      limit 100;
      """
    And verify the data which is fetched from database for <CCN> from "ccn" column

    Examples: 
      | email                                 | role     | facility    | CCN                                              | CCN1   |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         | 366253,495401,345557,495411,495407,366403,366395 | 366253 |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         | 337008                                           | 337008 |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         | 345557,366253,495401,495411                      | 366253 |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         | 337008                                           | 337008 |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         | 345557,366253,495401,495411                      | 366253 |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         | 337008                                           | 337008 |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         | 345557,366253,495401,495411                      | 366253 |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         | 337008                                           | 337008 |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         | 345557,366253,495401,495411                      | 366253 |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         | 337008                                           | 337008 |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         | 345557,366253,495401,495411                      | 366253 |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         | 337008                                           | 337008 |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA | 337008,345557,366253,495401,495411               | 366253 |

  Scenario Outline: User with <role> role and having <facillity> facility should be able to validate episode initiator field value for NSOC Model3 report in frontend and database
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
    When I click on field-panel-icon button
    When I click to "Episode Initiator" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Episode Initiator" in the header text of filter page
    And I should see "<episodeInitiators>" in the value list after selecting filter
    And I click on "<episodeInitiator>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<episodeInitiator>" result in "Episode Initiator" field column for "Episode Initiator" filter field
    Then User executes query
      """
      SELECT GROUP_CONCAT(episodeInitiatorNameInitCap) as episodeinitiator
      FROM warehouse.dimEpisodeInitiator where bpid in ('<BPID>');
      """
    And verify the data which is fetched from database for <episodeInitiators> from "episodeinitiator" column

    Examples: 
      | email                                 | role     | facility    | episodeInitiators                                                                                                                        | BPID                                                                       | episodeInitiator                             |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         | Amberwood Manor,Azalea Health,Bath Creek Health,Falls Run Nursing,Liberty Ridge Health,Brecksville Health,Tyler's Retreat At Iron Bridge | 3056-y63','3056-y67','3056-y68','3056-y85','3056-y95','3056-y98','3056-z13 | Amberwood Manor                              |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         | Visiting Nurse Service Of New York Home Care                                                                                             | 3056-003                                                                   | Visiting Nurse Service Of New York Home Care |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         | Amberwood Manor,Azalea Health,Liberty Ridge Health,Tyler's Retreat At Iron Bridge                                                        | 3056-y63','3056-y67','3056-y95','3056-z13                                  | Amberwood Manor                              |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         | Visiting Nurse Service Of New York Home Care                                                                                             | 3056-003                                                                   | Visiting Nurse Service Of New York Home Care |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         | Amberwood Manor,Azalea Health,Liberty Ridge Health,Tyler's Retreat At Iron Bridge                                                        | 3056-y63','3056-y67','3056-y95','3056-z13                                  | Amberwood Manor                              |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         | Visiting Nurse Service Of New York Home Care                                                                                             | 3056-003                                                                   | Visiting Nurse Service Of New York Home Care |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         | Amberwood Manor,Azalea Health,Liberty Ridge Health,Tyler's Retreat At Iron Bridge                                                        | 3056-y63','3056-y67','3056-y95','3056-z13                                  | Amberwood Manor                              |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         | Visiting Nurse Service Of New York Home Care                                                                                             | 3056-003                                                                   | Visiting Nurse Service Of New York Home Care |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         | Amberwood Manor,Azalea Health,Liberty Ridge Health,Tyler's Retreat At Iron Bridge                                                        | 3056-y63','3056-y67','3056-y95','3056-z13                                  | Amberwood Manor                              |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         | Visiting Nurse Service Of New York Home Care                                                                                             | 3056-003                                                                   | Visiting Nurse Service Of New York Home Care |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         | Amberwood Manor,Azalea Health,Liberty Ridge Health,Tyler's Retreat At Iron Bridge                                                        | 3056-y63','3056-y67','3056-y95','3056-z13                                  | Amberwood Manor                              |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         | Visiting Nurse Service Of New York Home Care                                                                                             | 3056-003                                                                   | Visiting Nurse Service Of New York Home Care |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA | Visiting Nurse Service Of New York Home Care,Amberwood Manor,Azalea Health,Liberty Ridge Health,Tyler's Retreat At Iron Bridge           | 3056-003','3056-y63','3056-y67','3056-y95','3056-z13                       | Amberwood Manor                              |