Feature: Verification Claims Report For Financial Performance Claims Report

  Scenario Outline: User should be able to see Measures,Levels and Preselected Filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I should see "Dashboard Admission Month is between (and includes) 2016-01 and 2017-12" is present under preselected anchor month filter
    Then I verify "Bundle Risk" filter is preselected under the filter
    Then I should see "Bundle Code includes All" is present under preselected Bundle Code filter
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "Episode (Eps)" under "measures" field
    Then I should see "Program Size" under "measures" field
    Then I should see "NPRA" under "measures" field
    Then I should see "Forecasted Program Size" under "measures" field
    Then I should see "Forecasted NPRA" under "measures" field
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

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Emblem Payer Users            |
      | emblemachrpfin@yopmail.com     |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: User should remove the existing default filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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

  Scenario Outline: Verify the participant filter after removing the default filters for RPFIN,OPSFIN and RPNOFIN role multiple payer users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    When I click on field-panel-icon button
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant" in the header text of filter page
    And I should see "<participant1>" in the filter value list
    And I should see "<participant2>" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click on filter count label to see preselected filters
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant" in the header text of filter page
    And I should see "<participant1>" in the filter value list
    And I should see "<participant2>" in the filter value list
    And I click on "<participant2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<participant2>" result in "Participant" field column for "Episode Initiator" filter field

    Examples: 
      | email                            | participant1 | participant2    |
      | multipayerachrpfin@yopmail.com   | Penn         | RP Payer Test A |
      | multipayerachrpnofin@yopmail.com | Penn         | RP Payer Test A |
      | multipayerachopsfin@yopmail.com  | Penn         | RP Payer Test A |

  Scenario Outline: Verify the data is appearing inside the report after removing the default filter for emblem user
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters
    Then I should see performance reports column Tile text as "Participant"
    Then I should see performance reports column Tile text as "Episode Initiator"
    Then I should see performance reports column Tile text as "Bundle"
    Then I should see performance reports column Tile text as "Anchor Admission Quarter"
    And I should see "<participant>" result in "Participant" field column for "Episode Initiator" filter field

    Examples: 
      | email                     | participant     |
      | emblemrpnofin@yopmail.com | RP Payer Test A |

  Scenario Outline: Verify user is able to see claims data in claims report with emblem payer user
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    When I click on field-panel-icon button
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant" in the header text of filter page
    And I should see "<participant>" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    And I should see "<participant>" result in "Participant" field column for "Episode Initiator" filter field

    Examples: 
      | email                      | participant     |
      | emblemrpfin@yopmail.com    | RP Payer Test A |
      | emblemachrpfin@yopmail.com | RP Payer Test A |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 is able to see fracture/non fracture values when anchor admission quarter >= 2016Q4 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       469 |       470 | 2016Q3                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       469 |       470 | 2016Q3                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       469 |       470 | 2016Q3                    |

  Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is >= 2016Q4 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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
      | shutestaug15252p@yopmail.com | 6005-169 |       469 |       470 | 2016Q4                    |
      | shutestaug15220p@yopmail.com | 6005-169 |       469 |       470 | 2016Q4                    |
      | shutestaug26212p@yopmail.com | 6005-063 |       469 |       470 | 2016Q4                    |

  Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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
      | shutestaug15252p@yopmail.com | 6005-169 |       469 |       470 | 2016Q3                    |
      | shutestaug15220p@yopmail.com | 6005-169 |       469 |       470 | 2016Q3                    |
      | shutestaug26212p@yopmail.com | 6005-063 |       469 |       470 | 2016Q3                    |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 and drg is not 469 and 470 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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
      | shutestaug231132a@yopmail.com      | 2070-021 | 2070-022 |       216 |       217 | 2016Q3                    |
      | shutestaug221130a@yopmail.com      | 2070-021 | 2070-022 |       216 |       217 | 2016Q3                    |
      | reptestachmodel2opsfin@yopmail.com | 2070-021 | 2070-022 |       216 |       217 | 2016Q3                    |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is >= 2016Q4 and drg is not 469 and 470 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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

  Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is < 2016Q4 and drg code not equal to 469 and 470 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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

  Scenario Outline: Non-Remedy awardee convener whose BPID not starting with 2070 with model2 should see only not-applicable in fracture/non fracture filters when anchor admission quarter is >= 2016Q4 and drg code not equal to 469 and 470 in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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

  Scenario Outline: User should see Fracture/Non-Fracture/Not-Applicable filters in filter value list in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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
      | shutestaug15252p@yopmail.com       |       177 |       178 |
      | shutestaug15220p@yopmail.com       |       177 |       178 |
      | shutestaug26212p@yopmail.com       |       065 |       066 |

  Scenario Outline: User should only see anchor admission values >= 2016Q4 when drg code selected are 469,470 and fracture and non-fracture both filters in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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

  Scenario Outline: User should see corresponding DRG when selected 469 drg code in the report in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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
    And I verify "MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W MCC" is appearing in the drg column rows
    
    Examples: 
      | email                              | DRG Code1 |
      | shutestaug231132a@yopmail.com      |       469 |
      | shutestaug221130a@yopmail.com      |       469 |
      | reptestachmodel2opsfin@yopmail.com |       469 |
      
Scenario Outline: User should see corresponding DRG when selected 470 drg code in the report in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
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
    And I verify "MAJOR JOINT REPLACEMENT OR REATTACHMENT OF LOWER EXTREMITY W/O MCC" is appearing in the drg column rows
    
    Examples: 
      | email                              | DRG Code1 |
      | shutestaug231132a@yopmail.com      |       470 |
      | shutestaug221130a@yopmail.com      |       470 |
      | reptestachmodel2opsfin@yopmail.com |       470 |