@sanity
Feature: Verification of Initial SNF Length of Stay Summary EC Report

  Scenario Outline: User should be able to see Level and Measures on Left Side of Initial SNF Length of Stay Summary Report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Initial SNF Length of Stay Summary" report text for Post Acute Care Reports 
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait untill refresh button is disappeared
    
    When I click on show all filters icon button
    
    Then I should see "Model includes 2" is present under preselected model filter
    Then I should see "Dashboard Admission Month is between (and includes) 2016-01 and 2017-12" is present under preselected anchor month filter
    
    Then I should see Initial SNF Length of Stay Summary reports column Tile text as "Participant"
    Then I should see Initial SNF Length of Stay Summary reports column Tile text as "Episode Initiator"
    Then I should see Initial SNF Length of Stay Summary reports column Tile text as "Anchor Facility"
    Then I should see Initial SNF Length of Stay Summary reports column Tile text as "1st Post Acute Facility"
    
    Then I verify Initial SNF Length of Stay Summary reports column text as "Anchor Admission Month"
    Then I verify Initial SNF Length of Stay Summary reports column text as "2016-01"
    Then I verify Initial SNF Length of Stay Summary reports column text as "2017-03"
    Then I verify Initial SNF Length of Stay Summary reports column text as "# Episodes"
    
    When I click on field-panel-icon button  
    When I click on field-layout-icon button
    
    Then I should see "# Episodes" under "measures" field
    
    Then I should see "1st Post Acute CCN" for SNF LOS Summary under "level" field
    Then I should see "1st Post Acute Facility" for SNF LOS Summary under "level" field
    Then I should see "1st Post Acute Type" for SNF LOS Summary under "level" field
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
    Then I should see "SNF Network Tier" appearing under "level" field
    Then I should see "isAnchorAdmission" appearing under "level" field
    Then I should see "isSNFAdmissionReport" appearing under "level" field
    
    Then I should see "Anchor Admission Month" appearing under "Time" field
    Then I should see "Anchor Admission Quarter" appearing under "Time" field
    Then I should see "Anchor Admission Week" appearing under "Time" field
    Then I should see "Anchor Admission Year" appearing under "Time" field
    Then I should see "Anchor Discharge Date" appearing under "Time" field
    Then I should see "Anchor Discharge Month" appearing under "Time" field
    Then I should see "Anchor Discharge Quarter" appearing under "Time" field
    Then I should see "Anchor Discharge Week" appearing under "Time" field
    Then I should see "Anchor Discharge Year" appearing under "Time" field
    Then I should see "Dashboard Admission Month" appearing under "Time" field
    
    Examples:
    
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |