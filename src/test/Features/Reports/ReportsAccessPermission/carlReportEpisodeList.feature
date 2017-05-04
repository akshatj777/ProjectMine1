Feature: Episode List Verification Under CARL Reports

Scenario Outline: User should be able to see Episodes List under Carl Report After clicking on any Episode number link

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports 
    And I wait for 30000 milli seconds
    When I switch to reports embedded iframe
    Then I click on a number under episodes column
    And I wait for 5000 milli seconds
    Then I switch to new window
    And I wait for 3000 milli seconds
    
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "MDC" is appearing under Episodes table
    Then I should verify "DRG" is appearing under Episodes table
    Then I should verify "DRG Code" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Eligibility" is appearing under Episodes table
    Then I should verify "Patient" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "Episode Status" is appearing under Episodes table
    Then I should verify "AtRisk" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "1st Post Acute CCN" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Setting" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Setting Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type Detail (EC)" is appearing under Episodes table
    Then I should verify "Model" is appearing under Episodes table
    Then I should verify "CARL Status" is appearing under Episodes table
    Then I should verify "Cognitive Status" is appearing under Episodes table
    Then I should verify "Agrees with CARL Proposal" is appearing under Episodes table
    Then I should verify "Disagreement Reasons" is appearing under Episodes table
    Then I should verify "Ambulatory Status" is appearing under Episodes table
    Then I should verify "Capable Caregiver Availability" is appearing under Episodes table
    Then I should verify "Ostomy Care" is appearing under Episodes table
    Then I should verify "Tube Feeding" is appearing under Episodes table
    Then I should verify "Tracheostomy Care" is appearing under Episodes table
    Then I should verify "Catheter" is appearing under Episodes table
    Then I should verify "Injectable Medications" is appearing under Episodes table
    Then I should verify "Clinical Nursing Oversight" is appearing under Episodes table
    Then I should verify "Teaching and Training Activities" is appearing under Episodes table
    Then I should verify "Wound Care" is appearing under Episodes table
    Then I should verify "Oxygen or Other Respiratory Support" is appearing under Episodes table
    Then I should verify "Therapy Needs" is appearing under Episodes table
    Then I should verify "DRG Status" is appearing under Episodes table
    Then I should verify "# Episodes" is appearing under Episodes table
    Then I should verify "CARL Assigned" is appearing under Episodes table
    Then I should verify "CARL Completed" is appearing under Episodes table
    Then I should verify "CARL In Progress" is appearing under Episodes table
    Then I should verify "CARL vs NSOC" is appearing under Episodes table
    Then I should verify "Eps w Readmits" is appearing under Episodes table
    Then I should verify "HHA Agreed" is appearing under Episodes table
    Then I should verify "HHA CARL" is appearing under Episodes table
    Then I should verify "HHA NSOC" is appearing under Episodes table
    Then I should verify "Home Agreed" is appearing under Episodes table
    Then I should verify "Home CARL" is appearing under Episodes table
    Then I should verify "Home NSOC" is appearing under Episodes table
    Then I should verify "Not Enough Info (CARL)" is appearing under Episodes table
    Then I should verify "Not Enough Info (NSOC)" is appearing under Episodes table
    Then I should verify "Not Enough Info Agreed" is appearing under Episodes table
    Then I should verify "PAC Agreed" is appearing under Episodes table
    Then I should verify "PAC CARL" is appearing under Episodes table
    Then I should verify "PAC NSOC" is appearing under Episodes table
    Then I should verify "Total Readmits" is appearing under Episodes table
    
    Examples:
    
      | email                         |
      | shutestaug231132a@yopmail.com |