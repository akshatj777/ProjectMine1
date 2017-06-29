Feature: Verification of Readmissions Claims Report

Scenario Outline: User should be able to see Measures,Levels and Preselected Filters

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports 
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    
    When I click on show all filters icon button
    And I wait for 1000 milli seconds
    
    Then I should see "Dashboard Admission Month is between (and includes) 2016-01 and 2017-12" is present under preselected anchor month filter
    Then I verify "Bundle Risk" filter is preselected under the filter
    Then I should see "Bundle Code includes All" is present under preselected Bundle Code filter
    
    When I click on field-panel-icon button
    And I wait for 1000 milli seconds
    When I click on field-layout-icon button
    And I wait for 1000 milli seconds
    
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
    Then I should see "SNF Network Tier" appearing under "level" field
    
    Examples:
    
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |