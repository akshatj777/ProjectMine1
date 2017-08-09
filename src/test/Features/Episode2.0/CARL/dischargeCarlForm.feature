Feature: To verify the options and functionality of Discharge section of Carl form

  Scenario: To verify fields the Discharge section of the Carl Form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Discharge" section on left navigator
    And I wait for 2000 milli seconds
    And I verify the "Discharge" section of the carl form upon clicking on it
    Then I verify that "Discharge" section on carl form should be highlighted in left navigator upon clicking
    Then I verify "Next Site of Care" appears on Discharge section of carl form
    Then I verify "No CARL Recommendation. Please complete the following sections" field under Next Site of Care on Discharge section
    Then I verify "Actual Care Setting" subform field under Recommendation on Discharge section
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    And I wait for 2000 milli seconds
    Then I select "(HHA) Home Health Agency" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I verify "Care Type" subform field under Recommendation on Discharge section
    Then I verify "Discharge Location" subform field under Recommendation on Discharge section
    Then I verify "Discharge Date" subform field under Recommendation on Discharge section
    Then I verify Done button under subform is disabled on Discharge section
    Then I click on "Care Type" subform dropdown under Recommendation on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Skilled Services" in subform dropdown for "Care Type" on Discharge section
    And I wait for 2000 milli seconds
    Then I verify Done button under subform is disabled on Discharge section
    Then I click on "Discharge Location" subform dropdown under Recommendation on Discharge section
    Then I enter "A Helping Hand Hha" and select location in the Discharge Location search box 
    Then I verify Done button under subform is disabled on Discharge section
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select todays Date on Calendar Discahrge Date under subform on Discharge section 
    And I wait for 2000 milli seconds   
    Then I verify Done button under subform is enabled on Discharge section
    Then I verify first question "Have you discussed the proposal with the Interdisciplinary team?" under Discharge section
    And I verify "Yes" radio option for "Have you discussed the proposal with the Interdisciplinary team?" under Discharge section
    And I verify "No" radio option for "Have you discussed the proposal with the Interdisciplinary team?" under Discharge section
    Then I verify Additional Comments section under Discharge on Carl form
    Then I click on "Cancel" button under subform on Discharge section
    And I wait for 2000 milli seconds
    
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    And I wait for 2000 milli seconds
    Then I select "(HOM) Home" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I verify "Discharge Location" subform field is not appearing under Recommendation on Discharge section
    Then I click on "Cancel" button under subform on Discharge section
    And I wait for 2000 milli seconds
    
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    And I wait for 2000 milli seconds
    Then I select "(EXPIRED) Expired" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I verify "Discharge Location" subform field is not appearing under Recommendation on Discharge section
    Then I click on "Cancel" button under subform on Discharge section
    And I wait for 2000 milli seconds
    
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    And I wait for 2000 milli seconds
    Then I select "(UNK) Unknown" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I verify "Discharge Location" subform field is not appearing under Recommendation on Discharge section
    Then I click on "Cancel" button under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I verify second question "Why didn't the patient transfer to the recommended Next Site of Care?" under Discharge section
    Then I verify "Who disagrees?" dropdown for "Why didn't the patient transfer to the recommended Next Site of Care?" under Discharge section
    Then I verify "Reason for Disagreement" dropdown for "Why didn't the patient transfer to the recommended Next Site of Care?" under Discharge section
  # Then I verify "Additional Comments" section below "Why didn't the patient transfer to the recommended Next Site of Care" question under Discharge section
    Then I verify the legal messages appears with an i icon under Discharge section
    Then I Verify that Clicking done should show a read only field with the information filled
   
   Scenario: Verify that updating CARL form - Discharge section information should update the transition table as well
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    Then I wait to the see the visibility of loader to disappear
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I get the patient last name who have no CARL button in it
    Then I will wait to see and click on "Patient Details" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I will fetch the value attribute of "Social Security Number" on patient details
    When I switch to default window from iframe
    Then I will wait to see and click on "Transitions" followed by "span" tag
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 3000 milli seconds
    Then I wait to the see the visibility of loader to disappear
    Then I click on add a new transition to add a new episode
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I wait for 3000 milli seconds
    Then I fill in "Admit" with logic "minus" with "8" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I click on the complete CARL on the Patient Summary
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds 
    Then I click on "Discharge" section on left navigator
 #  Then I verify No  server error should appear if user edits and saves the subform with new values
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(HHH) Hospital" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I click on "Care Type" subform dropdown under Recommendation on Discharge section
    Then I select "Inpatient" in subform dropdown for "Care Type" on Discharge section
    Then I click on "Discharge Location" subform dropdown under Recommendation on Discharge section
    Then I enter "Allentown" and select location in the Discharge Location search box 
    And I wait for 1000 milli seconds
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Discharge current" with logic "current" "1" days on Calendar Discharge Date under subform on Discharge section
    Then I verify Done button under subform is enabled on Discharge section
    Then I click on Done button under subform on Discharge sections
    Then I verify user should be able to navigate to the read only form and no server error should appear on Discharge section
    Then I verify the correct "CareSetting" "(HHH) Hospital" which user has selected by the time of filling the form should appearing after saving the done form
    Then I verify the correct "Caretype" "Inpatient" which user has selected by the time of filling the form should appearing after saving the done form
    Then I verify the correct "DischargeLocation" "Allentown" which user has selected by the time of filling the form should appearing after saving the done form
    Then I click on edit button to update the values of discharge subform under discharge test in Carl form
  # Then I verify No  server error should appear if user edits and saves the subform with new values
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(UNK) Unknown" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Discharge current" with logic "current" "1" days on Calendar Discharge Date under subform on Discharge section
    Then I verify Done button under subform is enabled on Discharge section
    Then I click on Done button under subform on Discharge sections
    Then I verify user should be able to navigate to the read only form and no server error should appear on Discharge section
    Then I verify the correct "CareSetting" "(UNK) Unknown" which user has selected by the time of filling the form should appearing after saving the done form
    Then I verify the correct "DischargeLocation" "No Discharge Facility" which user has selected by the time of filling the form should appearing after saving the done form
    Then I click on edit button to update the values of discharge subform under discharge test in Carl form
  # Then I verify No  server error should appear if user edits and saves the subform with new values
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(HOM) Home" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Discharge current" with logic "current" "1" days on Calendar Discharge Date under subform on Discharge section
    Then I verify Done button under subform is enabled on Discharge section
    Then I click on Done button under subform on Discharge sections
    Then I verify user should be able to navigate to the read only form and no server error should appear on Discharge section
    Then I verify the correct "CareSetting" "(HOM) Home" which user has selected by the time of filling the form should appearing after saving the done form
    Then I verify the correct "DischargeLocation" "No Discharge Facility" which user has selected by the time of filling the form should appearing after saving the done form
    Then I click on edit button to update the values of discharge subform under discharge test in Carl form
  #  Then I verify No  server error should appear if user edits and saves the subform with new values
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(EXPIRED) Expired" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Discharge current" with logic "current" "1" days on Calendar Discharge Date under subform on Discharge section
    Then I verify Done button under subform is enabled on Discharge section
    Then I click on Done button under subform on Discharge sections
    Then I verify user should be able to navigate to the read only form and no server error should appear on Discharge section
    Then I verify the correct "CareSetting" "(EXPIRED) Expired" which user has selected by the time of filling the form should appearing after saving the done form
    Then I verify the correct "DischargeLocation" "No Discharge Facility" which user has selected by the time of filling the form should appearing after saving the done form
    Then I click on edit button to update the values of discharge subform under discharge test in Carl form
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(HHA) Home Health Agency" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I click on "Care Type" subform dropdown under Recommendation on Discharge section
    Then I select "Skilled Services" in subform dropdown for "Care Type" on Discharge section
    Then I click on "Discharge Location" subform dropdown under Recommendation on Discharge section
    Then I enter "A Helping Hand Hha" and select location in the Discharge Location search box 
    And I wait for 1000 milli seconds
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Discharge past" with logic "minus" "9" days on Calendar Discharge Date under subform on Discharge section
    Then I verify User should not get an error message on adding a past date in the discharge date section
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(HHA) Home Health Agency" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I click on "Care Type" subform dropdown under Recommendation on Discharge section
    Then I select "Skilled Services" in subform dropdown for "Care Type" on Discharge section
    Then I click on "Discharge Location" subform dropdown under Recommendation on Discharge section
    Then I enter "A Helping Hand Hha" and select location in the Discharge Location search box 
    And I wait for 1000 milli seconds
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I verify User should not get an error message on adding a past date in the discharge date section
    Then I click on Calendar Icon On Discharge date under subform on Discharge section
    And I wait for 2000 milli seconds
    Then I select "Discharge current" with logic "minus" "3" days on Calendar Discharge Date under subform on Discharge section
    Then I verify Done button under subform is enabled on Discharge section
    Then I click on Done button under subform on Discharge sections
    Then I verify user should be able to navigate to the read only form and no server error should appear on Discharge section
    Then I verify the correct "CareSetting" "(HHA) Home Health Agency" which user has selected by the time of filling the form should appearing after saving the done form
    Then I verify the correct "Caretype" "Skilled Services" which user has selected by the time of filling the form should appearing after saving the done form
    Then I verify the correct "DischargeLocation" "A Helping Hand Hha" which user has selected by the time of filling the form should appearing after saving the done form
    Then I close the patient summary Page
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I will wait to see "Transitions" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I will wait to see the "Transitionno" "2" appears on the transition table on the Patient Summary page
    Then I will wait to see column "2" header "Facility" "(HHH) St Luke's - Allentown" appears in transition column "1" on transitions table on Patient Summary Page
    
    Scenario:  Verify SNF ELOS message should appear under the Discharge Date, if the user selects SNF as the Actual Care Setting and either of the following care types (TCU or Skilled Nursing)
     Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    Then I wait to the see the visibility of loader to disappear
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I get the patient last name who have no CARL button in it
    Then I will wait to see and click on "Patient Details" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I will fetch the value attribute of "Social Security Number" on patient details
    When I switch to default window from iframe
    Then I will wait to see and click on "Transitions" followed by "span" tag
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the delete button on the transition to delete all the transitions
    Then I wait for 3000 milli seconds
    Then I wait to the see the visibility of loader to disappear
    Then I click on add a new transition to add a new episode
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I wait for 3000 milli seconds
    Then I fill in "Admit" with logic "minus" with "8" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "177" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I click on the complete CARL on the Patient Summary
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds 
    Then I click on "Discharge" section on left navigator
 #  Then I verify No  server error should appear if user edits and saves the subform with new values
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(SNF) Skilled Nursing Facility" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I click on "Care Type" subform dropdown under Recommendation on Discharge section
    Then I select "Skilled Care" in subform dropdown for "Care Type" on Discharge section
    Then I verify SNF ELOS message should appear under the Discharge Date on Discharge Section
    Then I click on "Care Type" subform dropdown under Recommendation on Discharge section
    Then I select "TCU" in subform dropdown for "Care Type" on Discharge section
    Then I verify SNF ELOS message should appear under the Discharge Date on Discharge Section
    Then I verify SNF ELOS range that should be calculated by DRG that triggers the current active episode
    