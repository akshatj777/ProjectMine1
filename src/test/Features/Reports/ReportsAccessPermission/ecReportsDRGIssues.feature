Feature: Verification of Episode With DRG Issues EC Report

Scenario Outline: User should be able to see Level and Measures on Left Side of Episode With DRG Issues Report

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode with DRG Issue" report text for Patient ID Reports 
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    When I click on show all filters icon button
    When I click on field-panel-icon button
    When I click on field-layout-icon button
    And I wait for 2000 milli seconds
    
    Then I should see "# Episodes" under "measures" field
    Then I should see "Avg Days to Working" under "measures" field
    Then I should see "Avg Days to Final" under "measures" field
    
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Participant" in the header text of filter page
    And I should see "<participant>" in the filter value list
    And I click on "<participant>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<participant>" result in "Participant" field column for "Episode Initiator" filter field
    
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<BPID1>" result in "BPID" field column for "Episode Initiator" filter field
    
    Examples:
    
      | email                         | Menu 1      | participant | BPID1   |
      | shutestaug231132a@yopmail.com | Patient ID  | Penn        | 2070-021|
      
Scenario Outline: User should be able to see Episodes List under Episode With DRG Issue Report After clicking on any Episode number link
    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode with DRG Issue" report text for Patient ID Reports 
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    Then I click on one of the episode column number under Episode with DRG Issue Report
    And I wait for 5000 milli seconds
    Then I switch to new window
    And I wait for 3000 milli seconds
    
    Then I should verify "Anchor Facility" is appearing under Episodes table
    Then I should verify "Admitted" is appearing under Episodes table
    Then I should verify "Discharged" is appearing under Episodes table
    Then I should verify "Working DRG" is appearing under Episodes table
    Then I should verify "Working Decision DT" is appearing under Episodes table
    Then I should verify "Working DRG Desc" is appearing under Episodes table
    Then I should verify "Working Episode" is appearing under Episodes table
    Then I should verify "Final DRG" is appearing under Episodes table
    Then I should verify "Final Decision DT" is appearing under Episodes table
    Then I should verify "Final DRG Desc" is appearing under Episodes table
    Then I should verify "Final Episode" is appearing under Episodes table
    Then I should verify "Predicted DRG" is appearing under Episodes table
    Then I should verify "Predicted Decision DT" is appearing under Episodes table
    Then I should verify "Predicted DRG Desc" is appearing under Episodes table
    Then I should verify "Predicted Episode" is appearing under Episodes table
    Then I should verify "Episode Status" is appearing under Episodes table
    Then I should verify "Issue" is appearing under Episodes table
    Then I should verify "Medicare ID" is appearing under Episodes table
    Then I should verify "Patient Name" is appearing under Episodes table
    Then I should verify "DOB" is appearing under Episodes table
    Then I should verify "Eligibility" is appearing under Episodes table
    Then I should verify "Week" is appearing under Episodes table
    Then I should verify "BPID" is appearing under Episodes table
    Then I should verify "EI Name" is appearing under Episodes table
    Then I should verify "Days to Working" is appearing under Episodes table
    Then I should verify "Days To Final" is appearing under Episodes table
    
    Examples:
    
      | email                         |
      | shutestaug231132a@yopmail.com |
      
Scenario Outline: User should be able to remove default filters from Episode With DRG Issues Report and add Anchor Discharge Month Filter

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode with DRG Issue" report text for Patient ID Reports 
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    
    Then I remove "Participant ID" field filter under "Episode Initiator" filter field from default filters
    Then I remove "BPID" field filter under "Episode Initiator" filter field from default filters
    Then I remove "CCN" field filter under "Anchor Facility" filter field from default filters
       
    Examples:
    
      | email                         |
      | shutestaug231132a@yopmail.com |
