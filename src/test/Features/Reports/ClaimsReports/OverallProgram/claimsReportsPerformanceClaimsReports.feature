Feature: Verification Claims Report For Performance (Claims)

  Scenario Outline: User should be able to see Measures,Levels and Preselected Filters
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    When I click on show all filters icon button
    Then I should see "Dashboard Admission Month is between (and includes) 2016-01 and 2017-12" is present under preselected anchor month filter
    Then I verify "Bundle Risk" filter is preselected under the filter
    Then I should see "Bundle Code includes All" is present under preselected Bundle Code filter
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
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Emblem Payer Users            |
      | emblemachrpfin@yopmail.com     |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: Verify initial snf los is appearing and not initial snf los (adj hist) in performance report under overall program in measures available fields
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "Initial SNF LOS" in the search field textbox for filters
    And I verify "Initial SNF LOS" is appearing in the fields after searching
    And I should not see "Initial SNF LOS (Adj Hist)" in the searched results under the measures

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |

  Scenario Outline: Remedy awardee convener whose BPID starting with 2070 with model2 is able to see fracture/non fracture filters in performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    Then I enter "fracture" in the search field textbox for filters
    And I verify "Fracture/Non-Fracture" is appearing in the level fields after searching

    Examples: 
      | email                          |
      | multipayerachrpfin@yopmail.com |
