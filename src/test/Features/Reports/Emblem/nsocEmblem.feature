Feature: Verification of filters under Next Site of Care Summary report

  Scenario Outline: Verification of participant,anchor facility,episode initiator,bpid and ccn filters under next site of care summary report
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for 60000 milli seconds
    When I switch to reports embedded iframe
    When I click on field-panel-icon button
    And I wait for 4000 milli seconds
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
    When I click to "Episode Initiator" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Episode Initiator" in the header text of filter page
    And I should see "<episodeInitiator1>" in the filter value list
    And I click on "<episodeInitiator1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 5000 milli seconds
    And I should see "<episodeInitiator1>" result in "Episode Initiator" field column for "Episode Initiator" filter field
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I click on "<ccn1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 4000 milli seconds
    And I should see "<ccn1>" result in "CCN" field column for "Anchor Facility" filter field
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<BPID1>" result in "BPID" field column for "Episode Initiator" filter field
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Payer" in the header text of filter page
    And I should see "<payer1>" in the filter value list
    And I click on "<payer1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<payer1>" result in "Payer" field column for "Episode Initiator" filter field
    When I switch to default window from iframe
    When I click on reports tab appearing on reports page
    And I wait for 2000 milli seconds
    Then I verify current page "Reports" title

    Examples: 
      | email                         | participant | anchorFacility1                  | anchorFacility2                  | episodeInitiator1                | ccn1   | BPID1    | payer1 |
      | emblemachrpfin@yopmail.com    | Penn        | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center | 999999 | 7000-000 | 100002 |
      | emblemrpnofin@yopmail.com     | Penn        | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center | 999999 | 7000-000 | 100002 |
      | Emblemachopsfin@yopmail.com   | Penn        | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center | 999999 | 7000-000 | 100002 |
      | emblemachopsnofin@yopmail.com | Penn        | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center | 999999 | 7000-000 | 100002 |
      | emblemachopsspend@yopmail.com | Penn        | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center | 999999 | 7000-000 | 100002 |
      | emblemecreportach@yopmail.com | Penn        | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Penn Presbyterian Medical Center | 999999 | 7000-000 | 100002 |
