Feature: Verification of database test cases under claims reports

  #Overall Program - Performance Claims
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
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters
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
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle14>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle16>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    And I should see "<bundle19>" in the filter value list
    And I should see "<bundle20>" in the filter value list
    And I should see "<bundle21>" in the filter value list
    And I should see "<bundle22>" in the filter value list
    And I should see "<bundle23>" in the filter value list
    And I should see "<bundle24>" in the filter value list
    And I should see "<bundle25>" in the filter value list
    And I should see "<bundle26>" in the filter value list
    And I should see "<bundle27>" in the filter value list
    And I should see "<bundle28>" in the filter value list
    And I should see "<bundle29>" in the filter value list
    And I should see "<bundle30>" in the filter value list
    And I should see "<bundle31>" in the filter value list
    And I should see "<bundle32>" in the filter value list
    And I should see "<bundle33>" in the filter value list
    And I should see "<bundle34>" in the filter value list
    And I should see "<bundle35>" in the filter value list
    And I should see "<bundle36>" in the filter value list
    And I should see "<bundle37>" in the filter value list
    And I should see "<bundle38>" in the filter value list
    And I should see "<bundle39>" in the filter value list
    And I should see "<bundle40>" in the filter value list
    And I should see "<bundle41>" in the filter value list
    And I should see "<bundle42>" in the filter value list
    And I should see "<bundle43>" in the filter value list
    And I should see "<bundle44>" in the filter value list
    And I should see "<bundle45>" in the filter value list
    And I should see "<bundle46>" in the filter value list
    And I should see "<bundle47>" in the filter value list
    And I should see "<bundle48>" in the filter value list
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |
      | Bundle18 | "<bundle18>" |
      | Bundle19 | "<bundle19>" |
      | Bundle20 | "<bundle20>" |
      | Bundle21 | "<bundle21>" |
      | Bundle22 | "<bundle22>" |
      | Bundle23 | "<bundle23>" |
      | Bundle24 | "<bundle24>" |
      | Bundle25 | "<bundle25>" |
      | Bundle26 | "<bundle26>" |
      | Bundle27 | "<bundle27>" |
      | Bundle28 | "<bundle28>" |
      | Bundle29 | "<bundle29>" |
      | Bundle30 | "<bundle30>" |
      | Bundle31 | "<bundle31>" |
      | Bundle32 | "<bundle32>" |
      | Bundle33 | "<bundle33>" |
      | Bundle34 | "<bundle34>" |
      | Bundle35 | "<bundle35>" |
      | Bundle36 | "<bundle36>" |
      | Bundle37 | "<bundle37>" |
      | Bundle38 | "<bundle38>" |
      | Bundle39 | "<bundle39>" |
      | Bundle40 | "<bundle40>" |
      | Bundle41 | "<bundle41>" |
      | Bundle42 | "<bundle42>" |
      | Bundle43 | "<bundle43>" |
      | Bundle44 | "<bundle44>" |
      | Bundle45 | "<bundle45>" |
      | Bundle46 | "<bundle46>" |
      | Bundle47 | "<bundle47>" |
      | Bundle48 | "<bundle48>" |

    Examples: 
      | email                         | bundle1                                     | bundle2                  | bundle3                     | bundle4                  | bundle5               | bundle6                        | bundle7                               | bundle8         | bundle9    | bundle10                    | bundle11                      | bundle12               | bundle13                                  | bundle14                      | bundle15      | bundle16              | bundle17                     | bundle18               | bundle19                                      | bundle20                                      | bundle21                      | bundle22                         | bundle23                                 | bundle24                          | bundle25   | bundle26 | bundle27                            | bundle28      | bundle29                 | bundle30 | bundle31 | bundle32           | bundle33  | bundle34           | bundle35           | bundle36                    | bundle37                     | bundle38                                    | bundle39                | bundle40          | bundle41               | bundle42                           | bundle43                                 | bundle44                     | bundle45                                  | bundle46                           | bundle47   | bundle48              |
      | shutestaug231132a@yopmail.com | Simple pneumonia and respiratory infections | COPD, bronchitis, asthma | Acute myocardial infarction | Congestive heart failure | Major bowel procedure | Major cardiovascular procedure | Medical peripheral vascular disorders | Atherosclerosis | Chest pain | Revision of the hip or knee | Lower Major joint replacement | Cervical spinal fusion | Hip & femur procedures except major joint | Upper Major joint replacement | Cardiac valve | Cardiac defibrillator | Coronary artery bypass graft | Other vascular surgery | Esophagitis, gastroenteritis, digestive disor | Lower extrem, humerus except hip, foot, femur | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cellulitis | Diabetes | Nutritional and metabolic disorders | Renal failure | Red blood cell disorders | Sepsis   | Stroke   | Transient ischemia | Pacemaker | Cardiac arrhythmia | Syncope & collapse | Gastrointestinal hemorrhage | Gastrointestinal obstruction | Double joint replacement, lower extremities | Urinary tract infection | Other respiratory | AICD generator or lead | Percutaneous coronary intervention | Pacemaker device replacement or revision | Spinal fusion (non-cervical) | Combined anterior posterior spinal fusion | Complex non-cervical spinal fusion | Amputation | Other knee procedures |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in performance claims report under overall program
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
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    And I should see "<anchorFacility3>" in the filter value list
    Then User executes query
      """
      SELECT 
      distinct provider.facilityName as 'Claims_Anchor_Fac'
      From 
      atlas.pentahoUserRoles p,
      sharedReference.providerCCN provider,
      sharedReference.participantBpidFacility pbf
      WHERE
      p.username = 'shutestaug231132a@yopmail.com'
      AND p.ccn LIKE CONCAT('%', provider.ccn, '%')
      AND p.bpid LIKE CONCAT('%', pbf.bpid, '%')
      AND pbf.ccn = provider.ccn;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |
      | AnchorFacility3 | "<anchorFacility3>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                  | anchorFacility3                                |
      | shutestaug231132a@yopmail.com | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |

  #Overall Program - Financial Performance Claims
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
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
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
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
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click to "Bundle" field filter under "Bundle" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Bundle" in the header text of filter page
    And I should see "<bundle47>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle12>" in the filter value list
    And I should see "<bundle4>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle23>" in the filter value list
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle11>" in the filter value list
    And I should see "<bundle24>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    And I should see "<bundle42>" in the filter value list
    And I should see "<bundle10>" in the filter value list
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |
      | Bundle18 | "<bundle18>" |
      | Bundle19 | "<bundle19>" |
      | Bundle20 | "<bundle20>" |
      | Bundle21 | "<bundle21>" |
      | Bundle22 | "<bundle22>" |
      | Bundle23 | "<bundle23>" |
      | Bundle24 | "<bundle24>" |
      | Bundle25 | "<bundle25>" |
      | Bundle26 | "<bundle26>" |
      | Bundle27 | "<bundle27>" |
      | Bundle28 | "<bundle28>" |
      | Bundle29 | "<bundle29>" |
      | Bundle30 | "<bundle30>" |
      | Bundle31 | "<bundle31>" |
      | Bundle32 | "<bundle32>" |
      | Bundle33 | "<bundle33>" |
      | Bundle34 | "<bundle34>" |
      | Bundle35 | "<bundle35>" |
      | Bundle36 | "<bundle36>" |
      | Bundle37 | "<bundle37>" |
      | Bundle38 | "<bundle38>" |
      | Bundle39 | "<bundle39>" |
      | Bundle40 | "<bundle40>" |
      | Bundle41 | "<bundle41>" |
      | Bundle42 | "<bundle42>" |
      | Bundle43 | "<bundle43>" |
      | Bundle44 | "<bundle44>" |
      | Bundle45 | "<bundle45>" |
      | Bundle46 | "<bundle46>" |
      | Bundle47 | "<bundle47>" |
      | Bundle48 | "<bundle48>" |

    Examples: 
      | email                         | bundle1                                     | bundle2                  | bundle3                     | bundle4                  | bundle5               | bundle6                        | bundle7                               | bundle8         | bundle9    | bundle10                    | bundle11                      | bundle12               | bundle13                                  | bundle14                      | bundle15      | bundle16              | bundle17                     | bundle18               | bundle19                                      | bundle20                                      | bundle21                      | bundle22                         | bundle23                                 | bundle24                          | bundle25   | bundle26 | bundle27                            | bundle28      | bundle29                 | bundle30 | bundle31 | bundle32           | bundle33  | bundle34           | bundle35           | bundle36                    | bundle37                     | bundle38                                    | bundle39                | bundle40          | bundle41               | bundle42                           | bundle43                                 | bundle44                     | bundle45                                  | bundle46                           | bundle47   | bundle48              |
      | shutestaug231132a@yopmail.com | Simple pneumonia and respiratory infections | COPD, bronchitis, asthma | Acute myocardial infarction | Congestive heart failure | Major bowel procedure | Major cardiovascular procedure | Medical peripheral vascular disorders | Atherosclerosis | Chest pain | Revision of the hip or knee | Lower Major joint replacement | Cervical spinal fusion | Hip & femur procedures except major joint | Upper Major joint replacement | Cardiac valve | Cardiac defibrillator | Coronary artery bypass graft | Other vascular surgery | Esophagitis, gastroenteritis, digestive disor | Lower extrem, humerus except hip, foot, femur | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cellulitis | Diabetes | Nutritional and metabolic disorders | Renal failure | Red blood cell disorders | Sepsis   | Stroke   | Transient ischemia | Pacemaker | Cardiac arrhythmia | Syncope & collapse | Gastrointestinal hemorrhage | Gastrointestinal obstruction | Double joint replacement, lower extremities | Urinary tract infection | Other respiratory | AICD generator or lead | Percutaneous coronary intervention | Pacemaker device replacement or revision | Spinal fusion (non-cervical) | Combined anterior posterior spinal fusion | Complex non-cervical spinal fusion | Amputation | Other knee procedures |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in performance claims report under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility2>" in the filter value list
    And I should see "<anchorFacility3>" in the filter value list
    Then User executes query
      """
      SELECT 
      distinct provider.facilityName as 'Claims_Anchor_Fac'
      From 
      atlas.pentahoUserRoles p,
      sharedReference.providerCCN provider,
      sharedReference.participantBpidFacility pbf
      WHERE
      p.username = 'shutestaug231132a@yopmail.com'
      AND p.ccn LIKE CONCAT('%', provider.ccn, '%')
      AND p.bpid LIKE CONCAT('%', pbf.bpid, '%')
      AND pbf.ccn = provider.ccn;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |
      | AnchorFacility3 | "<anchorFacility3>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                  | anchorFacility3                                |
      | shutestaug231132a@yopmail.com | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |

  #Overall Program-Spending Claims Reports database related test cases
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in spending claims reports under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in spending claims reports under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in spending claims reports under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in('2070-021','2070-022');
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |

    Examples: 
      | email                         | bundle1                      | bundle2    | bundle3                            | bundle4         | bundle5               | bundle6                      | bundle7                     | bundle8                       | bundle9                                   | bundle10                      | bundle11                         | bundle12                                 | bundle13                          | bundle14      | bundle15               | bundle16                 | bundle17               |
      | shutestaug231132a@yopmail.com | Coronary artery bypass graft | Amputation | Percutaneous coronary intervention | Atherosclerosis | Major bowel procedure | Gastrointestinal obstruction | Revision of the hip or knee | Lower Major joint replacement | Hip & femur procedures except major joint | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cardiac valve | Other vascular surgery | Congestive heart failure | Cervical spinal fusion |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in spending claims reports under overall program
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
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

  #SNF Performance - Post Acute care
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in snf performance claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Performance (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in snf performance claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Performance (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in snf performance claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Performance (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
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
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in('2070-021','2070-022');
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |

    Examples: 
      | email                         | bundle1                      | bundle2    | bundle3                            | bundle4         | bundle5               | bundle6                      | bundle7                     | bundle8                       | bundle9                                   | bundle10                      | bundle11                         | bundle12                                 | bundle13                          | bundle14      | bundle15               | bundle16                 | bundle17               |
      | shutestaug231132a@yopmail.com | Coronary artery bypass graft | Amputation | Percutaneous coronary intervention | Atherosclerosis | Major bowel procedure | Gastrointestinal obstruction | Revision of the hip or knee | Lower Major joint replacement | Hip & femur procedures except major joint | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cardiac valve | Other vascular surgery | Congestive heart failure | Cervical spinal fusion |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in snf performance claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Performance (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
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

  #SNF Volume claims database related test cases
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in snf volume claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in snf volume claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in snf volume claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Post Acute Category" field filter under "Post Acute Category.Post Acute Type" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
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
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle14>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle16>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    And I should see "<bundle19>" in the filter value list
    And I should see "<bundle20>" in the filter value list
    And I should see "<bundle21>" in the filter value list
    And I should see "<bundle22>" in the filter value list
    And I should see "<bundle23>" in the filter value list
    And I should see "<bundle24>" in the filter value list
    And I should see "<bundle25>" in the filter value list
    And I should see "<bundle26>" in the filter value list
    And I should see "<bundle27>" in the filter value list
    And I should see "<bundle28>" in the filter value list
    And I should see "<bundle29>" in the filter value list
    And I should see "<bundle30>" in the filter value list
    And I should see "<bundle31>" in the filter value list
    And I should see "<bundle32>" in the filter value list
    And I should see "<bundle33>" in the filter value list
    And I should see "<bundle34>" in the filter value list
    And I should see "<bundle35>" in the filter value list
    And I should see "<bundle36>" in the filter value list
    And I should see "<bundle37>" in the filter value list
    And I should see "<bundle38>" in the filter value list
    And I should see "<bundle39>" in the filter value list
    And I should see "<bundle40>" in the filter value list
    And I should see "<bundle41>" in the filter value list
    And I should see "<bundle42>" in the filter value list
    And I should see "<bundle43>" in the filter value list
    And I should see "<bundle44>" in the filter value list
    And I should see "<bundle45>" in the filter value list
    And I should see "<bundle46>" in the filter value list
    And I should see "<bundle47>" in the filter value list
    And I should see "<bundle48>" in the filter value list
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |
      | Bundle18 | "<bundle18>" |
      | Bundle19 | "<bundle19>" |
      | Bundle20 | "<bundle20>" |
      | Bundle21 | "<bundle21>" |
      | Bundle22 | "<bundle22>" |
      | Bundle23 | "<bundle23>" |
      | Bundle24 | "<bundle24>" |
      | Bundle25 | "<bundle25>" |
      | Bundle26 | "<bundle26>" |
      | Bundle27 | "<bundle27>" |
      | Bundle28 | "<bundle28>" |
      | Bundle29 | "<bundle29>" |
      | Bundle30 | "<bundle30>" |
      | Bundle31 | "<bundle31>" |
      | Bundle32 | "<bundle32>" |
      | Bundle33 | "<bundle33>" |
      | Bundle34 | "<bundle34>" |
      | Bundle35 | "<bundle35>" |
      | Bundle36 | "<bundle36>" |
      | Bundle37 | "<bundle37>" |
      | Bundle38 | "<bundle38>" |
      | Bundle39 | "<bundle39>" |
      | Bundle40 | "<bundle40>" |
      | Bundle41 | "<bundle41>" |
      | Bundle42 | "<bundle42>" |
      | Bundle43 | "<bundle43>" |
      | Bundle44 | "<bundle44>" |
      | Bundle45 | "<bundle45>" |
      | Bundle46 | "<bundle46>" |
      | Bundle47 | "<bundle47>" |
      | Bundle48 | "<bundle48>" |

    Examples: 
      | email                         | bundle1                                     | bundle2                  | bundle3                     | bundle4                  | bundle5               | bundle6                        | bundle7                               | bundle8         | bundle9    | bundle10                    | bundle11                      | bundle12               | bundle13                                  | bundle14                      | bundle15      | bundle16              | bundle17                     | bundle18               | bundle19                                      | bundle20                                      | bundle21                      | bundle22                         | bundle23                                 | bundle24                          | bundle25   | bundle26 | bundle27                            | bundle28      | bundle29                 | bundle30 | bundle31 | bundle32           | bundle33  | bundle34           | bundle35           | bundle36                    | bundle37                     | bundle38                                    | bundle39                | bundle40          | bundle41               | bundle42                           | bundle43                                 | bundle44                     | bundle45                                  | bundle46                           | bundle47   | bundle48              |
      | shutestaug231132a@yopmail.com | Simple pneumonia and respiratory infections | COPD, bronchitis, asthma | Acute myocardial infarction | Congestive heart failure | Major bowel procedure | Major cardiovascular procedure | Medical peripheral vascular disorders | Atherosclerosis | Chest pain | Revision of the hip or knee | Lower Major joint replacement | Cervical spinal fusion | Hip & femur procedures except major joint | Upper Major joint replacement | Cardiac valve | Cardiac defibrillator | Coronary artery bypass graft | Other vascular surgery | Esophagitis, gastroenteritis, digestive disor | Lower extrem, humerus except hip, foot, femur | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cellulitis | Diabetes | Nutritional and metabolic disorders | Renal failure | Red blood cell disorders | Sepsis   | Stroke   | Transient ischemia | Pacemaker | Cardiac arrhythmia | Syncope & collapse | Gastrointestinal hemorrhage | Gastrointestinal obstruction | Double joint replacement, lower extremities | Urinary tract infection | Other respiratory | AICD generator or lead | Percutaneous coronary intervention | Pacemaker device replacement or revision | Spinal fusion (non-cervical) | Combined anterior posterior spinal fusion | Complex non-cervical spinal fusion | Amputation | Other knee procedures |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in snf volume claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
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

  #Post Acute care claims
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in post acute care claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Post Acute Care (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in post acute care claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Post Acute Care (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in post acute care claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Post Acute Care (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters
    Then I remove "Post Acute Category" field filter under "Post Acute Category.Post Acute Type" filter field from default filters
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
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle14>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle16>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    And I should see "<bundle19>" in the filter value list
    And I should see "<bundle20>" in the filter value list
    And I should see "<bundle21>" in the filter value list
    And I should see "<bundle22>" in the filter value list
    And I should see "<bundle23>" in the filter value list
    And I should see "<bundle24>" in the filter value list
    And I should see "<bundle25>" in the filter value list
    And I should see "<bundle26>" in the filter value list
    And I should see "<bundle27>" in the filter value list
    And I should see "<bundle28>" in the filter value list
    And I should see "<bundle29>" in the filter value list
    And I should see "<bundle30>" in the filter value list
    And I should see "<bundle31>" in the filter value list
    And I should see "<bundle32>" in the filter value list
    And I should see "<bundle33>" in the filter value list
    And I should see "<bundle34>" in the filter value list
    And I should see "<bundle35>" in the filter value list
    And I should see "<bundle36>" in the filter value list
    And I should see "<bundle37>" in the filter value list
    And I should see "<bundle38>" in the filter value list
    And I should see "<bundle39>" in the filter value list
    And I should see "<bundle40>" in the filter value list
    And I should see "<bundle41>" in the filter value list
    And I should see "<bundle42>" in the filter value list
    And I should see "<bundle43>" in the filter value list
    And I should see "<bundle44>" in the filter value list
    And I should see "<bundle45>" in the filter value list
    And I should see "<bundle46>" in the filter value list
    And I should see "<bundle47>" in the filter value list
    And I should see "<bundle48>" in the filter value list
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |
      | Bundle18 | "<bundle18>" |
      | Bundle19 | "<bundle19>" |
      | Bundle20 | "<bundle20>" |
      | Bundle21 | "<bundle21>" |
      | Bundle22 | "<bundle22>" |
      | Bundle23 | "<bundle23>" |
      | Bundle24 | "<bundle24>" |
      | Bundle25 | "<bundle25>" |
      | Bundle26 | "<bundle26>" |
      | Bundle27 | "<bundle27>" |
      | Bundle28 | "<bundle28>" |
      | Bundle29 | "<bundle29>" |
      | Bundle30 | "<bundle30>" |
      | Bundle31 | "<bundle31>" |
      | Bundle32 | "<bundle32>" |
      | Bundle33 | "<bundle33>" |
      | Bundle34 | "<bundle34>" |
      | Bundle35 | "<bundle35>" |
      | Bundle36 | "<bundle36>" |
      | Bundle37 | "<bundle37>" |
      | Bundle38 | "<bundle38>" |
      | Bundle39 | "<bundle39>" |
      | Bundle40 | "<bundle40>" |
      | Bundle41 | "<bundle41>" |
      | Bundle42 | "<bundle42>" |
      | Bundle43 | "<bundle43>" |
      | Bundle44 | "<bundle44>" |
      | Bundle45 | "<bundle45>" |
      | Bundle46 | "<bundle46>" |
      | Bundle47 | "<bundle47>" |
      | Bundle48 | "<bundle48>" |

    Examples: 
      | email                         | bundle1                                     | bundle2                  | bundle3                     | bundle4                  | bundle5               | bundle6                        | bundle7                               | bundle8         | bundle9    | bundle10                    | bundle11                      | bundle12               | bundle13                                  | bundle14                      | bundle15      | bundle16              | bundle17                     | bundle18               | bundle19                                      | bundle20                                      | bundle21                      | bundle22                         | bundle23                                 | bundle24                          | bundle25   | bundle26 | bundle27                            | bundle28      | bundle29                 | bundle30 | bundle31 | bundle32           | bundle33  | bundle34           | bundle35           | bundle36                    | bundle37                     | bundle38                                    | bundle39                | bundle40          | bundle41               | bundle42                           | bundle43                                 | bundle44                     | bundle45                                  | bundle46                           | bundle47   | bundle48              |
      | shutestaug231132a@yopmail.com | Simple pneumonia and respiratory infections | COPD, bronchitis, asthma | Acute myocardial infarction | Congestive heart failure | Major bowel procedure | Major cardiovascular procedure | Medical peripheral vascular disorders | Atherosclerosis | Chest pain | Revision of the hip or knee | Lower Major joint replacement | Cervical spinal fusion | Hip & femur procedures except major joint | Upper Major joint replacement | Cardiac valve | Cardiac defibrillator | Coronary artery bypass graft | Other vascular surgery | Esophagitis, gastroenteritis, digestive disor | Lower extrem, humerus except hip, foot, femur | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cellulitis | Diabetes | Nutritional and metabolic disorders | Renal failure | Red blood cell disorders | Sepsis   | Stroke   | Transient ischemia | Pacemaker | Cardiac arrhythmia | Syncope & collapse | Gastrointestinal hemorrhage | Gastrointestinal obstruction | Double joint replacement, lower extremities | Urinary tract infection | Other respiratory | AICD generator or lead | Percutaneous coronary intervention | Pacemaker device replacement or revision | Spinal fusion (non-cervical) | Combined anterior posterior spinal fusion | Complex non-cervical spinal fusion | Amputation | Other knee procedures |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in post acute care claims report under post acute care
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Post Acute Care (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
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

  #Performance claims report under physician
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
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
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle14>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle16>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    And I should see "<bundle19>" in the filter value list
    And I should see "<bundle20>" in the filter value list
    And I should see "<bundle21>" in the filter value list
    And I should see "<bundle22>" in the filter value list
    And I should see "<bundle23>" in the filter value list
    And I should see "<bundle24>" in the filter value list
    And I should see "<bundle25>" in the filter value list
    And I should see "<bundle26>" in the filter value list
    And I should see "<bundle27>" in the filter value list
    And I should see "<bundle28>" in the filter value list
    And I should see "<bundle29>" in the filter value list
    And I should see "<bundle30>" in the filter value list
    And I should see "<bundle31>" in the filter value list
    And I should see "<bundle32>" in the filter value list
    And I should see "<bundle33>" in the filter value list
    And I should see "<bundle34>" in the filter value list
    And I should see "<bundle35>" in the filter value list
    And I should see "<bundle36>" in the filter value list
    And I should see "<bundle37>" in the filter value list
    And I should see "<bundle38>" in the filter value list
    And I should see "<bundle39>" in the filter value list
    And I should see "<bundle40>" in the filter value list
    And I should see "<bundle41>" in the filter value list
    And I should see "<bundle42>" in the filter value list
    And I should see "<bundle43>" in the filter value list
    And I should see "<bundle44>" in the filter value list
    And I should see "<bundle45>" in the filter value list
    And I should see "<bundle46>" in the filter value list
    And I should see "<bundle47>" in the filter value list
    And I should see "<bundle48>" in the filter value list
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |
      | Bundle18 | "<bundle18>" |
      | Bundle19 | "<bundle19>" |
      | Bundle20 | "<bundle20>" |
      | Bundle21 | "<bundle21>" |
      | Bundle22 | "<bundle22>" |
      | Bundle23 | "<bundle23>" |
      | Bundle24 | "<bundle24>" |
      | Bundle25 | "<bundle25>" |
      | Bundle26 | "<bundle26>" |
      | Bundle27 | "<bundle27>" |
      | Bundle28 | "<bundle28>" |
      | Bundle29 | "<bundle29>" |
      | Bundle30 | "<bundle30>" |
      | Bundle31 | "<bundle31>" |
      | Bundle32 | "<bundle32>" |
      | Bundle33 | "<bundle33>" |
      | Bundle34 | "<bundle34>" |
      | Bundle35 | "<bundle35>" |
      | Bundle36 | "<bundle36>" |
      | Bundle37 | "<bundle37>" |
      | Bundle38 | "<bundle38>" |
      | Bundle39 | "<bundle39>" |
      | Bundle40 | "<bundle40>" |
      | Bundle41 | "<bundle41>" |
      | Bundle42 | "<bundle42>" |
      | Bundle43 | "<bundle43>" |
      | Bundle44 | "<bundle44>" |
      | Bundle45 | "<bundle45>" |
      | Bundle46 | "<bundle46>" |
      | Bundle47 | "<bundle47>" |
      | Bundle48 | "<bundle48>" |

    Examples: 
      | email                         | bundle1                                     | bundle2                  | bundle3                     | bundle4                  | bundle5               | bundle6                        | bundle7                               | bundle8         | bundle9    | bundle10                    | bundle11                      | bundle12               | bundle13                                  | bundle14                      | bundle15      | bundle16              | bundle17                     | bundle18               | bundle19                                      | bundle20                                      | bundle21                      | bundle22                         | bundle23                                 | bundle24                          | bundle25   | bundle26 | bundle27                            | bundle28      | bundle29                 | bundle30 | bundle31 | bundle32           | bundle33  | bundle34           | bundle35           | bundle36                    | bundle37                     | bundle38                                    | bundle39                | bundle40          | bundle41               | bundle42                           | bundle43                                 | bundle44                     | bundle45                                  | bundle46                           | bundle47   | bundle48              |
      | shutestaug231132a@yopmail.com | Simple pneumonia and respiratory infections | COPD, bronchitis, asthma | Acute myocardial infarction | Congestive heart failure | Major bowel procedure | Major cardiovascular procedure | Medical peripheral vascular disorders | Atherosclerosis | Chest pain | Revision of the hip or knee | Lower Major joint replacement | Cervical spinal fusion | Hip & femur procedures except major joint | Upper Major joint replacement | Cardiac valve | Cardiac defibrillator | Coronary artery bypass graft | Other vascular surgery | Esophagitis, gastroenteritis, digestive disor | Lower extrem, humerus except hip, foot, femur | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cellulitis | Diabetes | Nutritional and metabolic disorders | Renal failure | Red blood cell disorders | Sepsis   | Stroke   | Transient ischemia | Pacemaker | Cardiac arrhythmia | Syncope & collapse | Gastrointestinal hemorrhage | Gastrointestinal obstruction | Double joint replacement, lower extremities | Urinary tract infection | Other respiratory | AICD generator or lead | Percutaneous coronary intervention | Pacemaker device replacement or revision | Spinal fusion (non-cervical) | Combined anterior posterior spinal fusion | Complex non-cervical spinal fusion | Amputation | Other knee procedures |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in performance claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    And I should see "<anchorFacility3>" in the filter value list
    Then User executes query
      """
      SELECT 
      distinct provider.facilityName as 'Claims_Anchor_Fac'
      From 
      atlas.pentahoUserRoles p,
      sharedReference.providerCCN provider,
      sharedReference.participantBpidFacility pbf
      WHERE
      p.username = 'shutestaug231132a@yopmail.com'
      AND p.ccn LIKE CONCAT('%', provider.ccn, '%')
      AND p.bpid LIKE CONCAT('%', pbf.bpid, '%')
      AND pbf.ccn = provider.ccn;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |
      | AnchorFacility3 | "<anchorFacility3>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                  | anchorFacility3                                |
      | shutestaug231132a@yopmail.com | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |

  #Volume claims under physician
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in volume claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Volume (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Volume" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in volume claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Volume (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Volume" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in volume claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Volume (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Volume" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
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
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle14>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle16>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    And I should see "<bundle19>" in the filter value list
    And I should see "<bundle20>" in the filter value list
    And I should see "<bundle21>" in the filter value list
    And I should see "<bundle22>" in the filter value list
    And I should see "<bundle23>" in the filter value list
    And I should see "<bundle24>" in the filter value list
    And I should see "<bundle25>" in the filter value list
    And I should see "<bundle26>" in the filter value list
    And I should see "<bundle27>" in the filter value list
    And I should see "<bundle28>" in the filter value list
    And I should see "<bundle29>" in the filter value list
    And I should see "<bundle30>" in the filter value list
    And I should see "<bundle31>" in the filter value list
    And I should see "<bundle32>" in the filter value list
    And I should see "<bundle33>" in the filter value list
    And I should see "<bundle34>" in the filter value list
    And I should see "<bundle35>" in the filter value list
    And I should see "<bundle36>" in the filter value list
    And I should see "<bundle37>" in the filter value list
    And I should see "<bundle38>" in the filter value list
    And I should see "<bundle39>" in the filter value list
    And I should see "<bundle40>" in the filter value list
    And I should see "<bundle41>" in the filter value list
    And I should see "<bundle42>" in the filter value list
    And I should see "<bundle43>" in the filter value list
    And I should see "<bundle44>" in the filter value list
    And I should see "<bundle45>" in the filter value list
    And I should see "<bundle46>" in the filter value list
    And I should see "<bundle47>" in the filter value list
    And I should see "<bundle48>" in the filter value list
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |
      | Bundle18 | "<bundle18>" |
      | Bundle19 | "<bundle19>" |
      | Bundle20 | "<bundle20>" |
      | Bundle21 | "<bundle21>" |
      | Bundle22 | "<bundle22>" |
      | Bundle23 | "<bundle23>" |
      | Bundle24 | "<bundle24>" |
      | Bundle25 | "<bundle25>" |
      | Bundle26 | "<bundle26>" |
      | Bundle27 | "<bundle27>" |
      | Bundle28 | "<bundle28>" |
      | Bundle29 | "<bundle29>" |
      | Bundle30 | "<bundle30>" |
      | Bundle31 | "<bundle31>" |
      | Bundle32 | "<bundle32>" |
      | Bundle33 | "<bundle33>" |
      | Bundle34 | "<bundle34>" |
      | Bundle35 | "<bundle35>" |
      | Bundle36 | "<bundle36>" |
      | Bundle37 | "<bundle37>" |
      | Bundle38 | "<bundle38>" |
      | Bundle39 | "<bundle39>" |
      | Bundle40 | "<bundle40>" |
      | Bundle41 | "<bundle41>" |
      | Bundle42 | "<bundle42>" |
      | Bundle43 | "<bundle43>" |
      | Bundle44 | "<bundle44>" |
      | Bundle45 | "<bundle45>" |
      | Bundle46 | "<bundle46>" |
      | Bundle47 | "<bundle47>" |
      | Bundle48 | "<bundle48>" |

    Examples: 
      | email                         | bundle1                                     | bundle2                  | bundle3                     | bundle4                  | bundle5               | bundle6                        | bundle7                               | bundle8         | bundle9    | bundle10                    | bundle11                      | bundle12               | bundle13                                  | bundle14                      | bundle15      | bundle16              | bundle17                     | bundle18               | bundle19                                      | bundle20                                      | bundle21                      | bundle22                         | bundle23                                 | bundle24                          | bundle25   | bundle26 | bundle27                            | bundle28      | bundle29                 | bundle30 | bundle31 | bundle32           | bundle33  | bundle34           | bundle35           | bundle36                    | bundle37                     | bundle38                                    | bundle39                | bundle40          | bundle41               | bundle42                           | bundle43                                 | bundle44                     | bundle45                                  | bundle46                           | bundle47   | bundle48              |
      | shutestaug231132a@yopmail.com | Simple pneumonia and respiratory infections | COPD, bronchitis, asthma | Acute myocardial infarction | Congestive heart failure | Major bowel procedure | Major cardiovascular procedure | Medical peripheral vascular disorders | Atherosclerosis | Chest pain | Revision of the hip or knee | Lower Major joint replacement | Cervical spinal fusion | Hip & femur procedures except major joint | Upper Major joint replacement | Cardiac valve | Cardiac defibrillator | Coronary artery bypass graft | Other vascular surgery | Esophagitis, gastroenteritis, digestive disor | Lower extrem, humerus except hip, foot, femur | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cellulitis | Diabetes | Nutritional and metabolic disorders | Renal failure | Red blood cell disorders | Sepsis   | Stroke   | Transient ischemia | Pacemaker | Cardiac arrhythmia | Syncope & collapse | Gastrointestinal hemorrhage | Gastrointestinal obstruction | Double joint replacement, lower extremities | Urinary tract infection | Other respiratory | AICD generator or lead | Percutaneous coronary intervention | Pacemaker device replacement or revision | Spinal fusion (non-cervical) | Combined anterior posterior spinal fusion | Complex non-cervical spinal fusion | Amputation | Other knee procedures |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in volume claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Volume (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Volume" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should see "<anchorFacility1>" in the filter value list
    And I should see "<anchorFacility2>" in the filter value list
    And I should see "<anchorFacility3>" in the filter value list
    Then User executes query
      """
      SELECT 
      distinct provider.facilityName as 'Claims_Anchor_Fac'
      From 
      atlas.pentahoUserRoles p,
      sharedReference.providerCCN provider,
      sharedReference.participantBpidFacility pbf
      WHERE
      p.username = 'shutestaug231132a@yopmail.com'
      AND p.ccn LIKE CONCAT('%', provider.ccn, '%')
      AND p.bpid LIKE CONCAT('%', pbf.bpid, '%')
      AND pbf.ccn = provider.ccn;
      """
    Then User verifies the data from database for "facilityName"
      | AnchorFacility1 | "<anchorFacility1>" |
      | AnchorFacility2 | "<anchorFacility2>" |
      | AnchorFacility3 | "<anchorFacility3>" |

    Examples: 
      | email                         | anchorFacility1                  | anchorFacility2                  | anchorFacility3                                |
      | shutestaug231132a@yopmail.com | Hospital Of Univ Of Pennsylvania | Penn Presbyterian Medical Center | Pennsylvania Hosp Of The Univ Of Pa Health Sys |

  #Spending claims report under physician
  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in spending claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Spending (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in spending claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Spending (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in spending claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Spending (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters
    Then I remove "Post Acute Category" field filter under "Post Acute Category.Post Acute Type" filter field from default filters
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
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle14>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle16>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    Then User executes query
      """
      SELECT distinct episodeShortName FROM sharedReference.episodeInitiatorBundle where bpid in('2070-021','2070-022');
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |

    Examples: 
      | email                         | bundle1                      | bundle2    | bundle3                            | bundle4         | bundle5               | bundle6                      | bundle7                     | bundle8                       | bundle9                                   | bundle10                      | bundle11                         | bundle12                                 | bundle13                          | bundle14      | bundle15               | bundle16                 | bundle17               | bundle18                    |
      | shutestaug231132a@yopmail.com | Coronary artery bypass graft | Amputation | Percutaneous coronary intervention | Atherosclerosis | Major bowel procedure | Gastrointestinal obstruction | Revision of the hip or knee | Lower Major joint replacement | Hip & femur procedures except major joint | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cardiac valve | Other vascular surgery | Congestive heart failure | Cervical spinal fusion | Gastrointestinal hemorrhage |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in spending claims report under physician
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Spending (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
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

#Readmission Claims report under readmissions
Scenario Outline: User should be able to verify ccn appearing in ui and database are same in readmissions claims report under readmissions
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

  Scenario Outline: User should be able to verify episode initiator appearing in ui and database are same in readmissions claims report under readmissions
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

  Scenario Outline: User should be able to verify bundle appearing in ui and database are same in readmissions claims report under readmissions
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
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Bundle Risk" field filter under "Bundle Risk" filter field from default filters
    Then I remove "Bundle Code" field filter under "Bundle" filter field from default filters
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
    And I should see "<bundle13>" in the filter value list
    And I should see "<bundle14>" in the filter value list
    And I should see "<bundle15>" in the filter value list
    And I should see "<bundle16>" in the filter value list
    And I should see "<bundle17>" in the filter value list
    And I should see "<bundle18>" in the filter value list
    And I should see "<bundle19>" in the filter value list
    And I should see "<bundle20>" in the filter value list
    And I should see "<bundle21>" in the filter value list
    And I should see "<bundle22>" in the filter value list
    And I should see "<bundle23>" in the filter value list
    And I should see "<bundle24>" in the filter value list
    And I should see "<bundle25>" in the filter value list
    And I should see "<bundle26>" in the filter value list
    And I should see "<bundle27>" in the filter value list
    And I should see "<bundle28>" in the filter value list
    And I should see "<bundle29>" in the filter value list
    And I should see "<bundle30>" in the filter value list
    And I should see "<bundle31>" in the filter value list
    And I should see "<bundle32>" in the filter value list
    And I should see "<bundle33>" in the filter value list
    And I should see "<bundle34>" in the filter value list
    And I should see "<bundle35>" in the filter value list
    And I should see "<bundle36>" in the filter value list
    And I should see "<bundle37>" in the filter value list
    And I should see "<bundle38>" in the filter value list
    And I should see "<bundle39>" in the filter value list
    And I should see "<bundle40>" in the filter value list
    And I should see "<bundle41>" in the filter value list
    And I should see "<bundle42>" in the filter value list
    And I should see "<bundle43>" in the filter value list
    And I should see "<bundle44>" in the filter value list
    And I should see "<bundle45>" in the filter value list
    And I should see "<bundle46>" in the filter value list
    And I should see "<bundle47>" in the filter value list
    And I should see "<bundle48>" in the filter value list
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
      | Bundle13 | "<bundle13>" |
      | Bundle14 | "<bundle14>" |
      | Bundle15 | "<bundle15>" |
      | Bundle16 | "<bundle16>" |
      | Bundle17 | "<bundle17>" |
      | Bundle18 | "<bundle18>" |
      | Bundle19 | "<bundle19>" |
      | Bundle20 | "<bundle20>" |
      | Bundle21 | "<bundle21>" |
      | Bundle22 | "<bundle22>" |
      | Bundle23 | "<bundle23>" |
      | Bundle24 | "<bundle24>" |
      | Bundle25 | "<bundle25>" |
      | Bundle26 | "<bundle26>" |
      | Bundle27 | "<bundle27>" |
      | Bundle28 | "<bundle28>" |
      | Bundle29 | "<bundle29>" |
      | Bundle30 | "<bundle30>" |
      | Bundle31 | "<bundle31>" |
      | Bundle32 | "<bundle32>" |
      | Bundle33 | "<bundle33>" |
      | Bundle34 | "<bundle34>" |
      | Bundle35 | "<bundle35>" |
      | Bundle36 | "<bundle36>" |
      | Bundle37 | "<bundle37>" |
      | Bundle38 | "<bundle38>" |
      | Bundle39 | "<bundle39>" |
      | Bundle40 | "<bundle40>" |
      | Bundle41 | "<bundle41>" |
      | Bundle42 | "<bundle42>" |
      | Bundle43 | "<bundle43>" |
      | Bundle44 | "<bundle44>" |
      | Bundle45 | "<bundle45>" |
      | Bundle46 | "<bundle46>" |
      | Bundle47 | "<bundle47>" |
      | Bundle48 | "<bundle48>" |

    Examples: 
      | email                         | bundle1                                     | bundle2                  | bundle3                     | bundle4                  | bundle5               | bundle6                        | bundle7                               | bundle8         | bundle9    | bundle10                    | bundle11                      | bundle12               | bundle13                                  | bundle14                      | bundle15      | bundle16              | bundle17                     | bundle18               | bundle19                                      | bundle20                                      | bundle21                      | bundle22                         | bundle23                                 | bundle24                          | bundle25   | bundle26 | bundle27                            | bundle28      | bundle29                 | bundle30 | bundle31 | bundle32           | bundle33  | bundle34           | bundle35           | bundle36                    | bundle37                     | bundle38                                    | bundle39                | bundle40          | bundle41               | bundle42                           | bundle43                                 | bundle44                     | bundle45                                  | bundle46                           | bundle47   | bundle48              |
      | shutestaug231132a@yopmail.com | Simple pneumonia and respiratory infections | COPD, bronchitis, asthma | Acute myocardial infarction | Congestive heart failure | Major bowel procedure | Major cardiovascular procedure | Medical peripheral vascular disorders | Atherosclerosis | Chest pain | Revision of the hip or knee | Lower Major joint replacement | Cervical spinal fusion | Hip & femur procedures except major joint | Upper Major joint replacement | Cardiac valve | Cardiac defibrillator | Coronary artery bypass graft | Other vascular surgery | Esophagitis, gastroenteritis, digestive disor | Lower extrem, humerus except hip, foot, femur | Removal of orthopedic devices | Back & neck except spinal fusion | Fractures of the femur and hip or pelvis | Medical non-infectious orthopedic | Cellulitis | Diabetes | Nutritional and metabolic disorders | Renal failure | Red blood cell disorders | Sepsis   | Stroke   | Transient ischemia | Pacemaker | Cardiac arrhythmia | Syncope & collapse | Gastrointestinal hemorrhage | Gastrointestinal obstruction | Double joint replacement, lower extremities | Urinary tract infection | Other respiratory | AICD generator or lead | Percutaneous coronary intervention | Pacemaker device replacement or revision | Spinal fusion (non-cervical) | Combined anterior posterior spinal fusion | Complex non-cervical spinal fusion | Amputation | Other knee procedures |

  Scenario Outline: User should be able to verify anchor facility appearing in ui and database are same in readmissions claims report under readmissions
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