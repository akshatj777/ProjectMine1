Feature: As a user, I should be able to complete and submit a CARL form for an Emblem patient that was discharged from my facility in the last week (7 days) by clicking on “Complete CARL (Discharged)”

  Scenario Outline: Discharge from anchor yesterday to HHH-Scheduled without discharge & Discharge from anchor 7 days ago (today is day 1) to HHH-Inpatient without discharge.
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
    Then I fill in "Admit" with logic "minus" with "<Admit>" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I select the "<LOS>" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "<Discharge CareType>" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
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
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I close the patient summary Page
    Then I verify CARL button is "appearing" on the patient card
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I click on the complete CARL on the Patient Summary
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Discharge" section on left navigator
    Then I save and continue the complete CARL form
    Then I click on the Submit button to submit the CARL form
    Then I verify current page "Remedy Partners" title
    Then I click on "All" tab in the filter bar on patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I verify CARL button is "appearing" on the patient card

    Examples: 
      | Admit Date | LOS | Discharge CareType | CARL action |
      |          3 |   2 | Scheduled          | appearing   |
      |          9 |   3 | Inpatient          | appearing   |

  Scenario Outline: Discharge from anchor 7 days to HHH-Inpatient with discharge yesterday
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
    Then I fill in "Admit" with logic "minus" with "9" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I select the "3" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "Inpatient" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "1" LOS days on Discharge date on Add Transition
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
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I close the patient summary Page
    Then I verify CARL button is "appearing" on the patient card
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I click on the complete CARL on the Patient Summary
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Discharge" section on left navigator
    Then I save and continue the complete CARL form
    Then I click on the Submit button to submit the CARL form
    Then I verify current page "Remedy Partners" title
    Then I click on "All" tab in the filter bar on patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I verify CARL button is "appearing" on the patient card

    Scenario Outline: Discharge from anchor 8 days ago to HHH-Inpatient admitted 7 days ago no discharge
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
    Then I fill in "Admit" with logic "minus" with "9" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I select the "2" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "Inpatient" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I fill in "Admit" with logic "minus" with "6" days
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
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I close the patient summary Page
    Then I verify CARL button is "appearing" on the patient card
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I click on the complete CARL on the Patient Summary
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Discharge" section on left navigator
    Then I save and continue the complete CARL form
    Then I click on the Submit button to submit the CARL form
    Then I verify current page "Remedy Partners" title
    Then I click on "All" tab in the filter bar on patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I verify CARL button is "appearing" on the patient card
    
     Scenario Outline: Discharge from anchor 8 days ago to HHH-Inpatient admitted 7 days ago no discharge
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
    Then I fill in "Admit" with logic "minus" with "30" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I select the "2" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "Inpatient" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I fill in "Admit" with logic "minus" with "6" days
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
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I close the patient summary Page
    Then I verify CARL button is "appearing" on the patient card
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I click on the complete CARL on the Patient Summary
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I click on "Discharge" section on left navigator
    Then I save and continue the complete CARL form
    Then I click on the Submit button to submit the CARL form
    Then I verify current page "Remedy Partners" title
    Then I click on "All" tab in the filter bar on patients page
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I scroll the page to bottom by "-100"
    Then I verify CARL button is "appearing" on the patient card
    
    Scenario Outline: discharge two weeks ago to HHH-inpatient WITHOUT creating the new readmission
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
    Then I fill in "Admit" with logic "minus" with "30" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I scroll the page to bottom by "-100"
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I verify CARL button is "appearing" on the patient card
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I get the patient last name who have no CARL button in it
    Then I will wait to see and click on "Patient Details" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the edit button on the "1" transition to edit the Active transition
    Then I wait to the see the visibility of loader to disappear
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I select the "14" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "Inpatient" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on update transition to add a new episode
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Cancel button on Episode present on the Add Patient page
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I verify current page "Remedy Partners" title
    Then I click on "All" tab in the filter bar on patients page
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I verify CARL button is "not appearing" on the patient card
    
    Scenario Outline: discharge two weeks ago to HHH-inpatient WITH creating the new readmission
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
    Then I fill in "Admit" with logic "minus" with "30" days
    Then I select the care setting value "HHH - Hospital" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the care type value "Inpatient" on add a new transition
    Then I select the facility value "Stamford Hospital" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "61" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I scroll the page to bottom by "-100"
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I click on Filters button present on Filter Page
    Then I verify SSN Filter is displayed under List of Filter Options
    When I click on SSN Filter present on Filter Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I verify CARL button is "appearing" on the patient card
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I get the patient last name who have no CARL button in it
    Then I will wait to see and click on "Patient Details" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the edit button on the "1" transition to edit the Active transition
    Then I wait to the see the visibility of loader to disappear
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I select the "14" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "Inpatient" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I verify CARL button is "not appearing" on the patient card
    Then I click on the patient on the patient card page that has no CARL button in it
    Then I click on the complete CARL on the Patient Summary
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 4000 milli seconds
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I click on the Submit button to submit the CARL form
    Then I wait to the see the visibility of loader to disappear
    Then I verify current page "Remedy Partners" title
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I verify CARL button is "appearing" on the patient card
    Then I click on the edit button on the "2" transition to edit the Active transition
    Then I wait to the see the visibility of loader to disappear
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I select the "7" LOS days on Discharge date on Add Transition
    Then I wait to the see the visibility of loader to disappear
    Then I click on update transition to add a new episode
    Then I wait to the see the visibility of loader to disappear
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I verify current page "Remedy Partners" title
    Then I click on "All" tab in the filter bar on patients page
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I verify CARL button is "not appearing" on the patient card
     Then I click on the patient on the patient card page that has no CARL button in it
    Then I get the patient last name who have no CARL button in it
    Then I will wait to see and click on "Patient Details" followed by "span" tag
    Then I wait to the see the visibility of loader to disappear
    Then I switch to PatientTransitions frame
    Then I wait to the see the visibility of loader to disappear
    Then I click on the edit button on the "2" transition to edit the Active transition
    Then I wait to the see the visibility of loader to disappear
    Then I will wait to see "Transition Info" followed by "a" tag
    Then I select the "6" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Discharge" facility "Inpatient" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on update transition to add a new episode
    Then I wait to the see the visibility of loader to disappear
    Then I click on the Cancel button on Episode present on the Add Patient page
    Then I wait to the see the visibility of loader to disappear
    When I switch to default window from iframe
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I verify current page "Remedy Partners" title
    Then I click on "Inpatient" tab in the filter bar on patients page
    When I click on Filter button present on Patient Page
    And I wait for 2000 milli seconds
    Then I enter "SSN" value under "ssn" filter
    Then I click on Done button present on the Filter Page
    Then I verify CARL button is "appearing" on the patient card
    
    