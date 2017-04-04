Feature: Nsoc next site of care detail

Scenario Outline: Verify that Next site of care detail report display data based on provisioning

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    When I click on the "Reports" tile
    And I wait for 2000 milli seconds
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Detail" report text for NSoC Reports 
    And I wait for 30000 milli seconds
    Then I should see "Report" in the reports header page
    When I switch to reports embedded iframe
    
    Then I should see Next Site of Care Detail reports column Tile text as "Participant"
    Then I should see Next Site of Care Detail reports column Tile text as "BPID"
    Then I should see Next Site of Care Detail reports column Tile text as "Episode Initiator"
    Then I should see Next Site of Care Detail reports column Tile text as "Anchor Admit CCN"
    Then I should see Next Site of Care Detail reports column Tile text as "Anchor Admit Facility"
    Then I should see Next Site of Care Detail reports column Tile text as "Anchor Admit Date"
    Then I should see Next Site of Care Detail reports column Tile text as "Medicare ID"
    Then I should see Next Site of Care Detail reports column Tile text as "Patient"
    Then I should see Next Site of Care Detail reports column Tile text as "DOB"
    Then I should see Next Site of Care Detail reports column Tile text as "Anchor Disch Date"
    Then I should see Next Site of Care Detail reports column Tile text as "Anchor Discharge Facility"
    Then I should see Next Site of Care Detail reports column Tile text as "Anchor Disch CCN"
    Then I should see Next Site of Care Detail reports column Tile text as "Anchor Disch Facility Type"
    Then I should see Next Site of Care Detail reports column Tile text as "NetworkTier"
    Then I should see Next Site of Care Detail reports column Tile text as "Model"
    Then I should see Next Site of Care Detail reports column Tile text as "Bundle"
    
    When I click on edit toggle button
    And I wait for 2000 milli seconds
    
    When I click on "Participant" field filter under Episode Initiator filter field
    And I wait for 2000 milli seconds
    And I Click on "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I select the radio button of select from list
    And I wait for 3000 milli seconds
    And I verify "<participant>" in the filter value list
    And I wait for 1000 milli seconds
    And I select "<participant>" in the filter value list
    And I click on "Add Selected" in the filter modal
    And I wait for 1000 milli seconds
    And I click "Ok" button from filter to select field
    And I wait for 3000 milli seconds
    
    When I click on "Anchor Admit Facility" field filter under Episode Initiator filter field
    And I wait for 2000 milli seconds
    And I Click on "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I select the radio button of select from list
    And I wait for 3000 milli seconds
    And I verify "<anchorFacility1>" in the filter value list
    And I wait for 1000 milli seconds
    And I select "<anchorFacility1>" in the filter value list
    And I click on "Add Selected" in the filter modal
    And I wait for 1000 milli seconds
    And I click "Ok" button from filter to select field
    And I wait for 3000 milli seconds
    
    When I click on "Anchor Admit CCN" field filter under Episode Initiator filter field
    And I wait for 2000 milli seconds
    And I Click on "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I select the radio button of select from list
    And I wait for 3000 milli seconds
    And I verify "<ccn1>" in the filter value list
    And I wait for 1000 milli seconds
    And I select "<ccn1>" in the filter value list
    And I click on "Add Selected" in the filter modal
    And I wait for 1000 milli seconds
    And I click "Ok" button from filter to select field
    And I wait for 3000 milli seconds
    
    When I click on "BPID" field filter under Episode Initiator filter field
    And I wait for 2000 milli seconds
    And I Click on "Filter" option from select options of filter field
    And I wait for 3000 milli seconds
    And I select the radio button of select from list
    And I wait for 3000 milli seconds
    And I verify "<BPID1>" in the filter value list
    And I wait for 1000 milli seconds
    And I select "<BPID1>" in the filter value list
    And I click on "Add Selected" in the filter modal
    And I wait for 1000 milli seconds
    And I click "Ok" button from filter to select field
    And I wait for 3000 milli seconds
    
    Examples:
    
    | email                              | participant | anchorFacility1       	            | anchorFacility2                | episodeInitiator1                | ccn1   | BPID1    |
    | shutestaug231132a@yopmail.com      | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital	 | Penn Presbyterian Medical Center | 390223 | 2070-021 |
    | shutestaug221130a@yopmail.com      | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital  | Penn Presbyterian Medical Center | 390223 | 2070-021 |
    | reptestachmodel2opsfin@yopmail.com | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital  | Penn Presbyterian Medical Center | 390223 | 2070-021 |
    | shutestaug15240p@yopmail.com       | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital  | Penn Presbyterian Medical Center | 390223 | 2070-021 |
    | shutestaug221145a@yopmail.com      | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital  | Penn Presbyterian Medical Center | 390223 | 2070-021 |
    | repopsnofintest@yopmail.com        | Penn        | Upenn - Penn Presbyterian Hospital | Upenn - Pennsylvania Hospital  | Penn Presbyterian Medical Center | 390223 | 2070-021 | 
