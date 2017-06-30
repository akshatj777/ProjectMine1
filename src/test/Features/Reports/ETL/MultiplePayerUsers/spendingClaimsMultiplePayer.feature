Feature: Verification of filters under Spending Claims report under Overall Program for multiple payers

Scenario Outline: Verification of participant,anchor facility,episode initiator,bpid and ccn filters under spending claims reports 
                  for user with multiple payer
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for 60000 milli seconds
    When I switch to reports embedded iframe
    When I click on field-panel-icon button
    And I wait for 4000 milli seconds
    
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Payer" in the header text of filter page
    And I should see "<payer1>" in the filter value list
    And I should see "<payer2>" in the filter value list
    And I click on cancel button from filter
    And I wait for 2000 milli seconds
    
    When I click to "Participant ID" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Participant ID" in the header text of filter page
    And I should see "<participant id1>" in the filter value list
    And I should see "<participant id2>" in the filter value list
    And I click on cancel button from filter
    And I wait for 2000 milli seconds
    
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I should see "<BPID2>" in the filter value list
    And I should see "<BPID3>" in the filter value list
    And I should see "<BPID4>" in the filter value list
    And I click on cancel button from filter
    And I wait for 2000 milli seconds
    
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    And I should see "<ccn3>" in the filter value list
    And I should see "<ccn4>" in the filter value list
    And I click on cancel button from filter
    And I wait for 2000 milli seconds
    
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Payer" in the header text of filter page
    And I should see "<payer1>" in the filter value list
    And I should see "<payer2>" in the filter value list
    And I click on "<payer1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<payer1>" result in "Payer" field column for "Episode Initiator" filter field
    
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
    And I click on "<anchorFacility1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<anchorFacility1>" result in "Anchor Facility" field column for "Anchor Facility" filter field
    
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
    
    When I click to "Participant ID" field filter under "Episode Initiator" filter field
    And I wait for 2000 milli seconds
    And I choose "Filter" option from select options of filter field
    And I wait for 2000 milli seconds
    And I should see "Participant ID" in the header text of filter page
    And I should see "<participant id1>" in the filter value list
    And I click on "<participant id1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait for 3000 milli seconds
    And I should see "<participant id>" result in "Participant ID" field column for "Episode Initiator" filter field
    
    When I switch to default window from iframe
    When I click on reports tab appearing on reports page
    And I wait for 2000 milli seconds
    Then I verify current page "Reports" title

    Examples: 
      | email                            | participant     | anchorFacility1      | episodeInitiator1    | ccn1   | BPID1    | payer1       | payer2   | participant id1 | participant id2 | BPID2    | BPID3    | BPID4    | ccn2   | ccn3   | ccn4   |
      | multipayerachrpfin@yopmail.com   | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health| Medicare | 222222          | 441348          | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayerachrpnofin@yopmail.com | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health| Medicare | 222222          | 441348          | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayerachopsfin@yopmail.com  | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health| Medicare | 222222          | 441348          | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
      | multipayerachopsspend@yopmail.com| RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health| Medicare | 222222          | 441348          | 2070-020 | 2070-021 | 2070-022 | 390111 | 390223 | 390226 |
