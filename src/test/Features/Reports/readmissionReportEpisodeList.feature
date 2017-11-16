Feature: Episode List Verification Under Readmission Reports

  Scenario Outline: User should be able to see Episodes List under Readmission Report After clicking on any Episode number link
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    And I wait until refresh button is disappeared
    Then I click on a number under episodes column
    Then I switch to new window
    And I wait for the elements to load in new window after clicking one of the episode
    Then I should verify "Participant" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "Episode Initiator" is appearing under Episodes table
    Then I should verify "MDC" is appearing under Episodes table
    Then I should verify "DRG" is appearing under Episodes table
    Then I should verify "DRG Code" is appearing under Episodes table
    Then I should verify "Bundle" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Patient" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "Episode Status" is appearing under Episodes table
    Then I should verify "AtRisk" is appearing under Episodes table
    Then I should verify "Anchor Admission Year" is appearing under Episodes table
    Then I should verify "Anchor Admission Quarter" is appearing under Episodes table
    Then I should verify "Anchor Admission Month" is appearing under Episodes table
    Then I should verify "Anchor Admission Week" is appearing under Episodes table
    Then I should verify "Anchor Begin Date" is appearing under Episodes table
    Then I should verify "Anchor Discharge Date" is appearing under Episodes table
    Then I should verify "Anchor Facility Type" is appearing under Episodes table
    Then I should verify "CCN" is appearing under Episodes table
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "1st Post Acute CCN" is appearing under Episodes table
    Then I should verify "Model" is appearing under Episodes table
    Then I should verify "Readmission CCN 1" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 1" is appearing under Episodes table
    Then I should verify "Readmission DRG 1" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 1" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 1" is appearing under Episodes table
    Then I should verify "Readmission CCN 2" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 2" is appearing under Episodes table
    Then I should verify "Readmission DRG 2" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 2" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 2" is appearing under Episodes table
    Then I should verify "Readmission CCN 3" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 3" is appearing under Episodes table
    Then I should verify "Readmission DRG 3" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 3" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 3" is appearing under Episodes table
    Then I should verify "Readmission CCN 4" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 4" is appearing under Episodes table
    Then I should verify "Readmission DRG 4" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 4" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 4" is appearing under Episodes table
    Then I should verify "Readmission CCN 5" is appearing under Episodes table
    Then I should verify "Readmission Facility Name 5" is appearing under Episodes table
    Then I should verify "Readmission DRG 5" is appearing under Episodes table
    Then I should verify "Readmission Admit Date 5" is appearing under Episodes table
    Then I should verify "Readmission Discharge Date 5" is appearing under Episodes table
    Then I should verify "DRG Status" is appearing under Episodes table
    Then I should verify "Anchor Month" is appearing under Episodes table
    Then I should verify "# Episodes" is appearing under Episodes table
    Then I should verify "Avg Days to Final DRG" is appearing under Episodes table
    Then I should verify "Avg Days to Predicted DRG" is appearing under Episodes table
    Then I should verify "Avg Days to Working DRG" is appearing under Episodes table
    Then I should verify "Eps w Readmits" is appearing under Episodes table
    Then I should verify "Readmit - 15 Days" is appearing under Episodes table
    Then I should verify "Readmit - 30 Days" is appearing under Episodes table
    Then I should verify "Readmit - 60 Days" is appearing under Episodes table
    Then I should verify "Readmit - 7 Days" is appearing under Episodes table
    Then I should verify "Readmit - 90 Days" is appearing under Episodes table
    Then I should verify "Readmits Leaked" is appearing under Episodes table
    Then I should verify "Total Readmits" is appearing under Episodes table

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Multiple Payer Users          |
      #| multipayerachrpfin@yopmail.com |

  #Scenario Outline: User should see patient risk and onboarding status fields in the patient drill through in readmission report under readmissions
    #Given I am on the login page
    #When I enter email field <email> for login
    #And I enter password field Testing1 for Login
    #Then I click Access button
    #And I wait to see "Reports" tile
    #When I click on the "Reports" tile
    #And I wait to see "Readmissions" under reports tile text
    #When I click on the Reports Tile with text "Readmissions"
    #Then I click on "Readmissions" report text for Readmissions Reports
    #And I wait for the reports embedded iframe to load
    #When I switch to reports embedded iframe
    #And I will wait to see "Readmissions EC" is appearing inside the iframe
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
      #| email                         |
      #| shutestaug231132a@yopmail.com |
