Feature: Discharge – Disagreement Reason(s)

Scenario: As a user, I would like to provide "Who disagrees?" and the "Reason for Disagreement" if the Actual Care Setting does not match the CARL recommendation proposed facility
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
    Then I wait to see and enable the attestation on the "1" patient on the Patient Card page
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
    Then I wait to the see the visibility of loader to disappear
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
    And I wait for 2000 milli seconds
    Then I will wait to see the CARL section "Caregiver" header appears on the CARL form
    Then I click on Yes, 24 hours a day option under Does the patient have a capable caregiver
    Then I save and continue the complete CARL form
    Then I click on "Independence" section on left navigator
    Then I will wait to see the CARL section "Independence" header appears on the CARL form
    Then I click on "Cognitive Status" dropdown on Independece Section
    Then I select "Forgetful" option in dropdown for cognitive status
    Then I click on "Activities of Daily Living" dropdown on Independece Section
    Then I select "Assistance needed for one or more ADLs" option in dropdown for cognitive status
    Then I click on "Ambulatory Status" dropdown on Independece Section
    Then I select "Assistive device needed" option in dropdown for cognitive status
    Then I click on "Anticipated Discharge Needs" section on left navigator
    Then I will wait to see the CARL section "Anticipated Discharge Needs" header appears on the CARL form
    Then I click "Physical therapy" checkbox under Therapies Needed on Anticipated Discharge Needs section
    Then I select "Injectable Meds" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "Once daily or less often" radio option under "Injectable Meds" for Transition Care Needs
    Then I select "Blood Testing" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "Once daily or less often" radio option under "Blood Testing" for Transition Care Needs
    Then I select "Finger Stick" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "More than once daily" radio option under "Finger Stick" for Transition Care Needs
    Then I select "Wound Care" checkbox for Transition of Care Needs on Anticipated Discharge Needs
    Then I click "Once daily or less often" radio option under "Wound Care" for Transition Care Needs
    Then I save and continue the complete CARL form
    Then I will wait to see the CARL section "Discharge" header appears on the CARL form
    Then I verify CARL Recommendation field should show "Home with Limited Services (HOM)" on discharge section when total score is "less than or equal to 16"
    Then I verify a legal message should appear when Carl recommendation field show Home with Limited Services
    Then I click on "Actual Care Setting" subform dropdown under Recommendation on Discharge section
    Then I select "(HHA) Home Health Agency" in subform dropdown for "Actual Care Setting" on Discharge section
    Then I verify discharge form should provide "Who disagrees?" and the "Reason for Disagreement" if the Actual Care Setting does not match the CARL recommendation proposed facility
    Then I verify question should state "Why didn't the patient transfer to the recommended Next Site of Care?" under Recommendation on Discharge section
    Then I verify that User should be able to provide additional comments "Additional" in a free text box
    Then I verify user should be able to provide upto 250 characters under Additional Comments
    Then I select the "Family" from the "Who disagrees?" dropdown "2" for "Reason1" under Recommendation on Discharge section
    Then I select the "Not enough caregiver support" from the "Reason for Disagreement" dropdown "4" for "Reason1" under Recommendation on Discharge section
    Then I verify that User can view icon for another Reason "2" under disagreement under Recommendation on Discharge section
    Then I click on Reason "2" icon under disagreement under Recommendation on Discharge section
    Then I select the "Family" from the "Who disagrees?" dropdown "2" for "Reason2" under Recommendation on Discharge section
    Then I select the "Not enough caregiver support" from the "Reason for Disagreement" dropdown "5" for "Reason2" under Recommendation on Discharge section
    Then I verify that User can view icon for another Reason "3" under disagreement under Recommendation on Discharge section
    Then I click on Reason "3" icon under disagreement under Recommendation on Discharge section
    Then I select the "Family" from the "Who disagrees?" dropdown "2" for "Reason3" under Recommendation on Discharge section
    Then I select the "Not enough caregiver support" from the "Reason for Disagreement" dropdown "5" for "Reason3" under Recommendation on Discharge section
    Then I verify that User can view icon for another Reason "3" under disagreement under Recommendation on Discharge section