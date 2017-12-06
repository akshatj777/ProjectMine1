Feature: Verification of filters under Initial SNF Length of Stay Summary report under Post Acute Care for multiple payers

  Scenario Outline: Verification of participant,anchor facility,episode initiator,bpid and ccn filters under initial snf length of stay summary reports
                    for user with multiple payer

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
    When I click on field-panel-icon button
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Payer" in the header text of filter page
    #And I should see "<payer1>" in the filter value list
    And I should see "<payer2>" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Participant ID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant ID" in the header text of filter page
    #And I should see "<participant id1>" in the filter value list
    And I should see "<participant id2>" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    #And I should see "<BPID1>" in the filter value list
    #And I should see "<BPID2>" in the filter value list
    And I should see "<BPID3>" in the filter value list
    And I should see "<BPID4>" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    #And I should see "<ccn1>" in the filter value list
    #And I should see "<ccn2>" in the filter value list
    And I should see "<ccn3>" in the filter value list
    And I should see "<ccn4>" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose add to report option from select options of filter field
    Then I verify "Payer" field is appearing in the report table after clicking on add to report
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Payer" in the header text of filter page
    #And I should see "<payer1>" in the filter value list
    And I should see "<payer2>" in the filter value list
    And I click on "<payer2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<payer2>" result in "Payer" field column for "Episode Initiator" filter field
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant" in the header text of filter page
    And I should see "<participant>" in the filter value list
    And I click on "<participant>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<participant>" result in "Participant" field column for "Episode Initiator" filter field
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    And I click on "<anchorFacility1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<anchorFacility1>" result in "Anchor Facility" field column for "Anchor Facility" filter field
    When I click to "Episode Initiator" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Episode Initiator" in the header text of filter page
    And I should see "<episodeInitiator1>" in the filter value list
    And I click on "<episodeInitiator1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<episodeInitiator1>" result in "Episode Initiator" field column for "Episode Initiator" filter field
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn3>" in the filter value list
    And I click on "<ccn3>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<ccn3>" result in "CCN" field column for "Anchor Facility" filter field
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID3>" in the filter value list
    And I click on "<BPID3>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<BPID3>" result in "BPID" field column for "Episode Initiator" filter field
    When I click to "Participant ID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant ID" in the header text of filter page
    And I should see "<participant id2>" in the filter value list
    And I click on "<participant id2>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<participant id2>" result in "Participant ID" field column for "Episode Initiator" filter field
    When I switch to default window from iframe
    When I click on reports tab appearing on reports page
    Then I verify current page "Reports" title

    Examples: 
      | email                              | participant | anchorFacility1                    | anchorFacility2               | episodeInitiator1                | ccn1   | BPID1    | payer1        | payer2   | participant id1 | participant id2 | BPID2    | BPID3    | BPID4    | ccn2   | ccn3   | ccn4   |
      | multipayerachrpfin@yopmail.com     | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | Penn Presbyterian Medical Center | 999999 | 7000-000 | Emblem Health | Medicare |          222222 |          441348 | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayerachrpnofin@yopmail.com   | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | Penn Presbyterian Medical Center | 999999 | 7000-000 | Emblem Health | Medicare |          222222 |          441348 | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayerachopsfin@yopmail.com    | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | Penn Presbyterian Medical Center | 999999 | 7000-000 | Emblem Health | Medicare |          222222 |          441348 | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayeachopsnofin@yopmail.com   | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | Penn Presbyterian Medical Center | 999999 | 7000-000 | Emblem Health | Medicare |          222222 |          441348 | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayerachopsspend@yopmail.com  | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | Penn Presbyterian Medical Center | 999999 | 7000-000 | Emblem Health | Medicare |          222222 |          441348 | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayerachecreports@yopmail.com | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital | Penn Presbyterian Medical Center | 999999 | 7000-000 | Emblem Health | Medicare |          222222 |          441348 | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |

  Scenario Outline: User should be able to edit and delete the applied payer filter in snf length of stay summary report under post acute care
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
    When I click on field-panel-icon button
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose add to report option from select options of filter field
    Then I verify "Payer" field is appearing in the report table after clicking on add to report
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Payer" in the header text of filter page
    And I should see "<payer1>" in the filter value list
    And I click on "<payer1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<payer1>" result in "Payer" field column for "Episode Initiator" filter field
    When I click on filter count label to see preselected filters
    Then I verify "Payer includes Medicare" is appearing in the preselected filter for payer
    Then I remove "Payer" field filter under "Episode Initiato" filter field from default filters
    And I should not see "Payer includes Medicare" in the preselected filter for payer
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Payer" in the header text of filter page
    And I should see "<payer1>" in the filter value list
    And I click on "<payer1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<payer1>" result in "Payer" field column for "Episode Initiator" filter field

    Examples: 
      | email                          | payer1   |
      | multipayerachrpfin@yopmail.com | Medicare |