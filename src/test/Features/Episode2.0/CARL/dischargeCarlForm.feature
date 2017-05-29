Feature: To verify the options and functionality of Discharge section of Carl form

  Scenario Outline: To verify fields the Discharge section of the Carl Form
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
    And I wait for 2000 milli seconds
    Then I click on "Discharge" section on left navigator
    And I wait for 2000 milli seconds
    And I verify the "Discharge" section of the carl form upon clicking on it
    Then I verify that "Discharge" section on carl form should be highlighted in left navigator upon clicking
    Then I verify "Next Site of Care" appears on Discharge section of carl form
    Then I verify "No CARL Recommendation. Please complete the following sections" field under Next Site of Care on Discharge section
    Then I verify "Actual Care Setting" subform field under CARL Recommendation on Discharge section
    Then I click on "Actual Care Setting" subform dropdown under CARL Recommendation on Discharge section
    And I wait for 2000 milli seconds
    Then I select "(HHA) Home Health Agency" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I verify "Care Type" subform field under CARL Recommendation on Discharge section
    Then I verify "Discharge Location" subform field under CARL Recommendation on Discharge section
    Then I verify "Discharge Date" subform field under CARL Recommendation on Discharge section
    Then I verify Done button under subform is disabled on Discharge section
    Then I click on "Care Type" subform dropdown under CARL Recommendation on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Skilled Services" in subform dropdown for "Care Type" on Discharge section
    And I wait for 2000 milli seconds
  
    Then I click on "Discharge Location" subform dropdown under CARL Recommendation on Discharge section
    Then I enter "A Helping Hand Hha" and select location in the Discharge Location search box 
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select todays Date on Calendar Discahrge Date under subform on Discharge section
        
    Then I verify Done button under subform is enabled on Discharge section
    Then I verify first question "Have you discussed the proposal with the Interdisciplinary team?" under Discharge section
    And I verify "Yes" radio option for "Have you discussed the proposal with the Interdisciplinary team?" under Discharge section
    And I verify "No" radio option for "Have you discussed the proposal with the Interdisciplinary team?" under Discharge section
    #Then I verify "Additional Comments" section below Have you discussed the proposal with the Interdisciplinary Team question under Discharge section
    Then I click on "Cancel" button under subform on Discharge section
    #Then I verify second question "Why didn't the patient transfer to the recommended Next Site of Care?" under Discharge section
    #Then I verify "Who disagrees?" dropdown for "Why didn't the patient transfer to the recommended Next Site of Care?" under Discharge section
    #Then I verify "Reason for Disagreement" dropdown for "Why didn't the patient transfer to the recommended Next Site of Care?" under Discharge section
    #Then I verify "Additional Comments" section below "Why didn't the patient transfer to the recommended Next Site of Care" question under Discharge section
    Then I verify the legal messages appears with an i icon under Discharge section

    Examples: 
      | First name | Last name  |
      | AUTOMATION | DO_NOT_USE |
