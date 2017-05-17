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

  Scenario Outline: To Select the options present on the Anticicpated section of the Carl Form
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

    Examples: 
      | First name | Last name  |
      | AUTOMATION | DO_NOT_USE |
