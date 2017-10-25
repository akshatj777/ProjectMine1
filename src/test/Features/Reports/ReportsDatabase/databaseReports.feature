Feature: Verification of database test cases under reports

  #Episode DRG Issues Report Database test cases
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in episode drg issue report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    Then User executes query
      """
      SELECT ccn FROM sharedReference.participantBpidCCN
      where bpid in ('2070-021','2070-022')
      order by ccn ASC;
      """
    Then User verifies the data from database for "ccn"
      | CCN1 | "<ccn1>" |
      | CCN2 | "<ccn2>" |

    Examples: 
      | email                         | ccn1   | ccn2   |
      | shutestaug231132a@yopmail.com | 390223 | 390226 |

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in episode drg issue report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in episode drg issue report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in ('2070-021','2070-022');
      """
    Then User verifies the data from database for "episodeShortName"
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

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in episode drg issue report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    Then User executes query
      """
      SELECT providerCCN.facilityName FROM sharedReference.providerCCN
      inner join sharedReference.participantBpidCCN on participantBpidCCN.ccn=providerCCN.ccn
      where participantBpidCCN.bpid in ('2070-021','2070-022')
      order by facilityName ASC;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                                |
      | shutestaug231132a@yopmail.com | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |

  #Inpatient Episode Clearing Report Database test cases
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in inpatient episode clearing report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Inpatient Episode Clearing" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    Then User executes query
      """
      SELECT ccn FROM sharedReference.participantBpidCCN
      where bpid in ('2070-021','2070-022')
      order by ccn ASC;
      """
    Then User verifies the data from database for "ccn"
      | CCN1 | "<ccn1>" |
      | CCN2 | "<ccn2>" |

    Examples: 
      | email                         | ccn1   | ccn2   |
      | shutestaug231132a@yopmail.com | 390223 | 390226 |

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in inpatient episode clearing report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Inpatient Episode Clearing" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in inpatient episode clearing reportunder patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Inpatient Episode Clearing" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in ('2070-021','2070-022');
      """
    Then User verifies the data from database for "episodeShortName"
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

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in inpatient episode clearing report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Inpatient Episode Clearing" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    Then User executes query
      """
      SELECT providerCCN.facilityName FROM sharedReference.providerCCN
      inner join sharedReference.participantBpidCCN on participantBpidCCN.ccn=providerCCN.ccn
      where participantBpidCCN.bpid in ('2070-021','2070-022')
      order by facilityName ASC;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                                |
      | shutestaug231132a@yopmail.com | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |

#SNF LOS Report Database test cases
Scenario Outline: User should be able to verify ccn appearing in ui and database are same in SNF Length of Stay Summary Report under post acute care
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
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    Then User executes query
      """
      SELECT ccn FROM sharedReference.participantBpidCCN
      where bpid in ('2070-021','2070-022')
      order by ccn ASC;
      """
    Then User verifies the data from database for "ccn"
      | CCN1 | "<ccn1>" |
      | CCN2 | "<ccn2>" |

    Examples: 
      | email                         | ccn1   | ccn2   |
      | shutestaug231132a@yopmail.com | 390223 | 390226 |

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in SNF Length of Stay Summary Report under post acute care
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
    And I wait until refresh button is disappeared
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in SNF Length of Stay Summary Report under post acute care
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
    And I wait until refresh button is disappeared
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in ('2070-021','2070-022');
      """
    Then User verifies the data from database for "episodeShortName"
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

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in SNF Length of Stay Summary Report under post acute care
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
    And I wait until refresh button is disappeared
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    Then User executes query
      """
      SELECT providerCCN.facilityName FROM sharedReference.providerCCN
      inner join sharedReference.participantBpidCCN on participantBpidCCN.ccn=providerCCN.ccn
      where participantBpidCCN.bpid in ('2070-021','2070-022')
      order by facilityName ASC;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                                |
      | shutestaug231132a@yopmail.com | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |
      
#CARL Report Database testcases
 Scenario Outline: User should be able to verify ccn appearing in ui and database are same in CARL report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    Then User executes query
      """
      SELECT ccn FROM sharedReference.participantBpidCCN
      where bpid in ('2070-021','2070-022')
      order by ccn ASC;
      """
    Then User verifies the data from database for "ccn"
      | CCN1 | "<ccn1>" |
      | CCN2 | "<ccn2>" |

    Examples: 
      | email                         | ccn1   | ccn2   |
      | shutestaug231132a@yopmail.com | 390223 | 390226 |

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in CARL report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in CARL report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in ('2070-021','2070-022');
      """
    Then User verifies the data from database for "episodeShortName"
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

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in CARL report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    Then User executes query
      """
      SELECT providerCCN.facilityName FROM sharedReference.providerCCN
      inner join sharedReference.participantBpidCCN on participantBpidCCN.ccn=providerCCN.ccn
      where participantBpidCCN.bpid in ('2070-021','2070-022')
      order by facilityName ASC;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                                |
      | shutestaug231132a@yopmail.com | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |
      
#Next site of care summary report Database testcases
Scenario Outline: User should be able to verify ccn appearing in ui and database are same in next site of care summary report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    Then User executes query
      """
      SELECT ccn FROM sharedReference.participantBpidCCN
      where bpid in ('2070-021','2070-022')
      order by ccn ASC;
      """
    Then User verifies the data from database for "ccn"
      | CCN1 | "<ccn1>" |
      | CCN2 | "<ccn2>" |

    Examples: 
      | email                         | ccn1   | ccn2   |
      | shutestaug231132a@yopmail.com | 390223 | 390226 |

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in next site of care summary report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in next site of care summary report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in ('2070-021','2070-022');
      """
    Then User verifies the data from database for "episodeShortName"
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

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in next site of care summary report under next site of care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    Then User executes query
      """
      SELECT providerCCN.facilityName FROM sharedReference.providerCCN
      inner join sharedReference.participantBpidCCN on participantBpidCCN.ccn=providerCCN.ccn
      where participantBpidCCN.bpid in ('2070-021','2070-022')
      order by facilityName ASC;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                                |
      | shutestaug231132a@yopmail.com | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |
      
#Readmissions report Database testcases
Scenario Outline: User should be able to verify ccn appearing in ui and database are same in readmissions report under readmissions
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
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    Then User executes query
      """
      SELECT ccn FROM sharedReference.participantBpidCCN
      where bpid in ('2070-021','2070-022')
      order by ccn ASC;
      """
    Then User verifies the data from database for "ccn"
      | CCN1 | "<ccn1>" |
      | CCN2 | "<ccn2>" |

    Examples: 
      | email                         | ccn1   | ccn2   |
      | shutestaug231132a@yopmail.com | 390223 | 390226 |

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in readmissions report under readmissions
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
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in readmissions report under readmissions
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
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in ('2070-021','2070-022');
      """
    Then User verifies the data from database for "episodeShortName"
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

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in readmissions report under readmissions
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
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    Then User executes query
      """
      SELECT providerCCN.facilityName FROM sharedReference.providerCCN
      inner join sharedReference.participantBpidCCN on participantBpidCCN.ccn=providerCCN.ccn
      where participantBpidCCN.bpid in ('2070-021','2070-022')
      order by facilityName ASC;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                                |
      | shutestaug231132a@yopmail.com | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |
      
#Overall Program - Spending Claims database related test cases
