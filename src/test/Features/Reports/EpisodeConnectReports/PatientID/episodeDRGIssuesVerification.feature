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
    Then I verify "Anchor Hospital Admission Year includes previous Anchor Hospital Admission Year and current Anchor Hospital Admission Year" is appearing under default filter anchor admission year
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "# Episodes" under "measures" field
    Then I should see "Avg. Days to First Working DRG" under "measures" field
    Then I should see "Avg. Days to First Predicted DRG" under "measures" field
    Then I should see "Avg. Days to First Final DRG" under "measures" field
    Then I should see "Anchor Hospital Discharge Facility CCN" appearing under "level" field
    Then I should see "Anchor Hospital Discharge Facility" appearing under "level" field
    Then I should see "Anchor Hospital Discharge Facility Type" appearing under "level" field
    Then I should see "Agrees with CARL Proposal" appearing under "level" field
    Then I should see "Ambulatory Status" appearing under "level" field
    Then I should see "Anchor Hospital Facility" appearing under "level" field
    Then I should see "Anchor Hospital Facility Type" appearing under "level" field
    Then I should see "AtRisk" appearing under "level" field
    Then I should see "BPID" appearing under "level" field
    Then I should see "Bundle" appearing under "level" field
    Then I should see "Bundle Code" appearing under "level" field
    Then I should see "CARL Status" appearing under "level" field
    Then I should see "Dashboard - Anchor CCN" appearing under "level" field
    Then I should see "Capable Caregiver Availability" appearing under "level" field
    Then I should see "Catheter" appearing under "level" field
    Then I should see "Clinical Nursing Oversight" appearing under "level" field
    Then I should see "Cognitive Status" appearing under "level" field
    Then I should see "DOB" appearing under "level" field
    Then I should see "DRG" appearing under "level" field
    Then I should see "Bundle DRG Code" appearing under "level" field
    Then I should see "Bundle DRG Status" appearing under "level" field
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
    Then I should see "Dashboard Admission Month" appearing under "Time" field

    Examples: 
      | email                         |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com |

  #| Multiple Payer Users          |
  #| multipayerachrpfin@yopmail.com |
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
    Then I remove "Anchor Hospital Admission Year" field filter under "Anchor Hospital Admit Date" filter field from default filters
    #Then I remove "Model" field filter under "Model" filter field from default filters
    When I click on field-panel-icon button
    When I click to "Anchor Hospital Discharge Month" field filter under "Anchor Hospital Discharge Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Hospital Discharge Month" in the header text of filter page
    Then I select "PREVIOUS" discharge month in anchor discharge month filter
    And I click on ok button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                         |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com |

  #| Multiple Payer Users          |
  #| multipayerachrpfin@yopmail.com |
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
      #| shutestaug221130a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |
      #| shutestaug15240p@yopmail.com       |
      #| shutestaug221145a@yopmail.com      |

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
      #| shutestaug221130a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |
      #| shutestaug15240p@yopmail.com       |
      #| shutestaug221145a@yopmail.com      |

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

    Examples: 
      | email                           | patientrisk1     | patientrisk2 | patientrisk3 |
      | rmexeallonboradvale@yopmail.com | Calculating Risk | Low          | High         |

  Scenario Outline: User should see patient risk and onboarding status fields in the patient drill through in carl report under next site of care
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

  Scenario Outline: User should be able to see eligibilty field in available fields and check the filter values and apply filter in episode drg issues report under patient id
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

  Scenario Outline: Verification of episode drg issues report with pgp model3 users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    Then I should see Reports Tile text as Patient ID
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    #Default Filters
    Then I verify "Anchor Hospital Admission Year includes previous Anchor Hospital Admission Year and current Anchor Hospital Admission Year" is appearing under preselected anchor hospital admission year filter
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    #Default Dimensions
    Then I should see "Participant" under "dimensions" field
    Then I should see "Episode Initiator" under "dimensions" field
    Then I should see "Issue" under "dimensions" field
    Then I should see "Anchor Hospital Admission Month" under "dimensions" field
    #Default Measures
    Then I should see "# Episodes" under "measures" field
    Then I should see "Avg. Days to First Working DRG" under "measures" field
    Then I should see "Avg. Days to First Predicted DRG" under "measures" field
    Then I should see "Avg. Days to First Final DRG" under "measures" field
    #Default Fields Verification in reports
    And I verify "Participant" column is already present on the reports
    And I verify "Episode Initiator" column is already present on the reports
    And I verify "Issue" column is already present on the reports
    And I verify "Anchor Hospital Admission Month" column is already present on the reports
    And I verify "# Episodes" column is already present on the reports
    And I verify "Avg. Days to First Working DRG" column is already present on the reports
    And I verify "Avg. Days to First Predicted DRG" column is already present on the reports
    And I verify "Avg. Days to First Final DRG" column is already present on the reports
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
    When I click to "Anchor Hospital Discharge Facility CCN" field filter under "Anchor Hospital Discharge Facility" filter field
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
    When I click to "Anchor Post Acute Admission Year" field filter under "Anchor Post Acute Admit Date" filter field
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

  Scenario Outline: Verify the measures field are draggable in episode drg issues report for model3 pgp users
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    Then I should see Reports Tile text as Patient ID
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    #measures field drag and drop
    When I click to "Avg. Days to Last Working DRG" field filter under "Measures" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Avg. Days to Last Working DRG" field is appearing in the layout section after selecting add to report
    Then I verify "Avg. Days to Last Working DRG" column is added to report after selecting add to report option
    When I click to "Avg. Days to Last Predicted DRG" field filter under "Measures" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Avg. Days to Last Predicted DRG" field is appearing in the layout section after selecting add to report
    Then I verify "Avg. Days to Last Predicted DRG" column is added to report after selecting add to report option
    When I click to "Avg. Days to Last Final DRG" field filter under "Measures" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Avg. Days to Last Final DRG" field is appearing in the layout section after selecting add to report
    Then I verify "Avg. Days to Last Final DRG" column is added to report after selecting add to report option

    Examples: 
      | email                         |
      | shutestauf171115a@yopmail.com |
      | shutestagu22945am@yopmail.com |

  Scenario Outline: Verify the drill patient drill through values in episode drg issues report for model3 pgp user
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
    Then I should verify "Issue" is appearing under Episodes table
    Then I should verify "First Predicted Bundle" is appearing under Episodes table
    Then I should verify "First Predicted DRG" is appearing under Episodes table
    Then I should verify "First Predicted DRG Date" is appearing under Episodes table
    Then I should verify "First Working Bundle" is appearing under Episodes table
    Then I should verify "First Working DRG" is appearing under Episodes table
    Then I should verify "First Working DRG Date" is appearing under Episodes table
    Then I should verify "First Final Bundle" is appearing under Episodes table
    Then I should verify "First Final DRG" is appearing under Episodes table
    Then I should verify "First Final DRG Date" is appearing under Episodes table
    Then I should verify "Last Predicted Bundle" is appearing under Episodes table
    Then I should verify "Last Predicted DRG" is appearing under Episodes table
    Then I should verify "Last Predicted DRG Date" is appearing under Episodes table
    Then I should verify "Last Working Bundle" is appearing under Episodes table
    Then I should verify "Last Working DRG" is appearing under Episodes table
    Then I should verify "Last Working DRG Date" is appearing under Episodes table
    Then I should verify "Last Final Bundle" is appearing under Episodes table
    Then I should verify "Last Final DRG" is appearing under Episodes table
    Then I should verify "Last Final DRG Date" is appearing under Episodes table
    Then I should verify "Anchor Hospital Admit Date" is appearing under Episodes table
    Then I should verify "Anchor Hospital Discharge Date" is appearing under Episodes table
    Then I click on "Select Columns" appearing in the new window after clicking on drill through
    Then I switch to new window
    When I switch to reports embedded iframe
    Then I verify "Select Drill-Through Columns" title is appearing on popup after clicking select columns
    Then I should verify "Anchor Hospital Discharge Facility" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Hospital Discharge Facility CCN" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Provider" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Provider CCN" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Provider" is appearing under Episodes drill through columns popup
    Then I should verify "Anchor Post Acute Discharge Provider CCN" is appearing under Episodes drill through columns popup
    Then I should verify "First Working Bundle(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "First Working DRG Date(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "First Predicted DRG(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "First Predicted Bundle(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "First Predicted DRG Date(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "First Final DRG(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "First Final Bundle(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "First Final DRG Date(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Working DRG(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Working Bundle(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Working DRG Date(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Predicted DRG(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Predicted Bundle(Post Acute Admission)" is appearing under Episodes drill through columns popup
    Then I should verify "Last Predicted DRG Date(Post Acute Admission)" is appearing under Episodes drill through columns popup
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

  Scenario Outline: Verify globalfilters in episode drg issues report for model3 pgp users
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

  Scenario Outline: User should be able to verify anchor post acute fields for Model3 users in episode drg issues report
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
    When I click on field-layout-icon button
    When I click to "Model" field filter under "Model" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Model" field is appearing in the layout section after selecting add to report
    Then I verify "Model" column is added to report after selecting add to report option
    When I click to "Model" field filter under "Model" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Model" in the header text of filter page
    And I should see "<model>" in the filter value list
    And I click on "<model>" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<model>" result in "Model" field column for "Model" filter field
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
    When I click to "Anchor Post Acute Discharge Care Type" field filter under "Dim Anchor Post Acute Discharge Care Setting" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Type" in the header text of filter page
    And I should see "No additional information available" in the filter value list
    And I click on "No additional information available" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Setting" field filter under "Dim Anchor Post Acute Discharge Care Setting" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Setting" in the header text of filter page
    And I should see "NOT AVAILABLE" in the filter value list
    And I click on "NOT AVAILABLE" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Type Detail (EC)" field filter under "Dim Anchor Post Acute Discharge Care Setting Type" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Type Detail (EC)" in the header text of filter page
    And I should see "No Care Setting or Care Type selected" in the filter value list
    And I click on "No Care Setting or Care Type selected" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Type Code (EC)" field filter under "Dim Anchor Post Acute Discharge Care Setting Type" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Type Code (EC)" in the header text of filter page
    And I should see "Not Available" in the filter value list
    And I click on "Not Available" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Setting Code (EC)" field filter under "Dim Anchor Post Acute Discharge Care Setting Code" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Setting Code (EC)" in the header text of filter page
    And I should see "Not Available" in the filter value list
    And I click on "Not Available" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                                | model |
      | shutestauf171115a@yopmail.com        |     3 |
      | shutestagu22945am@yopmail.com        |     3 |
      | MoneMthreetestuser@yopmail.com       |     3 |
      | MtwoMthreetestuser@yopmail.com       |     3 |
      | OPSFINMoneMthreetestuser@yopmail.com |     3 |
      | OPSFINMtwoMthreetestuser@yopmail.com |     3 |

  Scenario Outline: User with model2 shoould not see episode status potential M3 value under episode drg issues report
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
      
  Scenario Outline: User should be able to verify anchor post acute fields other than Model3 users in episode drg issues report
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
    When I click on field-layout-icon button
    When I click to "Model" field filter under "Model" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
    And I verify "Model" field is appearing in the layout section after selecting add to report
    Then I verify "Model" column is added to report after selecting add to report option
    When I click to "Model" field filter under "Model" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Model" in the header text of filter page
    And I should see "<model>" in the filter value list
    And I click on "<model>" in the filter value list
    And I click on add selected in the filter model
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<model>" result in "Model" field column for "Model" filter field
    When I click to "Anchor Post Acute Discharge Care Type" field filter under "Dim Anchor Post Acute Discharge Care Setting" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Type" in the header text of filter page
    And I should see "No additional information available" in the filter value list
    And I click on "No additional information available" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Setting" field filter under "Dim Anchor Post Acute Discharge Care Setting" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Setting" in the header text of filter page
    And I should see "NOT AVAILABLE" in the filter value list
    And I click on "NOT AVAILABLE" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Type Detail (EC)" field filter under "Dim Anchor Post Acute Discharge Care Setting Type" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Type Detail (EC)" in the header text of filter page
    And I should see "No Care Setting or Care Type selected" in the filter value list
    And I click on "No Care Setting or Care Type selected" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Type Code (EC)" field filter under "Dim Anchor Post Acute Discharge Care Setting Type" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Type Code (EC)" in the header text of filter page
    And I should see "Not Available" in the filter value list
    And I click on "Not Available" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Anchor Post Acute Discharge Care Setting Code (EC)" field filter under "Dim Anchor Post Acute Discharge Care Setting Code" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Post Acute Discharge Care Setting Code (EC)" in the header text of filter page
    And I should see "Not Available" in the filter value list
    And I click on "Not Available" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    
    Examples: 
      | email                                | model |
      | shutestaug231132a@yopmail.com        |     2 |
      | reptestachmodel2opsfin@yopmail.com   |     2 |
      | Opsfinmodelone@yopmail.com           |     1 |
      | ModeloneRPFIN@yopmail.com            |     1 |
      | MoneMtwotestuser@yopmail.com         |     1 |
      | MoneMtwotestuser@yopmail.com         |     2 |
      | MoneMthreetestuser@yopmail.com       |     1 |
      | MtwoMthreetestuser@yopmail.com       |     2 |
      | OPSFINMoneMtwotest@yopmail.com       |     1 |
      | OPSFINMoneMtwotest@yopmail.com       |     2 |
      | OPSFINMoneMthreetestuser@yopmail.com |     1 |
      | OPSFINMtwoMthreetestuser@yopmail.com |     2 |