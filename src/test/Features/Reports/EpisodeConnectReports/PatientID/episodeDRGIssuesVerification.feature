Feature: Episode DRG Issues Levels,Measures and Remove Default Filters

  Scenario Outline: User should be able to see Level and Measures on Left Side of Episode DRG Issues Report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I should see "Model includes 2" is present under preselected model filter
    Then I verify "Anchor Admission Year includes previous Anchor Admission Year and current Anchor Admission Year" is appearing under preselected anchor admission year filter
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "# Episodes" under "measures" field
    Then I should see "Avg. Days to First Working DRG" under "measures" field
    Then I should see "Avg. Days to First Predicted DRG" under "measures" field
    Then I should see "Avg. Days to First Final DRG" under "measures" field
    Then I should see "1st Post Acute CCN" appearing under "level" field
    Then I should see "1st Post Acute Facility" appearing under "level" field
    Then I should see "1st Post Acute Type" appearing under "level" field
    Then I should see "Agrees with CARL Proposal" appearing under "level" field
    Then I should see "Ambulatory Status" appearing under "level" field
    Then I should see "Anchor Facility" appearing under "level" field
    Then I should see "Anchor Facility Type" appearing under "level" field
    Then I should see "AtRisk" appearing under "level" field
    Then I should see "BPID" appearing under "level" field
    Then I should see "Bundle" appearing under "level" field
    Then I should see "Bundle Code" appearing under "level" field
    Then I should see "CARL Status" appearing under "level" field
    Then I should see "CCN" appearing under "level" field
    Then I should see "Capable Caregiver Availability" appearing under "level" field
    Then I should see "Catheter" appearing under "level" field
    Then I should see "Clinical Nursing Oversight" appearing under "level" field
    Then I should see "Cognitive Status" appearing under "level" field
    Then I should see "DOB" appearing under "level" field
    Then I should see "DRG" appearing under "level" field
    Then I should see "DRG Code" appearing under "level" field
    Then I should see "DRG Status" appearing under "level" field
    Then I should see "Disagreement Reasons" appearing under "level" field
    Then I should see "Eligibility" appearing under "level" field
    Then I should see "Episode Initiator" appearing under "level" field
    Then I should see "Episode Status" appearing under "level" field
    Then I should see "Final DRG Status" appearing under "level" field
    Then I should see "First Final Bundle" appearing under "level" field
    Then I should see "First Final DRG" appearing under "level" field
    Then I should see "First Final DRG Date" appearing under "level" field
    Then I should see "First Predicted Bundle" appearing under "level" field
    Then I should see "First Predicted DRG" appearing under "level" field
    Then I should see "First Predicted DRG Date" appearing under "level" field
    Then I should see "First Working Bundle" appearing under "level" field
    Then I should see "First Working DRG" appearing under "level" field
    Then I should see "First Working DRG Date" appearing under "level" field
    Then I should see "Injectable Medications" appearing under "level" field
    Then I should see "Issue" appearing under "level" field
    Then I should see "Last Final Bundle" appearing under "level" field
    Then I should see "Last Final DRG" appearing under "level" field
    Then I should see "Last Final DRG Date" appearing under "level" field
    Then I should see "Last Predicted Bundle" appearing under "level" field
    Then I should see "Last Predicted DRG" appearing under "level" field
    Then I should see "Last Predicted DRG Date" appearing under "level" field
    Then I should see "Last Working Bundle" appearing under "level" field
    Then I should see "Last Working DRG" appearing under "level" field
    Then I should see "Last Working DRG Date" appearing under "level" field
    Then I should see "MDC" appearing under "level" field
    Then I should see "Medicare ID" appearing under "level" field
    Then I should see "Model" appearing under "level" field
    Then I should see "Ostomy Care" appearing under "level" field
    Then I should see "Oxygen or Other Respiratory Support" appearing under "level" field
    Then I should see "Participant" appearing under "level" field
    Then I should see "Participant ID" appearing under "level" field
    Then I should see "Patient" appearing under "level" field
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
    Then I should see "Risk Score" appearing under "level" field
    Then I should see "Teaching and Training Activities" appearing under "level" field
    Then I should see "Therapy Needs" appearing under "level" field
    Then I should see "Tracheostomy Care" appearing under "level" field
    Then I should see "Tube Feeding" appearing under "level" field
    Then I should see "Venipuncture/ Blood Testing" appearing under "level" field
    Then I should see "Working DRG Status" appearing under "level" field
    Then I should see "Wound Care" appearing under "level" field
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
      | Medicare Payer Users           |
      | shutestaug231132a@yopmail.com  |
      | Multiple Payer Users           |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: User should be able to remove default filters from Inpatient Episode Clearing Report and add Anchor Discharge Month Filter
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I remove "Anchor Admission Year" field filter under "Anchor Begin Date" filter field from default filters
    Then I remove "Model" field filter under "Model" filter field from default filters
    When I click on field-panel-icon button
    When I click to "Anchor Discharge Month" field filter under "Anchor Discharge Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Discharge Month" in the header text of filter page
    Then I select "PREVIOUS" discharge month in anchor discharge month filter
    And I click on ok button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                          |
      | Medicare Payer Users           |
      | shutestaug231132a@yopmail.com  |
      | Multiple Payer Users           |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: User should not see fracture/non-fracture filters in the available fields in episode drg issues report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
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

  Scenario Outline: User should be able to see onboarding status and patient risk values in available fields in episode drg issues report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
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

  Scenario Outline: Verify onboarding status values in database for episode drg issues report under paatient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
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
      | OnBoardingStatus1 | "<onboardingstatus1>" |
      | OnBoardingStatus2 | "<onboardingstatus2>" |
      | OnBoardingStatus3 | "<onboardingstatus3>" |
      | OnBoardingStatus4 | "<onboardingstatus4>" |

    Examples: 
      | email                           | onboardingstatus1 | onboardingstatus2 | onboardingstatus3 | onboardingstatus4 |
      | rmexeallonboradvale@yopmail.com | Unknown           | Onboarded         | Needs Onboarding  | Not Onboarded     |

  Scenario Outline: Verify patient risk values in database for episode drg issues report under paatient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
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

  Scenario Outline: Verify the potential values in onboarding status are 0,1,2,3 in episode drg issues report under patient id
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

  Scenario Outline: Verify the potential values in onboarding status contains null in episode drg issues report under patient id
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
