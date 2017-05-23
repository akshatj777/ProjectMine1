Feature: To verify the options and functionality of Anticipated Discharge Needs section of Carl form

  Scenario Outline: To verify the Anticicpated section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 10000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 2000 milli seconds
    And I verify the "Anticipated Discharge Needs" section of the carl form upon clicking on it
    Then I verify that "Anticipated Discharge Needs" section on carl form should be highlighted in left navigator upon clicking
    Then I verify "Therapies Needed" should appear on Anticipated Discharge Needs section
    Then I verify "Physical therapy" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Speech and language" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Occupational therapyPhysical therapy" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "None" checkbox appears under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Transition of Care Needs" should appear on Anticipated Discharge Needs section
    Then I verify "Injetctable Meds" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Blood Testing" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Finger Stick" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Wound Care" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Ostomy" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Tracheostomy" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Catheter" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Tube feeding" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "Oxygen" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "CPAP" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "BIPAP" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "New disease process or diagnosis" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I verify "New discharge medication" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section
    Then I Verify that Carl form should appear with Save & Go Back link
    Then I Verify that Carl form should appear with Save & Continue link

    Examples: 
      | First name | Last name  |
      | AUTOMATION | DO_NOT_USE |

  Scenario Outline: To Select the options present under Therapies Needed on the Anticicpated section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 3000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 3000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 4000 milli seconds
    Then I click "Physical therapy" checkbox under Therapies Needed on Anticipated Discharge Needs section
    And I wait for 3000 milli seconds
    Then I verify "Physical therapy" checkbox is clickable
    Then I verify "Speech and language" checkbox is clickable
    Then I verify "Occupational therapy" checkbox is clickable
    Then I verify "None" checkbox is not clickable
    Then I click "Physical therapy" checkbox under Therapies Needed on Anticipated Discharge Needs section
    And I wait for 3000 milli seconds
    Then I click "None" checkbox under Therapies Needed on Anticipated Discharge Needs section
    Then I verify "Physical therapy" checkbox is not clickable
    Then I verify "Speech and language" checkbox is not clickable
    Then I verify "Occupational therapy" checkbox is not clickable
    Then I click "None" checkbox under Therapies Needed on Anticipated Discharge Needs section

    Examples: 
      | First name | Last name  |
      | AUTOMATION | DO_NOT_USE |

  Scenario Outline: To verify upon selcting Physical Therapy user should be able to select a response for Patients Restoration Potential
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 3000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 3000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 4000 milli seconds
    Then I click "Physical therapy" checkbox under Therapies Needed on Anticipated Discharge Needs section
    And I wait for 1000 milli seconds
    Then I verify Patients Restoration Potential section on selecting PhysicalTherapy
    Then I verify "Select" text in place holder of Physical Therapy dropdown on Patients Restoration Potential
    And I wait for 3000 milli seconds
    Then I click on Physical Therapy dropdown on Patients Restoration Potential
    And I wait for 3000 milli seconds
    Then I verify "Good restoration potential" option in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I verify "Questionable restoration potential" option in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I verify "Poor restoration potentia" option in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I select "Good restoration potential" in Physical Therapy dropdown on Anticipated Discharge Needs
    Then I verify "Good restoration potential" is selected in Physical Therapy place holder on Anticipated Discharge Needs
    And I wait for 2000 milli seconds

    Then I hover on i icon present on Restoration on TakeOver page
    Then I Verify the text hovering i icon on Patients Restoration Potential
    Examples: 
      | First name | Last name  |
      | AUTOMATION | DO_NOT_USE |

  Scenario Outline: To verify the options present under Transition of Care Needs on the Anticicpated section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 3000 milli seconds
    Then I verify CARL buttons appears on the patient summary
    Then I click on the complete CARL on the Patient Summary
    And I wait for 3000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Anticipated Discharge Needs" section on left navigator
    And I wait for 2000 milli seconds
    Then I select "Injectable Meds" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    And I wait for 2000 milli seconds
    Then I verify upon select "Injectable Meds" checkbox sub field section appears for Transition of Care Needs
    Then I verify on selecting "Injectable Meds" requierd field "How often?" appears for Transition of Care Needs
    Then I verify "Once daily or less often" radio option appears under "Injectable Meds" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "More than once daily" radio option appears under "Injectable Meds" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I click "Once daily or less often" radio option under "Injectable Meds" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Once daily or less often" radio option is checked under "Injectable Meds" for Transition Care Needs
    Then I click "More than once daily" radio option under "Injectable Meds" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "More than once daily" radio option is checked under "Injectable Meds" for Transition Care Needs
    Then I verify "Once daily or less often" radio option is not checked under "Injectable Meds" for Transition Care Needs
   
    Then I uncheck "Injectable Meds" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    
    And I wait for 2000 milli seconds
    Then I select "Blood Testing" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "Once daily or less often" radio option under "Blood Testing" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Once daily or less often" radio option is checked under "Blood Testing" for Transition Care Needs
    Then I click "More than once daily" radio option under "Blood Testing" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "More than once daily" radio option is checked under "Blood Testing" for Transition Care Needs
    Then I verify "Once daily or less often" radio option is not checked under "Blood Testing" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "Finger Stick" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "Once daily" radio option under "Finger Stick" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Once daily" radio option is checked under "Finger Stick" for Transition Care Needs
    Then I click "More than once daily" radio option under "Finger Stick" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "More than once daily" radio option is checked under "Finger Stick" for Transition Care Needs
    Then I verify "Once daily" radio option is not checked under "Finger Stick" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "Wound Care" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "Once daily or less often" radio option under "Wound Care" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Once daily or less often" radio option is checked under "Wound Care" for Transition Care Needs
    Then I click "More than once daily" radio option under "Wound Care" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "More than once daily" radio option is checked under "Wound Care" for Transition Care Needs
    Then I verify "Once daily or less often" radio option is not checked under "Wound Care" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I click "New" radio option under "Wound Care" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "Wound Care" for Transition Care Needs
    Then I click "Existing" radio option under "Wound Care" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "Wound Care" for Transition Care Needs
    Then I verify "New" radio option is not checked under "Wound Care" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "Ostomy" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "New" radio option under "Ostomy" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "Ostomy" for Transition Care Needs
    Then I click "Existing" radio option under "Ostomy" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "Ostomy" for Transition Care Needs
    Then I verify "New" radio option is not checked under "Ostomy" for Transition Care Needs
    And I wait for 2000 milli seconds

    
    Then I select "Tracheostomy" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "New" radio option under "Tracheostomy" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "Tracheostomy" for Transition Care Needs
    Then I click "Existing" radio option under "Tracheostomy" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "Tracheostomy" for Transition Care Needs
    Then I verify "New" radio option is not checked under "Tracheostomy" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "Catheter" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "New" radio option under "Catheter" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "Catheter" for Transition Care Needs
    Then I click "Existing" radio option under "Catheter" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "Catheter" for Transition Care Needs
    Then I verify "New" radio option is not checked under "Catheter" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "Tube Feeding" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "Partial nutritional support" radio option under "Tube Feeding" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Partial nutritional support" radio option is checked under "Tube Feeding" for Transition Care Needs
    Then I click "Complete nutritional support" radio option under "Tube Feeding" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Complete nutritional support" radio option is checked under "Tube Feeding" for Transition Care Needs
    Then I verify "Partial nutritional support" radio option is not checked under "Tube Feeding" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I click "New" radio option under "Tube Feeding" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "Tube Feeding" for Transition Care Needs
    Then I click "Existing" radio option under "Tube Feeding" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "Tube Feeding" for Transition Care Needs
    Then I verify "New" radio option is not checked under "Tube Feeding" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "Oxygen" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "New" radio option under "Oxygen" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "Oxygen" for Transition Care Needs
    Then I click "Existing" radio option under "Oxygen" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "Oxygen" for Transition Care Needs
    Then I verify "New" radio option is not checked under "Oxygen" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "CPAP" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "New" radio option under "CPAP" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "CPAP" for Transition Care Needs
    Then I click "Existing" radio option under "CPAP" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "CPAP" for Transition Care Needs
    Then I verify "New" radio option is not checked under "CPAP" for Transition Care Needs
    And I wait for 2000 milli seconds 
    
    
    Then I select "BIPAP" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "New" radio option under "BIPAP" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "New" radio option is checked under "BIPAP" for Transition Care Needs
    Then I click "Existing" radio option under "BIPAP" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "Existing" radio option is checked under "BIPAP" for Transition Care Needs
    Then I verify "New" radio option is not checked under "BIPAP" for Transition Care Needs
    And I wait for 2000 milli seconds 
    
    Then I select "New disease process or diagnosis" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "One" radio option under "New disease process or diagnosis" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "One" radio option is checked under "New disease process or diagnosis" for Transition Care Needs
    Then I click "More than one" radio option under "New disease process or diagnosis" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "More than one" radio option is checked under "New disease process or diagnosis" for Transition Care Needs
    Then I verify "One" radio option is not checked under "New disease process or diagnosis" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    Then I select "New discharge medication" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "One" radio option under "New discharge medication" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "One" radio option is checked under "New discharge medication" for Transition Care Needs
    Then I click "More than one" radio option under "New discharge medication" for Transition Care Needs
    And I wait for 2000 milli seconds
    Then I verify "More than one" radio option is checked under "New discharge medication" for Transition Care Needs
    Then I verify "One" radio option is not checked under "New discharge medication" for Transition Care Needs
    And I wait for 2000 milli seconds
    
    
    Examples: 
      | First name | Last name  |
      | AUTOMATION | DO_NOT_USE |
      

