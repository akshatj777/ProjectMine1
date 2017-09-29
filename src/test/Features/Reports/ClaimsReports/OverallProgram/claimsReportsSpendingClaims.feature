Feature: Verification Claims Report For Spending

  Scenario Outline: User should be able to see Measures,Levels and Preselected Filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify "Current AtRisk" filter is preselected under the filter
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "Episodes (Eps)" under "measures" field
    Then I should see "Target Price" under "measures" field
    Then I should see "(Adj Hist) Spending Avg" under "measures" field
    Then I should see "Spending Avg" under "measures" field
    Then I should see "Total Spending" under "measures" field
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
    Then I should see "SNF Network Tier" appearing under "level" field
    Then I should see "Spending Category" appearing under "level" field

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Emblem Payer Users            |
      | emblemachrpfin@yopmail.com     |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 is able to see fracture/non fracture values when anchor admission quarter >= 2016Q4 in volume claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 | 469       | 470       | 2017Q1                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 | 469       | 470       | 2017Q1                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 | 469       | 470       | 2017Q1                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 | 469       | 470       | 2017Q1                    |
      
Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 is able to see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 in volume claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 | 469       | 470       | 2016Q3                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 | 469       | 470       | 2016Q3                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 | 469       | 470       | 2016Q3                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 | 469       | 470       | 2016Q3                    |
      
Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is >= 2016Q4 in spending claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
    #When I click to "DRG Code" field filter under "DRG" filter field
    #And I choose "Filter" option from select options of filter field
    #And I should see "DRG Code" in the header text of filter page
    #And I should see "<DRG Code1>" in the filter value list
    #And I should see "<DRG Code2>" in the filter value list
    #And I click on "<DRG Code1>" in the filter value list
    #And I click on add selected in the filter modal
    #And I click on "<DRG Code2>" in the filter value list
    #And I click on add selected in the filter modal
    #And I click on ok button from filter
    #And I wait until refresh button is disappeared
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
      | shutestaug15252p@yopmail.com | 6005-169 | 469       |       470 | 2016Q4                    |
      | shutestaug15220p@yopmail.com | 6005-169 | 469       |       470 | 2016Q4                    |
      | shutestaug26212p@yopmail.com | 6005-063 | 469       |       470 | 2016Q4                    |
      | shutestjul26415@yopmail.com  | 6005-063 | 469       |       470 | 2016Q4                    |

Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 in spending claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
    #When I click to "DRG Code" field filter under "DRG" filter field
    #And I choose "Filter" option from select options of filter field
    #And I should see "DRG Code" in the header text of filter page
    #And I should see "<DRG Code1>" in the filter value list
    #And I should see "<DRG Code2>" in the filter value list
    #And I click on "<DRG Code1>" in the filter value list
    #And I click on add selected in the filter modal
    #And I click on "<DRG Code2>" in the filter value list
    #And I click on add selected in the filter modal
    #And I click on ok button from filter
    #And I wait until refresh button is disappeared
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
      | shutestaug15252p@yopmail.com | 6005-169 | 469       |       470 | 2016Q3                    |
      | shutestaug15220p@yopmail.com | 6005-169 | 469       |       470 | 2016Q3                    |
      | shutestaug26212p@yopmail.com | 6005-063 | 469       |       470 | 2016Q3                    |
      | shutestjul26415@yopmail.com  | 6005-063 | 469       |       470 | 2016Q4                    |
      
Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 is able to see fracture/non fracture values when anchor admission quarter >= 2016Q4 and drg code not equal to 469 and 470 in volume claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 | 216       | 217       | 2017Q1                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 | 216       | 217       | 2017Q1                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 | 216       | 217       | 2017Q1                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 | 216       | 217       | 2017Q1                    |
      
Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 is able to see fracture/non fracture values when anchor admission quarter < 2016Q4 and drg code not equal to 469 and 470 in volume claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 | 216       | 217       | 2016Q3                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 | 216       | 217       | 2016Q3                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 | 216       | 217       | 2016Q3                    |
      | shutestaug221145a@yopmail.com      | 2070-021 | 2070-022 | 216       | 217       | 2016Q3                    |
      
Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is >= 2016Q4 and drg code is not equal to 469 and 470 in spending claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      | shutestaug15252p@yopmail.com | 6005-169 | 177       |       178 | 2016Q4                    |
      | shutestaug15220p@yopmail.com | 6005-169 | 177       |       178 | 2016Q4                    |
      | shutestaug26212p@yopmail.com | 6005-063 | 065       |       066 | 2016Q4                    |
      | shutestjul26415@yopmail.com  | 6005-063 | 177       |       178 | 2016Q4                    |
      
Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 and drg code is not equal to 469 and 470 in spending claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      | shutestaug15252p@yopmail.com | 6005-169 | 177       |       178 | 2016Q3                    |
      | shutestaug15220p@yopmail.com | 6005-169 | 177       |       178 | 2016Q3                    |
      | shutestaug26212p@yopmail.com | 6005-063 | 065       |       066 | 2016Q3                    |
      | shutestjul26415@yopmail.com  | 6005-063 | 177       |       178 | 2016Q3                    |
      
Scenario Outline: User should see Fracture/Non-Fracture/Not-Applicable filters in filter value list in spending claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Fracture/Non-Fracture" field filter under "Fracture/Non-Fracture" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Fracture/Non-Fracture" in the header text of filter page
    And I should see "Fracture" in the filter value list
    And I should see "Non-Fracture" in the filter value list
    And I should see "Not Applicable" in the filter value list
    And I click on cancel button from filter
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
    And I should see "Not Applicable" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    
    Examples: 
      | email                              | DRG Code1 | DRG Code2 |
      | shutestaug231132a@yopmail.com      |       216 |       217 |
      | shutestaug221130a@yopmail.com      |       216 |       217 |
      | reptestachmodel2opsfin@yopmail.com |       216 |       217 |
      | shutestaug221145a@yopmail.com      |       216 |       217 |
      | shutestaug15252p@yopmail.com       |       177 |       178 |
      | shutestaug15220p@yopmail.com       |       177 |       178 |
      | shutestaug26212p@yopmail.com       |       065 |       066 |
      | shutestjul26415@yopmail.com        |       177 |       178 |
      
Scenario Outline: User should only see anchor admission values >= 2016Q4 when drg code selected are 469,470 and fracture and non-fracture both filters in spending claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      | shutestaug221145a@yopmail.com      |       469 |       470 |