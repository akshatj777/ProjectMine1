Feature: Verification of multiple scenarios for Spending(Claims) under physician

  Scenario Outline: User should be able to see default filters for physician spending claims reports under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 1000 milli seconds
    Then I verify "Current AtRisk" filter is preselected under the filter

    Examples: 
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |

  Scenario Outline: User should be able to see default measures for physician spending claims reports
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    When I click on field-panel-icon button
    And I wait for 1000 milli seconds
    When I click on field-layout-icon button
    And I wait for 1000 milli seconds
    Then I should see "Episodes (Eps)" under "measures" field
    Then I should see "Target Price" under "measures" field
    Then I should see "(Adj Hist) Spending Avg" under "measures" field
    Then I should see "Spending Avg" under "measures" field
    Then I should see "Total Spending" under "measures" field

    Examples: 
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |

  Scenario Outline: User should be able to see levels fields for physician spending claims reports
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    When I click on field-panel-icon button
    And I wait for 1000 milli seconds
    When I click on field-layout-icon button
    And I wait for 1000 milli seconds
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
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |

  Scenario Outline: User should be able to remove the default filters from physician spending claims reports
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    Then I remove "Current AtRisk" field filter under "Current AtRisk" filter field from default filters

    Examples: 
      | email                              |
      #| Medicare Payer Users              |
      | shutestaug231132a@yopmail.com      |
      #| Emblem Payer Users                |
      | emblemachrpfin@yopmail.com         |
      #| Multiple Payer Users              |
      | multipayerachrpfin@yopmail.com     |
