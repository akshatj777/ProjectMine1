Feature: Verification of performance claims reports episode list drill through under physician

  Scenario Outline: User should be able to click on episode list column and verify the drill through
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    Then I click on a number under episodes column
    And I wait for 10000 milli seconds
    Then I switch to new window
    And I wait for 5000 milli seconds
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "CCN" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "DRG Code" is appearing under Episodes table
    Then I should verify "Beneficiary HIC" is appearing under Episodes table
    Then I should verify "Beneficiary First Name" is appearing under Episodes table
    Then I should verify "Beneficiary Last Name" is appearing under Episodes table
    #Then I should verify "DOB (Key)" is appearing under Episodes table
    Then I should verify "Anchor Admission Quarter" is appearing under Episodes table
    Then I should verify "Anchor Begin Date (Key)" is appearing under Episodes table
    Then I should verify "Anchor End Date" is appearing under Episodes table
    Then I should verify "Episode End Date" is appearing under Episodes table
    Then I should verify "Attending Physician NPI" is appearing under Episodes table
    Then I should verify "Attending Physician Name" is appearing under Episodes table
    Then I should verify "Operating Physician NPI" is appearing under Episodes table
    Then I should verify "Operating Physician Name" is appearing under Episodes table
    Then I should verify "Attributed Physician NPI" is appearing under Episodes table
    Then I should verify "Attributed Physician" is appearing under Episodes table
    Then I should verify "Post Acute CCN" is appearing under Episodes table
    Then I should verify "Post Acute Facility" is appearing under Episodes table
    Then I should verify "Post Acute Category" is appearing under Episodes table
    #Then I should verify "Post Acute Type" is appearing under Episodes table
    Then I should verify "Readmission CCN 1" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 1" is appearing under Episodes table
    Then I should verify "Readmission DRG 1" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 1" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 1" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 1" is appearing under Episodes table
    Then I should verify "Readmission CCN 2" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 2" is appearing under Episodes table
    Then I should verify "Readmission DRG 2" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 2" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 2" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 2" is appearing under Episodes table
    Then I should verify "Readmission CCN 3" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 3" is appearing under Episodes table
    Then I should verify "Readmission DRG 3" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 3" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 3" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 3" is appearing under Episodes table
    Then I should verify "Readmission CCN 4" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 4" is appearing under Episodes table
    Then I should verify "Readmission DRG 4" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 4" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 4" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 4" is appearing under Episodes table
    Then I should verify "Readmission CCN 5" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 5" is appearing under Episodes table
    Then I should verify "Readmission DRG 5" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 5" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 5" is appearing under Episodes table
    Then I should verify "Readmission PDGNS_CD 5" is appearing under Episodes table
    #Then I should verify "Anchor Month" is appearing under Episodes table
    Then I should verify "Readmission Count" is appearing under Episodes table

    Examples: 
      | email                         |
      | shutestaug231132a@yopmail.com |
