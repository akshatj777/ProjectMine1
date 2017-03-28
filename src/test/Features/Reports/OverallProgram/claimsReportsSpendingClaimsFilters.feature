Feature: Verification of Spending Claims Report Filters

Scenario Outline: User should apply Participant and BPID Filters

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
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe 
    
    When I click on field-panel-icon button
    And I wait for 2000 milli seconds
    
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant" in the header text of filter page
    And I should see "<participant>" in the filter value list
    And I click on "<participant>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<participant>" result in "Participant" field column for "Episode Initiator" filter field
    
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Add" option from select options of filter field
    And I wait for 2000 milli seconds
    
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<CCN1>" in the filter value list
    And I click on "<CCN1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<CCN1>" result in "CCN" field column for "Anchor Facility" filter field
    
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Add" option from select options of filter field
    And I wait for 2000 milli seconds
    
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<BPID1>" result in "BPID" field column for "Episode Initiator" filter field
     
    Examples:
    
      | email                         | participant | BPID1   | CCN1   |
      | shutestaug231132a@yopmail.com | Penn        | 2070-021| 390223 |
      
Scenario Outline: User should be click on one of the link under episodes and verify episode list columns

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
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    Then I click on a number under episodes column of spending claims report
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
    Then I should verify "Anchor Admission Quarter" is appearing under Episodes table
    Then I should verify "Anchor Begin Date (Key)" is appearing under Episodes table
    Then I should verify "Anchor End Date" is appearing under Episodes table
    Then I should verify "Attending Physician NPI" is appearing under Episodes table
    Then I should verify "Attending Physician Name" is appearing under Episodes table
    Then I should verify "Operating Physician NPI" is appearing under Episodes table
    Then I should verify "Operating Physician Name" is appearing under Episodes table
    Then I should verify "Attributed Physician NPI" is appearing under Episodes table
    Then I should verify "Attributed Physician" is appearing under Episodes table
    Then I should verify "Spending Category" is appearing under Episodes table
    
    Examples:
    
      | email                         |
      | shutestaug231132a@yopmail.com |
      
Scenario Outline: User should remove the existing default filters

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
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    When I click on show all filters icon button
    And I wait for 2000 milli seconds
    
    Then I remove "Current AtRisk" field filter under "Current AtRisk" filter field from default filters
      
    Examples:
    
      | email                         |
      | shutestaug231132a@yopmail.com |
