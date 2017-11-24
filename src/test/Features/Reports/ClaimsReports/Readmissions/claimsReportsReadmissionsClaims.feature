Feature: Verification of Readmissions Claims Report

  Scenario Outline: User should be able to see Measures,Levels and Preselected Filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on show all filters icon button
    Then I should see "Dashboard Admission Month is between (and includes) 2016-01 and 2017-12" is present under preselected anchor month filter
    Then I verify "Bundle Risk" filter is preselected under the filter
    Then I should see "Bundle Code includes All" is present under preselected Bundle Code filter
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "Episodes (Eps)" under "measures" field
    Then I should see "% Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "% Eps w Readmit" under "measures" field
    Then I should see "Readmit per Eps" under "measures" field
    Then I should see "Leaked Readmit per Eps (Adj Hist)" under "measures" field
    Then I should see "Leaked Readmit per Eps" under "measures" field
    Then I should see "Diff Bundle Readmit per Eps (Adj Hist)" under "measures" field
    Then I should see "Diff Bundle Readmit per Eps" under "measures" field
    Then I should see "HOME Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "HOME Eps w Readmit" under "measures" field
    Then I should see "HHA Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "HHA Eps w Readmit" under "measures" field
    Then I should see "SNF Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "SNF Eps w Readmit" under "measures" field
    Then I should see "IRF Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "IRF Eps w Readmit" under "measures" field
    Then I should see "LTCH Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "LTCH Eps w Readmit" under "measures" field
    Then I should see "Other Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "Other Eps w Readmit" under "measures" field
    Then I should see "% Eps w Readmit w/in 7 days (Adj Hist)" under "measures" field
    Then I should see "% Eps w Readmit w/in 7 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 15 days (Adj Hist)" under "measures" field
    Then I should see "% Eps w Readmit w/in 15 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 30 days (Adj Hist)" under "measures" field
    Then I should see "% Eps w Readmit w/in 30 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 60 days (Adj Hist)" under "measures" field
    Then I should see "% Eps w Readmit w/in 60 days" under "measures" field
    Then I should see "% Eps w Readmit w/in 90 days (Adj Hist)" under "measures" field
    Then I should see "% Eps w Readmit w/in 90 days" under "measures" field
    Then I should see "Anchor End Date" appearing under "level" field
    Then I should see "Anchor Facility" appearing under "level" field
    Then I should see "Anchor Facility Type" appearing under "level" field
    Then I should see "Attending Physician NPI" appearing under "level" field
    Then I should see "Attending Physician Name" appearing under "level" field
    Then I should see "Attributed Physician (4)" appearing under "level" field
    Then I should see "Attributed Physician NPI" appearing under "level" field
    Then I should see "BPID" appearing under "level" field
    Then I should see "Beneficiary First Name" appearing under "level" field
    Then I should see "Beneficiary HIC" appearing under "level" field
    Then I should see "Beneficiary Last Name" appearing under "level" field
    Then I should see "Bundle" appearing under "level" field
    Then I should see "Bundle Code" appearing under "level" field
    Then I should see "Bundle Risk" appearing under "level" field
    Then I should see "CCN" appearing under "level" field
    Then I should see "DOB" appearing under "level" field
    Then I should see "DRG" appearing under "level" field
    Then I should see "DRG Code" appearing under "level" field
    Then I should see "Dashboard - Anchor CCN" appearing under "level" field
    Then I should see "Episode Begin Date" appearing under "level" field
    Then I should see "Episode End Date" appearing under "level" field
    Then I should see "Episode Initiator" appearing under "level" field
    Then I should see "Episode End Date" appearing under "level" field
    Then I should see "Episode Initiator" appearing under "level" field
    Then I should see "MDC" appearing under "level" field
    Then I should see "Operating Physician NPI" appearing under "level" field
    Then I should see "Operating Physician Name" appearing under "level" field
    Then I should see "Participant" appearing under "level" field
    Then I should see "Participant ID" appearing under "level" field
    Then I should see "Post Acute CCN" appearing under "level" field
    Then I should see "Post Acute Category" appearing under "level" field
    Then I should see "Post Acute Facility" appearing under "level" field
    Then I should see "Post Acute Type" appearing under "level" field
    Then I should see "Readmission Admit Date 1" appearing under "level" field
    Then I should see "Readmission Admit Date 2" appearing under "level" field
    Then I should see "Readmission Admit Date 3" appearing under "level" field
    Then I should see "Readmission Admit Date 4" appearing under "level" field
    Then I should see "Readmission Admit Date 5" appearing under "level" field
    Then I should see "Readmission CCN 1" appearing under "level" field
    Then I should see "Readmission CCN 2" appearing under "level" field
    Then I should see "Readmission CCN 3" appearing under "level" field
    Then I should see "Readmission CCN 4" appearing under "level" field
    Then I should see "Readmission CCN 5" appearing under "level" field
    Then I should see "Readmission DRG 1" appearing under "level" field
    Then I should see "Readmission DRG 2" appearing under "level" field
    Then I should see "Readmission DRG 3" appearing under "level" field
    Then I should see "Readmission DRG 4" appearing under "level" field
    Then I should see "Readmission DRG 5" appearing under "level" field
    Then I should see "Readmission Discharge Date 1" appearing under "level" field
    Then I should see "Readmission Discharge Date 2" appearing under "level" field
    Then I should see "Readmission Discharge Date 3" appearing under "level" field
    Then I should see "Readmission Discharge Date 4" appearing under "level" field
    Then I should see "Readmission Discharge Date 5" appearing under "level" field
    Then I should see "Readmission Facility Name 1" appearing under "level" field
    Then I should see "Readmission Facility Name 2" appearing under "level" field
    Then I should see "Readmission Facility Name 3" appearing under "level" field
    Then I should see "Readmission Facility Name 4" appearing under "level" field
    Then I should see "Readmission Facility Name 5" appearing under "level" field
    Then I should see "Readmission PDGNS_CD 1" appearing under "level" field
    Then I should see "Readmission PDGNS_CD 2" appearing under "level" field
    Then I should see "Readmission PDGNS_CD 3" appearing under "level" field
    Then I should see "Readmission PDGNS_CD 4" appearing under "level" field
    Then I should see "Readmission PDGNS_CD 5" appearing under "level" field
    Then I should see "Network Tier" appearing under "level" field

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Emblem Payer Users            |
      | emblemachrpfin@yopmail.com     |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: Verify initial snf los is appearing and not initial snf los (adj hist) under readminssion claims report in measures available fields
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "Initial SNF LOS" in the search field textbox for filters
    And I verify "Initial SNF LOS" is appearing in the fields after searching
    And I should not see "Initial SNF LOS (Adj Hist)" in the searched results under the measures

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 and drg <DRG Code1> is able to see fracture/non fracture values when anchor admission quarter is > = 2016Q4 in readmissions claims report under readmissions
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I should see "<BPID2>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<BPID2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should see "Fracture" in the filter value list
    And I should see "Non-Fracture" in the filter value list
    And I should not see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                              | BPID1    | BPID2    | DRG Code1 | anchor admission quarter1 |
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       469 | 2017Q1                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       469 | 2017Q1                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       469 | 2017Q1                    |
      | shutestaug15240p@yopmail.com       | 2070-021 | 2070-022 |       469 | 2017Q1                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 |       469 | 2017Q1                    |
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       470 | 2017Q1                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       470 | 2017Q1                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       470 | 2017Q1                    |
      | shutestaug15240p@yopmail.com       | 2070-021 | 2070-022 |       470 | 2017Q1                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 |       470 | 2017Q1                    |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 and drg 469,470 is able to see fracture/non fracture values when anchor admission quarter is > = 2016Q4 in readmissions claims report under readmissions
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I should see "<BPID2>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<BPID2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I should see "<DRG Code2>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<DRG Code2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should see "Fracture" in the filter value list
    And I should see "Non-Fracture" in the filter value list
    And I should not see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                              | BPID1    | BPID2    | DRG Code1 | DRG Code2 | anchor admission quarter1 |
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       469 |       470 | 2017Q1                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       469 |       470 | 2017Q1                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       469 |       470 | 2017Q1                    |
      | shutestaug15240p@yopmail.com       | 2070-021 | 2070-022 |       469 |       470 | 2017Q1                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 |       469 |       470 | 2017Q1                    |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 and drg <DRG Code1> is able to see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 in readmissions claims report under readmissions
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I should see "<BPID2>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<BPID2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I should see "<anchor admission quarter2>" in the filter value list
    And I click on "<anchor admission quarter2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should not see "Fracture" in the filter value list
    And I should not see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                              | BPID1    | BPID2    | DRG Code1 | anchor admission quarter1 | anchor admission quarter2 |
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       469 | 2016Q3                    | 2016Q2                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       469 | 2016Q3                    | 2016Q2                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       469 | 2016Q3                    | 2016Q2                    |
      | shutestaug15240p@yopmail.com       | 2070-021 | 2070-022 |       469 | 2016Q3                    | 2016Q2                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 |       469 | 2016Q3                    | 2016Q2                    |
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       470 | 2016Q3                    | 2016Q2                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       470 | 2016Q3                    | 2016Q2                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       470 | 2016Q3                    | 2016Q2                    |
      | shutestaug15240p@yopmail.com       | 2070-021 | 2070-022 |       470 | 2016Q3                    | 2016Q2                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 |       470 | 2016Q3                    | 2016Q2                    |

  Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is >= 2016Q4 in readmission claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should not see "Fracture" in the filter value list
    And I should not see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                        | BPID1    | anchor admission quarter1 |
      | shutestaug15252p@yopmail.com | 6005-169 | 2016Q4                    |
      | shutestaug15220p@yopmail.com | 6005-169 | 2016Q4                    |
      | shutestaug26212p@yopmail.com | 6005-063 | 2016Q4                    |
      | shutestjul26420p@yopmail.com | 6005-169 | 2016Q4                    |
      | shutestjul26415@yopmail.com  | 6005-169 | 2016Q4                    |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 is able to see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 and drg code is not equal to 469 and 470 and drg code is not equal to 469 and 470 in readmissions claims report under readmissions
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I should see "<BPID2>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<BPID2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I should see "<DRG Code2>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<DRG Code2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should not see "Fracture" in the filter value list
    And I should not see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                              | BPID1    | BPID2    | DRG Code1 | DRG Code2 | anchor admission quarter1 |
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       216 |       217 | 2016Q4                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       216 |       217 | 2016Q4                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       216 |       217 | 2016Q4                    |
      | shutestaug15240p@yopmail.com       | 2070-021 | 2070-022 |       216 |       217 | 2016Q4                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 |       216 |       217 | 2016Q4                    |

  Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is >= 2016Q4 and drg code is not equal to 469 and 470 in readmission claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I should see "<DRG Code2>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<DRG Code2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should not see "Fracture" in the filter value list
    And I should not see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                        | BPID1    | DRG Code1 | DRG Code2 | anchor admission quarter1 |
      | shutestaug15252p@yopmail.com | 6005-169 |       242 |       243 | 2016Q4                    |
      | shutestaug15220p@yopmail.com | 6005-169 |       242 |       243 | 2016Q4                    |
      | shutestaug26212p@yopmail.com | 6005-063 |       065 |       066 | 2016Q4                    |
      | shutestjul26420p@yopmail.com | 6005-169 |       242 |       243 | 2016Q4                    |
      | shutestjul26415@yopmail.com  | 6005-169 |       242 |       243 | 2016Q4                    |

  Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 and drg code is not equal to 469 and 470 in readmission claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I should see "<DRG Code2>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<DRG Code2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "<anchor admission quarter1>" in the filter value list
    And I click on "<anchor admission quarter1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should not see "Fracture" in the filter value list
    And I should not see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                        | BPID1    | DRG Code1 | DRG Code2 | anchor admission quarter1 |
      | shutestaug15252p@yopmail.com | 6005-169 |       177 |       178 | 2016Q3                    |
      | shutestaug15220p@yopmail.com | 6005-169 |       177 |       178 | 2016Q3                    |
      | shutestaug26212p@yopmail.com | 6005-063 |       065 |       066 | 2016Q3                    |
      | shutestjul26420p@yopmail.com | 6005-169 |       177 |       178 | 2016Q3                    |
      | shutestjul26415@yopmail.com  | 6005-169 |       177 |       178 | 2016Q3                    |

  Scenario Outline: User should only see anchor admission values >= 2016Q4 when drg code selected are 469,470 and fracture and non-fracture both filters in readmission claims report under readmission
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I should see "<DRG Code2>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on "<DRG Code2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should see "Fracture" in the filter value list
    And I should see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    And I click on "Fracture" in the filter value list
    And I click on add selected in the filter modal
    And I click on "Non-Fracture" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Admission Quarter" field filter under "Anchor Begin Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Admission Quarter" in the header text of filter page
    When I click on select from list option on the filter page
    And I should see "2016Q4" in the filter value list
    And I should see "2017Q1" in the filter value list
    And I should not see "2016Q3" in the filter value list

    Examples: 
      | email                              | DRG Code1 | DRG Code2 |
      | shutestaug231132a@yopmail.com      |       469 |       470 |
      | shutestaug221130a@yopmail.com      |       469 |       470 |
      | reptestachmodel2opsfin@yopmail.com |       469 |       470 |
      | shutestaug15240p@yopmail.com       |       469 |       470 |
      | shutestaug221145a@yopmail.com      |       469 |       470 |

  Scenario Outline: User should see corresponding DRG when selected <DRG Code1> drg code in the report in snf performance report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "DRG Code" field filter under "DRG" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "DRG Code" in the header text of filter page
    And I should see "<DRG Code1>" in the filter value list
    And I click on "<DRG Code1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    When I click to "DRG" field filter under "DRG" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    Then I verify "DRG" column is added to report after selecing add to report option
    And I verify "<DRG>" is appearing in the drg column rows

    Examples: 
      | email                              | DRG Code1 | DRG                                                                |
      | shutestaug231132a@yopmail.com      |       469 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W MCC   |
      | shutestaug221130a@yopmail.com      |       469 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W MCC   |
      | reptestachmodel2opsfin@yopmail.com |       469 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W MCC   |
      | shutestaug15240p@yopmail.com       |       469 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W MCC   |
      | shutestaug221145a@yopmail.com      |       469 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W MCC   |
      | shutestaug231132a@yopmail.com      |       470 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC |
      | shutestaug221130a@yopmail.com      |       470 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC |
      | reptestachmodel2opsfin@yopmail.com |       470 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC |
      | shutestaug15240p@yopmail.com       |       470 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC |
      | shutestaug221145a@yopmail.com      |       470 | MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC |

  Scenario Outline: User should not see patient risk and onboarding status level fields in the availble fields in readmission claims report under readmissions
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "Patient Risk" in the search field textbox for filters
    And I should not see "Patient Risk" in the searched results under the levels
    And I click on clear search field element
    Then I enter "Onboarding Status" in the search field textbox for filters
    And I should not see "Patient Risk" in the searched results under the levels

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: fracture/non-fracture mapping in warehouse .dimDRG table should be 0,1,-99 in readmission claims under readmissions
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should see "Fracture" in the filter value list
    And I should see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    Then User executes query
      """
      select distinct drgSubCode from warehouse.dimDRG;
      """
    Then User verifies the data from database for "drgSubCode"
      | NotApplicable | "<notapplicable>" |
      | Fracture      | "<fracture>"      |
      | NonFracture   | "<nonfracture>"   |

    Examples: 
      | email                         | notapplicable | fracture | nonfracture |
      | shutestaug231132a@yopmail.com |           -99 |        0 |           1 |

  Scenario Outline: Fracture values should display 0 and 1 only when executed the below query for readmissions claims under readmissions
    Then User executes query
      """
      select distinct (fracture) 
      from reporting.episodeSummary where anchor_ms_drg in (469, 470) 
      and anchor_beg_dt >= '2016-10-01' and bpid like '2070%';
      """
    Then User verifies the data from database for "fracture"
      | Fracture1 | "<fracture1>" |
      | Fracture2 | "<fracture2>" |

    Examples: 
      | fracture1 | fracture2 |
      |         0 |         1 |

  Scenario Outline: Fracture values should display -99 when executed the below query for readmissions claims under readmissions
    Then User executes query
      """
      select distinct (fracture)
      from reporting.episodeSummary where anchor_ms_drg in (469, 470) 
      and anchor_beg_dt < '2016-10-01' and bpid like '2070%';
      """
    Then User verifies the data from database for "fracture"
      | Fracture1 | "<fracture1>" |

    Examples: 
      | fracture1 |
      |       -99 |

  Scenario Outline: Fracture values should display -99 when executed the below query for readmissions claims under readmissions
    Then User executes query
      """
      select distinct (fracture)
      from reporting.episodeSummary where anchor_ms_drg in (469, 470) 
      and anchor_beg_dt >= '2016-10-01' and bpid not like '2070%';
      """
    Then User verifies the data from database for "fracture"
      | Fracture1 | "<fracture1>" |

    Examples: 
      | fracture1 |
      |       -99 |

  Scenario Outline: Fracture values should display -99 when executed the below query for readmissions claims under readmissions
    Then User executes query
      """
      select distinct (fracture)
      from reporting.episodeSummary where anchor_ms_drg in (469, 470) 
      and anchor_beg_dt < '2016-10-01' and bpid not like '2070%';
      """
    Then User verifies the data from database for "fracture"
      | Fracture1 | "<fracture1>" |

    Examples: 
      | fracture1 |
      |       -99 |

  Scenario Outline: Fracture values should display -99 when executed the below query for readmissions claims under readmissions
    Then User executes query
      """
      select distinct fracture 
      from reporting.episodeSummary where anchor_ms_drg not in (469, 470) 
      and anchor_beg_dt >= '2016-10-01' and bpid like '2070%';
      """
    Then User verifies the data from database for "fracture"
      | Fracture1 | "<fracture1>" |

    Examples: 
      | fracture1 |
      |       -99 |

  Scenario Outline: User should be click on one of the link under episodes and verify episode list columns
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "CCN" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "DRG Code" is appearing under Episodes table
    Then I should verify "Fracture/Non-Fracture" is appearing under Episodes table
    Then I should verify "Beneficiary HIC" is appearing under Episodes table
    Then I should verify "Beneficiary First Name" is appearing under Episodes table
    Then I should verify "Beneficiary Last Name" is appearing under Episodes table
    Then I should verify "Anchor Admission Quarter" is appearing under Episodes table
    Then I should verify "Anchor Begin Date (Key)" is appearing under Episodes table
    Then I should verify "Anchor End Date" is appearing under Episodes table
    Then I should verify "Episode End Date" is appearing under Episodes table
    Then I should verify "Attending Physician NPI" is appearing under Episodes table
    Then I should verify "Attending Physician Name" is appearing under Episodes table
    Then I should verify "Operating Physician NPI" is appearing under Episodes table
    Then I should verify "Operating Physician Name" is appearing under Episodes table
    Then I should verify "Attributed Physician NPI" is appearing under Episodes table
    Then I should verify "Attributed Physician" is appearing under Episodes table
    Then I should verify "Post Acute CCN" is appearing under Episodes table
    Then I should verify "Post Acute Facility" is appearing under Episodes table
    Then I should verify "Post Acute Category" is appearing under Episodes table
    Then I should verify "Readmission CCN 1" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 1" is appearing under Episodes table
    Then I should verify "Readmission DRG 1" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 1" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 1" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 1" is appearing under Episodes table
    Then I should verify "Readmission CCN 2" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 2" is appearing under Episodes table
    Then I should verify "Readmission DRG 2" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 2" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 2" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 2" is appearing under Episodes table
    Then I should verify "Readmission CCN 3" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 3" is appearing under Episodes table
    Then I should verify "Readmission DRG 3" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 3" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 3" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 3" is appearing under Episodes table
    Then I should verify "Readmission CCN 4" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 4" is appearing under Episodes table
    Then I should verify "Readmission DRG 4" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 4" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 4" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 4" is appearing under Episodes table
    Then I should verify "Readmission CCN 5" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 5" is appearing under Episodes table
    Then I should verify "Readmission DRG 5" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 5" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 5" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 5" is appearing under Episodes table
    Then I should verify "Anchor Month" is appearing under Episodes table
    Then I should verify "Readmission Count" is appearing under Episodes table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: User should remove the existing default filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Emblem Payer Users            |
      | emblemachrpfin@yopmail.com     |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |