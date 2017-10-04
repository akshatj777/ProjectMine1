Feature: Episode List Verification Under CARL Reports

  Scenario Outline: User should be able to see Episodes List under Carl Report After clicking on any Episode number link
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
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
    Then I should verify "Carl Submission Date" is appearing under Episodes table
    Then I should verify "Staff Member Email" is appearing under Episodes table
    Then I should verify "Staff Member Role" is appearing under Episodes table
    Then I should verify "Free Text Notes" is appearing under Episodes table
    Then I should verify "DRG Status" is appearing under Episodes table
    Then I should verify "CARL vs NSOC" is appearing under Episodes table
    Then I should verify "Days from anchor discharge to CARL completion" is appearing under Episodes table
    Then I should verify "Eps w Readmits" is appearing under Episodes table
    Then I should verify "Total Readmits" is appearing under Episodes table

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Multiple Payer Users          |
      | multipayerachrpfin@yopmail.com |

  Scenario Outline: User should see patient risk and onboarding status fields in the patient drill through
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I click on "Select Columns" appearing in the new window after clicking on drill through
    Then I switch to new window
    When I switch to reports embedded iframe
    Then I verify "Select Drill-Through Columns" title is appearing on popup after clicking select columns
    And I click on "Patient Risk" checkbox in the popup of select drill through columns
    
    Examples: 
      | email                          |
      | shutestaug231132a@yopmail.com  |
