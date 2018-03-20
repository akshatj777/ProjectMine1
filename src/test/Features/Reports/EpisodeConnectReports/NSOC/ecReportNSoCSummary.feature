Feature: Verification of Next Site of Care Summary EC Report

  Scenario Outline: User should be able to see Level and Measures on Left Side of NSoc Summary Report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    #Then I verify "Model" filter is preselected under the filter
    #Then I should see "Model includes 2" is present under preselected model filter
    Then I should see "Dashboard Admission Month is between (and includes) 2017-01 and 2018-12" is present under preselected anchor month filter
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "# Episodes" under "measures" field
    Then I should see "Anchor Hospital Discharge Facility CCN" for Nsoc Summary under "level" field
    Then I should see "Anchor Hospital Discharge Facility" for Nsoc Summary under "level" field
    Then I should see "Anchor Hospital Discharge Facility Type" for Nsoc Summary under "level" field
    Then I should see "Anchor Discharge Care Type" appearing under "level" field
    Then I should see "Anchor Hospital Facility CCN" appearing under "level" field
    Then I should see "Anchor Facility Type" appearing under "level" field
    Then I should see "AtRisk" appearing under "level" field
    Then I should see "BPID" appearing under "level" field
    Then I should see "Bundle" appearing under "level" field
    Then I should see "Bundle Code" appearing under "level" field
    Then I should see "Anchor Hospital Facility CCN" appearing under "level" field
    Then I should see "DOB" appearing under "level" field
    Then I should see "DRG" appearing under "level" field
    Then I should see "DRG Code" appearing under "level" field
    Then I should see "DataQualityFlag" appearing under "level" field
    Then I should see "Eligibility" appearing under "level" field
    Then I should see "Episode Initiator" appearing under "level" field
    Then I should see "MDC" appearing under "level" field
    Then I should see "Medicare ID" appearing under "level" field
    Then I should see "Model" appearing under "level" field
    Then I should see "NPI" appearing under "level" field
    Then I should see "Participant" appearing under "level" field
    Then I should see "Participant ID" appearing under "level" field
    Then I should see "Patient" appearing under "level" field
    Then I should see "Principal Account Practitioner" appearing under "level" field
    Then I should see "Risk Score" appearing under "level" field
    Then I should see "isAnchorAdmission" appearing under "level" field
    Then I should see "isSNFAdmissionReport" appearing under "level" field
    Then I should see "Anchor Admission Month" appearing under "Time" field
    Then I should see "Anchor Admission Quarter" appearing under "Time" field
    Then I should see "Anchor Admission Week" appearing under "Time" field
    Then I should see "Anchor Admission Year" appearing under "Time" field
    Then I should see "Anchor Discharge Month" appearing under "Time" field
    Then I should see "Anchor Discharge Quarter" appearing under "Time" field
    Then I should see "Anchor Discharge Week" appearing under "Time" field
    Then I should see "Anchor Discharge Year" appearing under "Time" field
    Then I should see "Dashboard Admission Month" appearing under "Time" field

    Examples: 
      | email                         |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com |

  #| Multiple Payer Users          |
  #| multipayerachrpfin@yopmail.com |
  Scenario Outline: Verify user can search for network tier under nsoc summary report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "Network Tier" in the search field textbox for filters
    And I verify "Network Tier (Anchor Hospital Discharge)" is appearing in the available fields under next site of care summary report
    And I verify "Network Tier (Post Acute Admission)" is appearing in the available fields under next site of care summary report
    When I click to "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Network Tier (Anchor Hospital Discharge)" in the header text of filter page
    And I should see "<networktier1>" in the filter value list
    And I should see "<networktier1>" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Network Tier (Post Acute Admission)" field filter under "Network Tier (Post Acute Admission)" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Network Tier (Post Acute Admission)" in the header text of filter page
    And I should see "<networktier1>" in the filter value list
    And I should see "<networktier1>" in the filter value list

    Examples: 
      | email                         | networktier1   | networktier2 |
      | shutestaug231132a@yopmail.com | Not in Network | Tier 1       |

  Scenario Outline: User should not see fracture/non-fracture filters in the available fields in NSOC report under next site of care summary
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "Fracture/Non-Fracture" in the search field textbox for filters
    And I should not see "Fracture/Non-Fracture" in the searched results under the measures

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | shutestaug221130a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |
      | shutestaug15240p@yopmail.com       |
      | shutestaug221145a@yopmail.com      |

  Scenario Outline: User should be able to see onboarding status and patient risk values in available fields in next site of care summary report under next site of care summary
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "Patient Risk" in the search field textbox for filters
    Then I verify "Patient Risk" is appearing in the level fields after searching
    And I click on clear search field element
    And I wait until refresh button is disappeared
    Then I enter "Onboarding Status" in the search field textbox for filters
    Then I verify "Onboarding Status" is appearing in the level fields after searching

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | shutestaug221130a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |
      | shutestaug15240p@yopmail.com       |
      | shutestaug221145a@yopmail.com      |

  Scenario Outline: User should be able to click on drill through column in episode connect report and select the columns and verify under next site of care sumary report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I click on "Select Columns" appearing in the new window after clicking on drill through
    Then I switch to new window
    When I switch to reports embedded iframe
    Then I verify "Select Drill-Through Columns" title is appearing on popup after clicking select columns
    And I click on "Anchor Hospital Facility Type" checkbox under "Anchor Hospital Facility" in the popup of select drill through columns
    And I click on "1st Post Acute Facility" checkbox under "Anchor Hospital Discharge Facility" in the popup of select drill through columns
    And I click on "Anchor Hospital Discharge Facility CCN" checkbox under "Anchor Hospital Discharge Facility" in the popup of select drill through columns
    And I click on ok button after selecting drill through column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Anchor Hospital Facility Type" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Facility" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Facility CCN" is appearing under Episodes table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Verify onboarding status values in database for next site of care under next site of care summary
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Onboarding Status" field filter under "Onboarding Status" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Onboarding Status" in the header text of filter page
    And I should see "Needs Onboarding" in the filter value list
    And I should see "Not Onboarded" in the filter value list
    And I should see "Onboarded" in the filter value list
    And I should see "Unknown" in the filter value list

    Examples: 
      | email                           | onboardingstatus1 | onboardingstatus2 | onboardingstatus3 | onboardingstatus4 |
      | rmexeallonboradvale@yopmail.com | Unknown           | Needs Onboarding  | Onboarded         | Not Onboarded     |

  Scenario Outline: Verify patient risk values for next site of care under next site of care summary
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Patient Risk" field filter under "Patient" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Patient Risk" in the header text of filter page
    And I should see "Calculating Risk" in the filter value list
    And I should see "High" in the filter value list
    And I should see "Low" in the filter value list

    Examples: 
      | email                           | patientrisk1     | patientrisk2 | patientrisk3 |
      | rmexeallonboradvale@yopmail.com | Calculating Risk | Low          | High         |

  Scenario Outline: User should see patient risk and onboarding status fields in the patient drill through in next site of care summary report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I click on "Select Columns" appearing in the new window after clicking on drill through
    Then I switch to new window
    When I switch to reports embedded iframe
    Then I verify "Select Drill-Through Columns" title is appearing on popup after clicking select columns
    And I click on "Onboarding Status" checkbox under "Onboarding Status" in the popup of select drill through columns
    And I click on "Patient Risk" checkbox under "Patient" in the popup of select drill through columns
    And I click on ok button after selecting drill through column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Onboarding Status" is appearing under Episodes table
    Then I should verify "Patient Risk" is appearing under Episodes table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: User should be able to see eligibilty field in available fields and check the filter values and apply filter in next site of care summary report under NSOC
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    When I click to "Eligibility" field filter under "Eligibility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Eligibility" field is appearing in the layout section after selecting add to report
    Then I verify "Eligibility" column is added to report after selecting add to report option
    When I click to "Eligibility" field filter under "Eligibility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Eligibility" in the header text of filter page
    Then I verify there are no duplicate values in the eligibility filter field list
    And I should see "ELIGIBLE" in the filter value list
    And I should see "ERROR" in the filter value list
    And I should see "EXPIRED" in the filter value list
    And I should see "NOT_ELIGIBLE" in the filter value list
    And I click on "ELIGIBLE" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I verify "ELIGIBLE" is visible under "Eligibility" column in the report

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: User should be able to see Anchor Hospital Discharge Facility CCN and network tier(anchor hospital discharge) and filter the values for network tier(anchor discharge)
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "anchor Discharge Date Key" field filter under "anchor Discharge Date Key" filter field from default filters
    Then I enter "Anchor Hospital Discharge Facility CCN" in the search field textbox for filters
    And I verify "Anchor Hospital Discharge Facility CCN" is appearing in the available fields under next site of care summary report
    And I click on clear search field element
    And I wait until refresh button is disappeared
    #Drag and Drop(Anchor Hospital Discharge Facility CCN)
    When I click to "Anchor Hospital Discharge Facility CCN" field filter under "Anchor Hospital Discharge Facility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Facility CCN" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Facility CCN" column is added to report after selecting add to report option
    #Filtering(Anchor Hospital Discharge Facility CCN)
    When I click to "Anchor Hospital Discharge Facility CCN" field filter under "Anchor Hospital Discharge Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Hospital Discharge Facility CCN" in the header text of filter page
    And I should see "<dischargefacilityccn filter>" in the filter value list
    And I click on "<dischargefacilityccn filter>" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    #Anchor Discharge Care Setting(SNF and HHA Filtering)
    When I click to "Anchor Hospital Discharge Care Setting" field filter under "Dim Anchor Discharge Care Setting" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Hospital Discharge Care Setting" in the header text of filter page
    And I should see "HHA" in the filter value list
    And I should see "SNF" in the filter value list
    And I click on "HHA" in the filter value list
    And I click on add selected in the filter model
    And I click on "SNF" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    Then I verify "Anchor Hospital Discharge Care Setting includes HHA and SNF" is appearing under selected anchor discharge care setting filter
    #Drag and Drop(Anchor Discharge Care Setting for SNF and HHA)
    When I click to "Anchor Hospital Discharge Care Setting" field filter under "Dim Anchor Discharge Care Setting" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Care Setting" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Care Setting" column is added to report after selecting add to report option
    #Network Tier(Anchor Discharge - Tier Unknown)
    When I click to "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Network Tier (Anchor Hospital Discharge)" in the header text of filter page
    And I should see "Tier Unknown" in the filter value list
    And I should not see "Tier 1" in the filter value list
    And I should not see "Tier 2" in the filter value list
    And I should not see "Out of Network" in the filter value list
    And I click on "Tier Unknown" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    Then I verify "Network Tier (Anchor Hospital Discharge) includes Tier Unknown" is appearing under selected network tier anchor discharge filter

    Examples: 
      | email                              | dischargefacilityccn filter |
      | shutestaug231132a@yopmail.com      | Not Available               |
      | reptestachmodel2opsfin@yopmail.com | Not Available               |
      | shutestaug231132a@yopmail.com      |                           0 |
      | reptestachmodel2opsfin@yopmail.com |                           0 |

  Scenario Outline: User should be able to filter the values for Tier One,Tier Two and Out Of Network under network tier(anchor discharge) filter field
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "anchor Discharge Date Key" field filter under "anchor Discharge Date Key" filter field from default filters
    #Drag and Drop(Network Tier - Anchor Discharge)
    When I click to "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Network Tier (Anchor Hospital Discharge)" field is appearing in the layout section after selecting add to report
    Then I verify "Network Tier (Anchor Hospital Discharge)" column is added to report after selecting add to report option
    #Filtering(Out Of Network)
    When I click to "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Network Tier (Anchor Hospital Discharge)" in the header text of filter page
    And I click on "<networktier1>" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    Then I verify "Network Tier (Anchor Hospital Discharge) includes Out of Network" is appearing under selected network tier anchor discharge filter
    And I verify "<networktier1>" is visible under "Network Tier (Anchor Hospital Discharge)" column in the report
    Then I remove "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field from default filters
    #Filtering(Tier 1)
    When I click to "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Network Tier (Anchor Hospital Discharge)" in the header text of filter page
    And I click on "<networktier2>" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    Then I verify "Network Tier (Anchor Hospital Discharge) includes Tier 1" is appearing under selected network tier anchor discharge filter
    And I verify "<networktier2>" is visible under "Network Tier (Anchor Hospital Discharge)" column in the report
    Then I remove "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field from default filters
    #Filtering(Tier 2)
    When I click to "Network Tier (Anchor Hospital Discharge)" field filter under "Network Tier (Anchor Hospital Discharge)" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Network Tier (Anchor Hospital Discharge)" in the header text of filter page
    And I click on "<networktier3>" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    Then I verify "Network Tier (Anchor Hospital Discharge) includes Tier 2" is appearing under selected network tier anchor discharge filter
    And I verify "<networktier3>" is visible under "Network Tier (Anchor Hospital Discharge)" column in the report

    Examples: 
      | email                     | networktier1   | networktier2 | networktier3 |
      | RPFIN2User2@yopmail.com   | Out of Network | Tier 1       | Tier 2       |
      | OPSFINTier1_2@yopmail.com | Out of Network | Tier 1       | Tier 2       |

  Scenario Outline: Verify drag and drop functionality for ccn and network tier(post acute admission) to the report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    #CCN Drag and Drop
    When I click to "Anchor Hospital Facility CCN" field filter under "Anchor Hospital Facility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Facility CCN" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Facility CCN" column is added to report after selecting add to report option
    #Drag and Drop(Network Tier Post Acute Admission)
    When I click to "Network Tier (Post Acute Admission)" field filter under "Network Tier (Post Acute Admission)" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Network Tier (Post Acute Admission)" field is appearing in the layout section after selecting add to report
    Then I verify "Network Tier (Post Acute Admission)" column is added to report after selecting add to report option

    Examples: 
      | email                   |
      | RPFIN2User2@yopmail.com |
      | OPSFINTier1@yopmail.com |

  Scenario Outline: Verification of Next site of care summary report with pgp model3 users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    #Default Filters
    Then I verify "Dashboard Admission Month" is appearing under preselected anchor hospital admission year filter
    Then I verify "is between (and includes) 2017-01 and 2018-12" is appearing under preselected filters for anchor Discharge Date Key
    Then I verify "anchor Discharge Date Key" is appearing under preselected anchor hospital admission year filter
    Then I verify "includes 1" is appearing under preselected filters for anchor Discharge Date Key
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    #Default Dimensions
    Then I should see "Participant" under "dimensions" field
    Then I should see "Episode Initiator" under "dimensions" field
    Then I should see "Anchor Hospital Facility" under "dimensions" field
    Then I should see "Anchor Hospital Discharge Care Setting" under "dimensions" field
    Then I should see "Anchor Hospital Discharge Care Type" under "dimensions" field
    Then I should see "Anchor Hospital Admission Month" under "dimensions" field
    #Default Measures
    Then I should see "# Episodes" under "measures" field
    #Default Fields Verification in reports
    And I verify "Participant" column is already present on the reports
    And I verify "Episode Initiator" column is already present on the reports
    And I verify "Anchor Hospital Facility" column is already present on the reports
    And I verify "Anchor Hospital Discharge Care Setting" column is already present on the reports
    And I verify "# Episodes" column is already present on the reports
    And I verify "Anchor Hospital Admission Month" column is already present on the reports
    #Dimension Fields(Drag and Drop)
    When I click to "Anchor Hospital Facility" field filter under "Anchor Hospital Facility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Facility" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Facility" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Provider" field filter under "Anchor Post Acute Provider" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Provider" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Provider" column is added to report after selecting add to report option
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "BPID" field is appearing in the layout section after selecting add to report
    Then I verify "BPID" column is added to report after selecting add to report option
    When I click to "Final DRG Status" field filter under "Final DRG Status" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Final DRG Status" field is appearing in the layout section after selecting add to report
    Then I verify "Final DRG Status" column is added to report after selecting add to report option
    When I click to "Working DRG Status" field filter under "Working DRG Status" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Working DRG Status" field is appearing in the layout section after selecting add to report
    Then I verify "Working DRG Status" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Facility CCN" field filter under "Anchor Hospital Facility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Facility CCN" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Facility CCN" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Provider CCN" field filter under "Anchor Post Acute Provider" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Provider CCN" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Provider CCN" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Discharge Facility" field filter under "Anchor Hospital Discharge Facility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Facility" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Facility" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Discharge Provider" field filter under "Anchor Post Acute Discharge Provider" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Discharge Provider" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Discharge Provider" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Discharge Facility CCN" field filter under "Anchor Post Acute Discharge Provider" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Facility CCN" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Facility CCN" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Discharge Provider CCN" field filter under "Anchor Post Acute Discharge Provider" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Discharge Provider CCN" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Discharge Provider CCN" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Facility Type" field filter under "Anchor Hospital Facility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Facility Type" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Facility Type" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Provider Type" field filter under "Anchor Post Acute Provider" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Provider Type" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Provider Type" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Discharge Facility Type" field filter under "Anchor Hospital Discharge Facility" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Facility Type" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Facility Type" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Discharge Provider Type" field filter under "Anchor Post Acute Discharge Provider" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Discharge Provider Type" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Discharge Provider Type" column is added to report after selecting add to report option
    When I click to "Bundle" field filter under "Bundle" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Bundle" field is appearing in the layout section after selecting add to report
    Then I verify "Bundle" column is added to report after selecting add to report option
    When I click to "Bundle DRG Code" field filter under "DRG" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Bundle DRG Code" field is appearing in the layout section after selecting add to report
    Then I verify "Bundle DRG Code" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Admission Month" field filter under "Anchor Hospital Admit Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Admission Month" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Admission Month" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Admission Week" field filter under "Anchor Hospital Admit Date.Anchor Hospital Admission Weeks" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Admission Week" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Admission Week" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Admission Quarter" field filter under "Anchor Hospital Admit Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Admission Quarter" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Admission Quarter" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Admission Year" field filter under "Anchor Hospital Admit Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Admission Year" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Admission Year" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Discharge Week" field filter under "Anchor Hospital Discharge Date.Anchor Hospital Discharge Weeks" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Week" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Week" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Discharge Quarter" field filter under "Anchor Hospital Discharge Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Quarter" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Quarter" column is added to report after selecting add to report option
    When I click to "Anchor Hospital Discharge Year" field filter under "Anchor Hospital Discharge Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Hospital Discharge Year" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Hospital Discharge Year" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Admission Month" field filter under "Anchor Post Acute Admit Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Admission Month" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Admission Month" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Admission Week" field filter under "Anchor Post Acute Admit Date.Anchor Post Acute Admission Weeks" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Admission Week" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Admission Week" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Admission Quarter" field filter under "Anchor Post Acute Admit Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Admission Quarter" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Admission Quarter" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Admission Year" field filter under "Anchor Post Acute Discharge Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Admission Year" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Admission Year" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Discharge Month" field filter under "Anchor Post Acute Discharge Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Discharge Month" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Discharge Month" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Discharge Week" field filter under "Anchor Post Acute Discharge Date.Anchor Post Acute Discharge Weeks" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Discharge Week" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Discharge Week" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Discharge Quarter" field filter under "Anchor Post Acute Discharge Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Discharge Quarter" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Discharge Quarter" column is added to report after selecting add to report option
    When I click to "Anchor Post Acute Discharge Year" field filter under "Anchor Post Acute Discharge Date" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Anchor Post Acute Discharge Year" field is appearing in the layout section after selecting add to report
    Then I verify "Anchor Post Acute Discharge Year" column is added to report after selecting add to report option

    Examples: 
      | email                         |
      | shutestauf171115a@yopmail.com |
      | shutestagu22945am@yopmail.com |

  Scenario Outline: Verify the measures field are draggable in Next site of care summary report for model3 pgp users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    #measures field drag and drop
    When I click to "# Episodes" field filter under "Measures" filter field in layout section
    And I choose remove report option from select options of filter field
    Then I search for the field "#" from the available fields
    When I click to "# Episodes" field filter under "Measures" filter field
    And I verify "# Episodes" field is appearing in the layout section after selecting add to report
    Then I verify "# Episodes" column is added to report after selecting add to report option
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "# Episodes" field is appearing in the layout section after selecting add to report
    Then I verify "# Episodes" column is added to report after selecting add to report option

    Examples: 
      | email                         |
      | shutestauf171115a@yopmail.com |
      | shutestagu22945am@yopmail.com |

  Scenario Outline: Verify the drill patient drill through values in Next site of care summary report for model3 pgp user
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "Anchor Hospital Facility CCN" is appearing under Episodes table
    Then I should verify "Anchor Hospital Facility" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Patient" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "DOD" is appearing under Episodes table
    Then I should verify "Eligibility" is appearing under Episodes table
    Then I should verify "Episode Status" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "Bundle DRG Code" is appearing under Episodes table
    Then I should verify "Bundle DRG Status" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Care Setting" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Care Type" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Care Type Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Care Type Detail (EC)" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Care Setting Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Hospital Admit Date" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Date" is appearing under Episodes table
    Then I should verify "Anchor Month" is appearing under Episodes table
    Then I click on "Select Columns" appearing in the new window after clicking on drill through
    Then I switch to new window
    When I switch to reports embedded iframe
    Then I verify "Select Drill-Through Columns" title is appearing on popup after clicking select columns
    Then I should verify "Anchor Hospital Admission Weeks" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Admission Week" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Admit Date" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Admission Year" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Admission Quarter" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Admission Month" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Care Setting" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Care Setting Code (EC)" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Care Type Code (EC)" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Care Type Detail (EC)" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Care Setting" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Care Type" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Date" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Year" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Quarter" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Month" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Date" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Facility Type" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Facility CCN" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Facility" is appearing under Episodes drill through columns popup
    Then I should verify "Last Final DRG(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Final Bundle(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Final DRG Date(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Care Setting" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Care Type" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Care Type Detail (EC)" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Care Setting Code (EC)" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Care Type Code (EC)" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Admit Date" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Date" is appearing under Episodes drill through columns popup
    Then I should verify "Patient Risk" is appearing under Episodes drill through columns popup
    Then I should verify "Onboarding Status" is appearing under Episodes drill through columns popup

    Examples: 
      | email                         |
      | shutestauf171115a@yopmail.com |
      | shutestagu22945am@yopmail.com |

  Scenario Outline: Verify globalfilters in Next site of care summary for model3 pgp users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I switch to default window from iframe
    When I see "0" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Payer" filter is appearing under global filters
    Then I see <payer1> appearing under payer filter of global filters
    Then I see <payer2> appearing under payer filter of global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I see <participant1> appearing under participant filter of global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I see <episode initiator1> appearing under episode initiator filter of global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    Then I see <anchor facility1> appearing under anchor facility filter of global filters
    Then I click on <payer1> checkbox under payer for global filters
    And I verify <payer1> is appearing under applied payer on global filters
    Then I click on <participant1> checkbox under participant for global filters
    And I verify <participant1> is appearing under applied participant on global filters
    Then I click on <episode initiator1> checkbox under episode initiator for global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    Then I click on <anchor facility1> checkbox under anchor facility for global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I click on Apply filters button for global filters
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    When I click on show all filters icon button
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    Then I verify dashboard anchor ccn filter is selected with <ccn1> under selected filters
    Then I verify payer filter is selected with <payer1> under selected filters
    When I switch to default window from iframe
    When I click on "Patient ID" tile on the top navigation of reports page
    Then I click on "InPatient Episode Clearing" report under "Patient ID" reports tile on the top of reports page
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I switch to default window from iframe
    Then I verify "InPatient Episode Clearing" in the reports header page
    When I see "4" filters applied under global filters applied count
    Then I click on Show Summary button to unhide the available global filters
    Then I verify "Payer" filter is appearing under global filters
    Then I verify "Participant" filter is appearing under global filters
    Then I verify "Episode Initiator" filter is appearing under global filters
    Then I verify "Anchor Facility" filter is appearing under global filters
    And I verify <participant1> is appearing under applied participant on global filters
    And I verify <episode initiator1> is appearing under applied episode initiator on global filters
    And I verify <anchor facility1> is appearing under applied anchor facility on global filters
    And I verify <payer1> is appearing under applied payer on global filters
    And I click on Apply filters button for global filters
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify participant filter is selected with <participantid1> under selected filters
    Then I verify episode initiator filter is selected with <bpid1> under selected filters
    Then I verify dashboard anchor ccn filter is selected with <ccn1> under selected filters
    Then I verify payer filter is selected with <payer1> under selected filters

    Examples: 
      | email                         | participant1     | episode initiator1                             | anchor facility1                     | participantid1 | bpid1    | ccn1   | payer1   |
      | shutestauf171115a@yopmail.com | Sound Physicians | Hospitalist Medicine Physicians Of Texas, PLLC | Christus Health Shreveport - Bossier |         441324 | 3090-196 | 190041 | Medicare |
      | shutestagu22945am@yopmail.com | Sound Physicians | Hospitalist Medicine Physicians Of Texas, PLLC | Christus Health Shreveport - Bossier |         441324 | 3090-196 | 190041 | Medicare |

  Scenario Outline: User should be able to verify episode status having potential M3 for Model3 users in Next Site Of Care Summary report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    When I click to "Model" field filter under "Model" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Model" field is appearing in the layout section after selecting add to report
    Then I verify "Model" column is added to report after selecting add to report option
    When I click to "Model" field filter under "Model" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Model" in the header text of filter page
    And I should see "3" in the filter value list
    And I click on "3" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "3" result in "Model" field column for "Model" filter field
    When I click to "Episode Status" field filter under "Episode Status" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Episode Status" field is appearing in the layout section after selecting add to report
    Then I verify "Episode Status" column is added to report after selecting add to report option
    When I click to "Episode Status" field filter under "Episode Status" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Episode Status" in the header text of filter page
    And I should see "potentialM3" in the filter value list
    And I click on "potentialM3" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "potentialM3" result in "Episode Status" field column for "Episode Status" filter field

    Examples: 
      | email                         |
      | shutestauf171115a@yopmail.com |
      | shutestagu22945am@yopmail.com |

  Scenario Outline: User with model2 shoould not see episode status potential M3 value under Next Site Of Care Summary report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site Of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    When I click to "Model" field filter under "Model" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Model" field is appearing in the layout section after selecting add to report
    Then I verify "Model" column is added to report after selecting add to report option
    When I click to "Model" field filter under "Model" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Model" in the header text of filter page
    And I should see "2" in the filter value list
    And I click on "2" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "2" result in "Model" field column for "Model" filter field
    When I click to "Episode Status" field filter under "Episode Status" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Episode Status" field is appearing in the layout section after selecting add to report
    Then I verify "Episode Status" column is added to report after selecting add to report option
    When I click to "Episode Status" field filter under "Episode Status" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Episode Status" in the header text of filter page
    And I should not see "potentialM3" in the filter value list

    Examples: 
      | email                        |
      | shutestaug15252p@yopmail.com |
      | shutestaug26212p@yopmail.com |
