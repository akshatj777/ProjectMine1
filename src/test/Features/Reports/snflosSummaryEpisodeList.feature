Feature: Episode List Verification Under Initial SNF Length of stay summary Reports

Scenario Outline: User should be able to see Episodes List under Carl Report After clicking on any Episode number link
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
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column of initial snf length of stay summary report
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "DRG Code" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Patient" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "Physician Name" is appearing under Episodes table
    Then I should verify "CCN" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "Anchor Discharge Date" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Setting" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Setting Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type Code (EC)" is appearing under Episodes table
    Then I should verify "Anchor Discharge Care Type Detail (EC)" is appearing under Episodes table
    Then I should verify "Post Acute Discharge Care Setting" is appearing under Episodes table
    Then I should verify "Post Acute Discharge Care Type" is appearing under Episodes table
    Then I should verify "Post Acute Discharge Care Setting Code (EC)" is appearing under Episodes table
    Then I should verify "Post Acute Discharge Care Type Code (EC)" is appearing under Episodes table
    Then I should verify "Post Acute Discharge Care Type Detail (EC)" is appearing under Episodes table
    Then I should verify "DataQualityFlag" is appearing under Episodes table
    Then I should verify "Anchor Month" is appearing under Episodes table
    Then I should verify "DataQualityFlag_0" is appearing under Episodes table
    Then I should verify "# Episodes" is appearing under Episodes table
    Then I should verify "LOS Variance" is appearing under Episodes table
    Then I should verify "Recommended LOS" is appearing under Episodes table
    
    Examples: 
      | email                          |
      | shutestaug231132a@yopmail.com  |
      
#Scenario Outline: User should see patient risk and onboarding status fields in the patient drill through in initial snf length of stay summary report under post acute care
    #Given I am on the login page
    #When I enter email field <email> for login
    #And I enter password field Testing1 for Login
    #Then I click Access button
    #And I wait to see "Reports" tile
    #When I click on the "Reports" tile
    #And I wait to see "Post Acute Care" under reports tile text
    #When I click on the Reports Tile with text "Post Acute Care"
    #Then I click on "Initial SNF Length of Stay Summary" report text for Post Acute Care Reports
    #And I wait for the reports embedded iframe to load
    #When I switch to reports embedded iframe
    #And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    #And I wait until refresh button is disappeared
    #Then I click on a number under episodes column
    #Then I switch to new window
    #And I wait for the elements to load in new window after clicking one of the episode
    #Then I click on "Select Columns" appearing in the new window after clicking on drill through
    #Then I switch to new window
    #When I switch to reports embedded iframe
    #Then I verify "Select Drill-Through Columns" title is appearing on popup after clicking select columns
    #And I click on "Onboarding Status" checkbox under "Onboarding Status" in the popup of select drill through columns
    #And I click on "Patient Risk" checkbox under "Patient" in the popup of select drill through columns
    #And I click on ok button after selecting drill through column
    #Then I switch to new window
    #And I wait for the elements to load in new window after clicking one of the episode
    #Then I should verify "Onboarding Status" is appearing under Episodes table
    #Then I should verify "Patient Risk" is appearing under Episodes table
    #
    #Examples: 
      #| email                          |
      #| shutestaug231132a@yopmail.com  |