Feature: Verification of multiple scenarios for Performance(Claims) under physician

  Scenario Outline: User should be able to see default filters for performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    When I click on show all filters icon button
    Then I verify "Bundle Risk" filter is preselected under the filter

    Examples: 
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |

  Scenario Outline: User should be able to see default measures for performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    Then I should see "Episodes (Eps)" under "measures" field
    Then I should see "% Disch to Home (Adj Hist)" under "measures" field
    Then I should see "% Disch to Home" under "measures" field
    Then I should see "% Disch to HHA (Adj Hist)" under "measures" field
    Then I should see "% Disch to HHA" under "measures" field
    Then I should see "% Disch to SNF (Adj Hist)" under "measures" field
    Then I should see "% Disch to SNF" under "measures" field
    Then I should see "% Disch to IRF (Adj Hist)" under "measures" field
    Then I should see "% Disch to IRF" under "measures" field
    Then I should see "% Disch to LTCH (Adj Hist)" under "measures" field
    Then I should see "% Disch to LTCH" under "measures" field
    Then I should see "% Disch to Other (Adj Hist)" under "measures" field
    Then I should see "% Disch to Other" under "measures" field
    Then I should see "% Eps w Readmit (Adj Hist)" under "measures" field
    Then I should see "% Eps w Readmit" under "measures" field
    Then I should see "Readmit per Eps (Adj Hist)" under "measures" field
    Then I should see "Readmit per Eps" under "measures" field
    Then I should see "SNF Days (Adj Hist)" under "measures" field
    Then I should see "SNF Days" under "measures" field

    Examples: 
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |

  Scenario Outline: User should be able to see levels fields for performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    When I click on field-panel-icon button
    When I click on field-layout-icon button
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

  Scenario Outline: User should be able to remove the default filters for performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    
    Examples: 
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |
      