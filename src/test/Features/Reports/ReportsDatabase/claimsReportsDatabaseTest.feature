Feature: Verification of database test cases under claims reports

  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    And I should see "<ccn3>" in the filter value list
    Then User executes query
      """
      SELECT 
      pbf.ccn
      FROM
      atlas.pentahoUserRoles p,
      sharedReference.providerCCN provider,
      sharedReference.participantBpidFacility pbf
      WHERE
      p.username = 'shutestaug231132a@yopmail.com'
      AND p.ccn LIKE CONCAT('%', provider.ccn, '%')
      AND p.bpid LIKE CONCAT('%', pbf.bpid, '%')
      AND pbf.ccn = provider.ccn;
      """
    Then User verifies the data from database for "ccn"
      | CCN1 | "<ccn1>" |
      | CCN2 | "<ccn2>" |
      | CCN3 | "<ccn3>" |

    Examples: 
      | email                         | ccn1   | ccn2   | ccn3   |
      | shutestaug231132a@yopmail.com | 390111 | 390223 | 390226 |

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    When I click to "Episode Initiator" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Episode Initiator" in the header text of filter page
    And I should see "<episodeInitiator1>" in the filter value list
    And I should see "<episodeInitiator2>" in the filter value list
    Then User executes query
      """
      SELECT episodeInitiatorNameInitCap FROM warehouse.dimEpisodeInitiator where bpid in ('2070-021','2070-022');
      """
    Then User verifies the data from database for "episodeInitiatorNameInitCap"
      | EpisodeInitiator1 | "<episodeInitiator1>" |
      | EpisodeInitiator2 | "<episodeInitiator2>" |

    Examples: 
      | email                         | episodeInitiator1                | episodeInitiator2                                                         |
      | shutestaug231132a@yopmail.com | Penn Presbyterian Medical Center | The Pennsylvania Hospital Of The University Of Pennsylvania Health System |

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    When I click to "Bundle" field filter under "Bundle" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Bundle" in the header text of filter page
    And I should see "<bundle1>" in the filter value list
    And I should see "<bundle2>" in the filter value list
    And I should see "<bundle3>" in the filter value list
    And I should see "<bundle4>" in the filter value list
    And I should see "<bundle5>" in the filter value list
    And I should see "<bundle6>" in the filter value list
    And I should see "<bundle7>" in the filter value list
    And I should see "<bundle8>" in the filter value list
    And I should see "<bundle9>" in the filter value list
    And I should see "<bundle10>" in the filter value list
    And I should see "<bundle11>" in the filter value list
    And I should see "<bundle12>" in the filter value list
    Then User executes query
      """
      SELECT 
      distinct eib.episodeShortName as 'Bundle'
      FROM
      atlas.pentahoUserRoles p,
      sharedReference.providerCCN provider,
      sharedReference.participantBpidFacility pbf,
      sharedReference.episodeInitiatorBundle eib
      WHERE
      p.username = 'shutestaug231132a@yopmail.com'
      AND p.ccn LIKE CONCAT('%', provider.ccn, '%')
      AND p.bpid LIKE CONCAT('%', pbf.bpid, '%')
      AND pbf.ccn = provider.ccn;
      """
    Then User verifies the data from database for "Bundle"
      | Bundle1  | "<bundle1>"  |
      | Bundle2  | "<bundle2>"  |
      | Bundle3  | "<bundle3>"  |
      | Bundle4  | "<bundle4>"  |
      | Bundle5  | "<bundle5>"  |
      | Bundle6  | "<bundle6>"  |
      | Bundle7  | "<bundle7>"  |
      | Bundle8  | "<bundle8>"  |
      | Bundle9  | "<bundle9>"  |
      | Bundle10 | "<bundle10>" |
      | Bundle11 | "<bundle11>" |
      | Bundle12 | "<bundle12>" |

    Examples: 
      | email                         | bundle1                      | bundle2    | bundle3                            | bundle4         | bundle5               | bundle6                      | bundle7                     | bundle8                       | bundle9                                   | bundle10                      | bundle11                         | bundle12                                 |
      | shutestaug231132a@yopmail.com | Coronary artery bypass graft | Amputation | Percutaneous coronary intervention | Atherosclerosis | Major bowel procedure | Gastrointestinal obstruction | Revision of the hip or knee | Lower Major joint replacement | Hip & femur procedures except major joint | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis |
