Feature: Episode avg days to drg patient id

  Scenario Outline: Verify that Episode avg days to drg report display data based on provisioning
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode Avg Days to DRG" report text for Patient ID Reports
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe

    Then I should see Episode Avg Day to DRG reports column Tile text as "Episode Initiator"
    Then I should see Episode Avg Day to DRG reports column Tile text as "Anchor Facility"
    Then I should see Episode Avg Day to DRG reports column Tile text as "BPID"

    When I click on field-panel-icon button
    And I wait for 4000 milli seconds

    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    And I click on "<anchorFacility2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<anchorFacility2>" result in "Anchor Facility" field column for "Anchor Facility" filter field

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

    When I switch to default window from iframe
    When I click on close reports cross icon on report page
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    When I switch to default window from iframe
    When I click on close reports cross icon on report page
    And I wait for 1000 milli seconds
    Then I verify current page "Reports" title

    Examples:
      | email                              | anchorFacility1                    | anchorFacility2               | BPID1    |
      | shutestaug231132a@yopmail.com      | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | 2070-022 |
      | shutestaug221130a@yopmail.com      | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | 2070-022 |
      | reptestachmodel2opsfin@yopmail.com | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | 2070-022 |
      | shutestaug15240p@yopmail.com       | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | 2070-022 |
      | shutestaug221145a@yopmail.com      | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | 2070-022 |
      | repopsnofintest@yopmail.com        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | 2070-022 |
