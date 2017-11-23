Feature: Readmission Model3 report verification

  Scenario Outline: <role> role user with <facility> facility should have the default filters appearing under readmissions model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions [Model 3]" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify anchor post acute admission year "Anchor Post Acute Admission Year includes previous Anchor Post Acute Admission Year and current Anchor Post Acute Admission Year" is preselected under nsoc model3 report

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
     
  Scenario Outline: <role> role user with <facility> facility should see default measures as per the requirement under readmissions model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions [Model 3]" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-layout-icon button
    Then I should see "# Episodes" under "measures" field
    Then I should see "% Eps w Readmit" under "measures" field
    Then I should see "Readmits per Eps" under "measures" field
    Then I should see "% Eps w Readmit w/in 7 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 15 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 30 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 60 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 90 days" under "measures" field

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
      
  Scenario Outline: <role> role user with <facility> facility should see default dimensions as per the requirement under readmissions model3 report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions [Model 3]" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-layout-icon button
    Then I should see "Participant" under "dimensions" field
    Then I should see "Episode Initiator" under "dimensions" field
    Then I should see "Anchor Post Acute Admission Month" under "dimensions" field

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
      
  Scenario Outline: Verify that the Model field in Readmissions [Model 3] report is draggable and should not see model2 and filter the values for model3 for user with <role> role for <facility> facility
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions [Model 3]" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click on field-layout-icon button
    #Drag and Drop Verify
    When I click to "Model" field filter under "Model" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I should see "Model" is added in layout section after clicking on add to report
    Then I verify "Model" field is appearing in the report table after clicking on add to report
    #Fitering Part for Model filter to see only model2 and not model3
    When I click to "Model" field filter under "Model" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Model" in the header text of filter page
    And I should see "3" in the filter value list
    And I should not see "2" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "3" result in "Episode Initiator" field column for "Episode Initiator" filter field

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
      
  Scenario Outline: User with <model> and having <facility> facility should not see Readmissions Model3 report under nsoc
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    And I should not see Report with text as "Readmissions [Model 3]"

    Examples: 
      | email                         | faclity | model  |
      | shutestauf171115a@yopmail.com | PGP     | Model3 |
      | shutestaug231132a@yopmail.com | ACH     | Model2 |
      | shutestaug15252p@yopmail.com  | PGP     | Model2 | 
      
  Scenario Outline: Validate that the changes made to the Global Filters are reflected and applied to the Readmission [Model 3] report for user with <role> role for <facility> facility
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions [Model 3]" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I switch to default window from iframe
    Then I verify "Readmissions [Model 3]" in the reports header page
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Payer" filter is appearing under global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I click on <payer1> checkbox under payer for global filters
    Then I click on <participant1> checkbox under participant for global filters
    Then I click on <episode initiator1> checkbox under episode initiator for global filters
    Then I click on <anchor facility1> checkbox under anchor facility for global filters
    And I verify <payer1> is appearing under applied payer on global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    Then I verify dashboard anchor ccn filter is selected with <ccn1> under selected filters
    Then I verify payer filter is selected with <payer1> under selected filters

    Examples: 
      | email                                 | role     | facility    | participant1                                 | episode initiator1                           | anchor facility1                     | participantid1 | bpid1    | ccn1   | payer1   |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         | Saber Health                                 | Amberwood Manor                              | Amberwood Manor                      |         442527 | 3056-y63 | 366253 | Medicare |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         | Visiting Nurse Service of New York Home Care | Visiting Nurse Service of New York Home Care | Vns Of Ny Home Care Chha (manhattan) |         789001 | 3056-003 | 337008 | Medicare |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         | Saber Health                                 | Amberwood Manor                              | Amberwood Manor                      |         442527 | 3056-y63 | 366253 | Medicare |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         | Visiting Nurse Service of New York Home Care | Visiting Nurse Service of New York Home Care | Vns Of Ny Home Care Chha (manhattan) |         789001 | 3056-003 | 337008 | Medicare |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         | Saber Health                                 | Amberwood Manor                              | Amberwood Manor                      |         442527 | 3056-y63 | 366253 | Medicare |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         | Visiting Nurse Service of New York Home Care | Visiting Nurse Service of New York Home Care | Vns Of Ny Home Care Chha (manhattan) |         789001 | 3056-003 | 337008 | Medicare |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         | Saber Health                                 | Amberwood Manor                              | Amberwood Manor                      |         442527 | 3056-y63 | 366253 | Medicare |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         | Visiting Nurse Service of New York Home Care | Visiting Nurse Service of New York Home Care | Vns Of Ny Home Care Chha (manhattan) |         789001 | 3056-003 | 337008 | Medicare |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         | Saber Health                                 | Amberwood Manor                              | Amberwood Manor                      |         442527 | 3056-y63 | 366253 | Medicare |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         | Visiting Nurse Service of New York Home Care | Visiting Nurse Service of New York Home Care | Vns Of Ny Home Care Chha (manhattan) |         789001 | 3056-003 | 337008 | Medicare |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         | Saber Health                                 | Amberwood Manor                              | Amberwood Manor                      |         442527 | 3056-y63 | 366253 | Medicare |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         | Visiting Nurse Service of New York Home Care | Visiting Nurse Service of New York Home Care | Vns Of Ny Home Care Chha (manhattan) |         789001 | 3056-003 | 337008 | Medicare |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA | Saber Health                                 | Amberwood Manor                              | Amberwood Manor                      |         442527 | 3056-y63 | 366253 | Medicare |
      
  Scenario Outline: Validate the On-boarding status field values on the Readmissions [Model 3] report and filters for user with <role> role for <facility> facility
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions [Model 3]" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC [Model 3]" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Onboarding Status" field filter under "Onboarding Status" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Onboarding Status" in the header text of filter page
    And I should see "<onboardingstatus1>" in the filter value list
    And I should see "<onboardingstatus2>" in the filter value list
    And I should see "<onboardingstatus3>" in the filter value list
    And I click on "<onboardingstatus1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<onboardingstatus1>" result in "Onboarding Status" field column for "Onboarding Status" filter field

    Examples: 
      | email                                 | role     | facility    | onboardingstatus1 | onboardingstatus2 | onboardingstatus3 |
      | RPFINM3SNFSaberHealth@yopmail.com     | RPFIN    | SNF         | Needs Onboarding  | Onboarded         | Unknown           |
      | RPFINM3HHAVisitingQA@yopmail.com      | RPFIN    | HHA         | Unknown           |                   |                   |
      | OPSFINM3SNFSaberHealth@yopmail.com    | OPSFIN   | SNF         | Needs Onboarding  | Onboarded         | Unknown           |
      | OPSFINM3HHAVisiting@yopmail.com       | OPSFIN   | HHA         | Unknown           |                   |                   |
      | RPNOFINM3SNFSaberHealth@yopmail.com   | RPNOFIN  | SNF         | Needs Onboarding  | Onboarded         | Unknown           |
      | RPNOFINM3HHAVisitingQA@yopmail.com    | RPNOFIN  | HHA         | Unknown           |                   |                   |
      | OPSNOFINM3SNFSabHe@yopmail.com        | OPSNOFIN | SNF         | Needs Onboarding  | Onboarded         | Unknown           |
      | OPSNOFINM3HHAVisitingQA@yopmail.com   | OPSNOFIN | HHA         | Unknown           |                   |                   |
      | OPSSPENDM3SNFSaberHealth@yopmail.com  | OPSSPEND | SNF         | Needs Onboarding  | Onboarded         | Unknown           |
      | OPSPENDM3HHAVisitingQA@yopmail.com    | OPSPEND  | HHA         | Unknown           |                   |                   |
      | ECREPORTSM3SNFSaberHealth@yopmail.com | ECREPORT | SNF         | Needs Onboarding  | Onboarded         | Unknown           |
      | ECREPORTSM3HHAVisitingQA@yopmail.com  | ECREPORT | HHA         | Unknown           |                   |                   |
      | RPFINM3HHASNFVisitQA@yopmail.com      | RPFIN    | SNF and HHA | Needs Onboarding  | Onboarded         | Unknown           |