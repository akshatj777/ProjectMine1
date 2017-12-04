Feature: Verification of filters under Readmissions Claims report under Post Acute Care for Emblem payer

  Scenario Outline: Verification of participant,anchor facility,episode initiator,bpid and ccn filters underreadmissions claims reports under readmissions
                    for user with emblem payer

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Payer" field filter under "Episode Initiator" filter field
    And I choose add to report option from select options of filter field
    And I wait until refresh button is disappeared
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
    And I should see "<ccn1>" in the filter value list
    And I click on "<ccn1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<ccn1>" result in "CCN" field column for "Anchor Facility" filter field
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should see "<BPID1>" in the filter value list
    And I click on "<BPID1>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<BPID1>" result in "BPID" field column for "Episode Initiator" filter field
    When I click to "Participant ID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant ID" in the header text of filter page
    And I should see "<participant id>" in the filter value list
    And I click on "<participant id>" in the filter value list
    And I click on add selected in the filter modal
    And I click on ok button from filter
    And I wait until refresh button is disappeared
    And I should see "<participant id>" result in "Participant ID" field column for "Episode Initiator" filter field
    When I switch to default window from iframe
    When I click on reports tab appearing on reports page
    Then I verify current page "Reports" title

    Examples: 
      | email                         | participant     | anchorFacility1      | episodeInitiator1    | ccn1   | BPID1    | payer1        | participant id |
      | emblemachrpfin@yopmail.com    | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health |         222222 |
      | emblemrpnofin@yopmail.com     | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health |         222222 |
      | Emblemachopsfin@yopmail.com   | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health |         222222 |
      | emblemachopsnofin@yopmail.com | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health |         222222 |
      | emblemachopsspend@yopmail.com | RP Payer Test A | Rp Test Hospital Two | Rp Test Hospital Two | 999999 | 7000-000 | Emblem Health |         222222 |
