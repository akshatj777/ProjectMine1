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
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I verify "Model" filter is preselected under the filter
    Then I should see "Model includes 2" is present under preselected model filter
    Then I should see "Dashboard Admission Month is between (and includes) 2016-01 and 2017-12" is present under preselected anchor month filter
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "# Episodes" under "measures" field
    Then I should see "1st Post Acute CCN" for Nsoc Summary under "level" field
    Then I should see "1st Post Acute Facility" for Nsoc Summary under "level" field
    Then I should see "1st Post Acute Type" for Nsoc Summary under "level" field
    Then I should see "Anchor Discharge Care Type" appearing under "level" field
    Then I should see "Anchor Facility" appearing under "level" field
    Then I should see "Anchor Facility Type" appearing under "level" field
    Then I should see "AtRisk" appearing under "level" field
    Then I should see "BPID" appearing under "level" field
    Then I should see "Bundle" appearing under "level" field
    Then I should see "Bundle Code" appearing under "level" field
    Then I should see "CCN" appearing under "level" field
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
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |

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
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "Network Tier" in the search field textbox for filters
    And I verify "Network Tier (Anchor Discharge)" is appearing in the available fields under next site of care summary report
    And I verify "Network Tier (Post Acute Admission)" is appearing in the available fields under next site of care summary report
    When I click to "Network Tier (Anchor Discharge)" field filter under "Network Tier (Anchor Discharge)" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Network Tier (Anchor Discharge)" in the header text of filter page
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

  Scenario Outline: User should not see fracture/non-fracture filters in the availble fields in NSOC report under next site of care summary
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
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
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
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
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
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I click on "Select Columns" appearing in the new window after clicking on drill through
    Then I switch to new window
    When I switch to reports embedded iframe
    Then I verify "Select Drill-Through Columns" title is appearing on popup after clicking select columns
    And I click on "Anchor Facility Type" checkbox under "Anchor Facility" in the popup of select drill through columns
    And I click on "1st Post Acute Facility" checkbox under "Anchor Discharge Facility" in the popup of select drill through columns
    And I click on "1st Post Acute CCN" checkbox under "Anchor Discharge Facility" in the popup of select drill through columns
    And I click on ok button after selecting drill through column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Anchor Facility Type" is appearing under Episodes table
    Then I should verify "1st Post Acute Facility" is appearing under Episodes table
    Then I should verify "1st Post Acute CCN" is appearing under Episodes table

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
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Onboarding Status" field filter under "Onboarding Status" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Onboarding Status" in the header text of filter page
    And I should see "Needs Onboarding" in the filter value list
    And I should see "Not Onboarded" in the filter value list
    And I should see "Onboarded" in the filter value list
    And I should see "Unknown" in the filter value list
    Then User executes query
      """
      select 
      distinct (Lo.lookupValue)
      from
      warehouse.factECAdmissionEpisode PE
      INNER JOIN warehouse.dimEpisodeInitiator E ON(E.episodeInitiatorSK=PE.episodeInitiatorKey)
      INNER JOIN warehouse.dimFacility F ON(F.facilitySK=PE.anchorAdmitFacilityKey)
      INNER JOIN warehouse.dimNSOCMapping N ON(N.NSOCMappingSK=PE.anchorDischCareSettingKey)
      INNER JOIN warehouse.dimDate D ON(D.dateSK=PE.anchorAdmitDateKey)
      LEFT JOIN warehouse.dimDate Dd ON(Dd.dateSK=PE.anchorDischargeDateKey)
      INNER JOIN warehouse.dimPatient P ON(P.patientSk=PE.patientKey)
      INNER JOIN warehouse.dimLookup Lr ON(Lr.lookupName=P.totalRiskScore)
      INNER JOIN warehouse.dimLookup Lo ON(Lo.lookupName=P.onboardingStatus)
      INNER JOIN warehouse.dimDRG Dr ON(Dr.drgSK=PE.currDrgKey)
      where PE.bundleRisk = 1 and
      PE.episodeCountReport = 1 and Lr.lookupCategory = 'patientRisk' and Lo.lookupCategory = 'onboardingStatus'
      and PE.anchorDischargeDateKey<>0;
      """
    Then User verifies the data from database for "lookupValue"
      | OnBoardingStatus1 | "<onboardingstatus1>" |
      | OnBoardingStatus2 | "<onboardingstatus2>" |
      | OnBoardingStatus3 | "<onboardingstatus3>" |
      | OnBoardingStatus4 | "<onboardingstatus4>" |

    Examples: 
      | email                           | onboardingstatus1 | onboardingstatus2 | onboardingstatus3 | onboardingstatus4 |
      | rmexeallonboradvale@yopmail.com | Unknown           | Needs Onboarding  | Onboarded         | Not Onboarded     |

  Scenario Outline: Verify patient risk values in database for next site of care under next site of care summary
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
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Patient Risk" field filter under "Patient" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Patient Risk" in the header text of filter page
    And I should see "Calculating Risk" in the filter value list
    And I should see "High" in the filter value list
    And I should see "Low" in the filter value list
    Then User executes query
      """
      select 
      distinct (Lr.lookupValue)
      from
      warehouse.factPatientEpisode PE
      INNER JOIN warehouse.dimEpisodeInitiator E ON(E.episodeInitiatorSK=PE.episodeInitiatorKey)
      INNER JOIN warehouse.dimFacility F ON(F.facilitySK=PE.anchorAdmitFacilityKey)
      INNER JOIN warehouse.dimNSOCMapping N ON(N.NSOCMappingSK=PE.anchorDischCareSettingKey)
      INNER JOIN warehouse.dimDate D ON(D.dateSK=PE.anchorAdmitDateKey)
      LEFT JOIN warehouse.dimDate Dd ON(Dd.dateSK=PE.anchorDischargeDateKey)
      INNER JOIN warehouse.dimPatient P ON(P.patientSk=PE.patientKey)
      INNER JOIN warehouse.dimLookup Lr ON(Lr.lookupName=P.totalRiskScore)
      INNER JOIN warehouse.dimLookup Lo ON(Lo.lookupName=P.onboardingStatus)
      INNER JOIN warehouse.dimDRG Dr ON(Dr.drgSK=PE.currDrgKey)
      where  PE.bundleRisk = 1 and
      PE.episodeCountReport = 1 and Lr.lookupCategory = 'patientRisk' and Lo.lookupCategory = 'onboardingStatus';
      """
    Then User verifies the data from database for "lookupValue"
      | PatientRisk1 | "<patientrisk1>" |
      | PatientRisk2 | "<patientrisk2>" |
      | PatientRisk3 | "<patientrisk3>" |

    Examples: 
      | email                           | patientrisk1     | patientrisk2 | patientrisk3 |
      | rmexeallonboradvale@yopmail.com | Calculating Risk | Low          | High         |

  Scenario Outline: Verify the potential values in onboarding status are 0,1,2,3 in next site of care under next site of care summary
    Then User executes query
      """
      select distinct onboardingStatus FROM warehouse.dimPatient;
      """
    Then User verifies the data from database for "onboardingStatus"
      | OnBoardingStatus1 | "<onboardingstatus1>" |
      | OnBoardingStatus2 | "<onboardingstatus2>" |
      | OnBoardingStatus3 | "<onboardingstatus3>" |

    Examples: 
      | onboardingstatus1 | onboardingstatus2 | onboardingstatus3 | onboardingstatus4 |
      |                 0 |                 3 |                 2 |                 1 |

  Scenario Outline: Verify the potential values in onboarding status contains null in next site of care under next site of care summary
    Then User executes query
      """
      SELECT  distinct onboardingStatus FROM ec.patient;
      """
    Then User verifies the data from database for "onboardingStatus"
      | OnBoardingStatus1 | "<onboardingstatus1>" |
      | OnBoardingStatus2 | "<onboardingstatus2>" |
      | OnBoardingStatus3 | "<onboardingstatus3>" |
      | OnBoardingStatus4 | "<onboardingstatus4>" |
      | OnBoardingStatus5 | "<onboardingstatus5>" |

    Examples: 
      | onboardingstatus1 | onboardingstatus2 | onboardingstatus3 | onboardingstatus4 | onboardingstatus5 |
      | null              |                 3 |                 2 |                 0 |                 1 |
