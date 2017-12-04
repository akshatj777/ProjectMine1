@sanity @PatientBundle @PatientDashboard
Feature: Managing Various Episode States

  Scenario: Episode Active - create anchor transition
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "https://qa.remedypartners.com/secure/pn/patientslist"
    When I click on Add Patient button present on the ec1 patients page
    Then I verify "Add Patient" text is present on the add patient page
    Then I enter random Patient First Name in the first name text box field present on the Add Patient page
    Then I enter random Patient Last Name in the last name text box field present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I selected "Male" from the gender drop down list present on the Add Patient page
    And I enter random social security number in the SSN text box field present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    Then I click on the next button present on the Primary Care Physician Information page
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on "https://qa.remedypartners.com/secure/pn/patientslist" filtered by SSN
    And I navigate to the filtered patient's summary page 
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='[btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I wait to the see the visibility of loader to disappear
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I select the "1" LOS days on Discharge date on Add Transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "65" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    Then I wait to the see the visibility of loader to disappear
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    And I will wait to see "Needs Onboarding" in "span" tag
#
#
  #Scenario: Episode CANCELED - delete anchor transition
    #When I click anchor transition delete link
     #And I click 'Ok' button browser alert
     #And I wait 1 seconds
#    Then I should see "Admission is deleted successfully!" after time
     #And I reload the page
    #Then I will wait to see "Patient No Episode"
     #And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "CANCELED"
    #And I will wait to see "Unknown"
#
  #@smoke
  #Scenario: Episode CANCELED - update anchor with final non-bpci drg
    #When I click first timing transition edit link
     #And I will wait to see 'Edit Transition' popup
    #And I wait 2 seconds
    #When I follow visible "Diagnosis and DRG"
     #And I will wait to see "DRG Type"
     #And I choose "(1) test ()" from 'DRG' select
     #And I choose "Final" from 'DRG Type' select
     #And I click 'Update Transition' button
     #And I wait to finish processing admission
     #And I reload the page
    #Then I will wait to see "Patient No Episode"
     #And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "CANCELED"
    #And I will wait to see "Unknown"
#
  #@smoke
  #Scenario: Episode PENDING CANCELLATION - update anchor with non-final non-bpci drg
    #When I click first timing transition edit link
     #And I will wait to see 'Edit Transition' popup
    #Then I wait 2 seconds
    #When I follow visible "Diagnosis and DRG"
     #And I will wait to see "DRG Type"
     #And I choose "(1) test ()" from 'DRG' select
     #And I choose "Working" from 'DRG Type' select
     #And I click 'Update Transition' button
     #And I wait to finish processing admission
     #And I reload the page
    #Then I will wait to see "Patient No Episode"
     #And Patient should have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "PENDING CANCELLATION"
     #And I will wait to see "Needs Onboarding"
#
#
  #Scenario: Episode EXPIRED AS INPATIENT - Set patient as exp.
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #When I fill in eligibility 'Date of Death' with today date
     #And I submit 'Set Expired Status' popup
    #Then I will wait to see "Your changes have been successfully saved"
     #And I should see "Expired"
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
     #And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "EXPIRED AS INPATIENT"
    #And I will wait to see "Unknown"
#
  #@smoke
  #Scenario: Episode NOT ELIGIBLE and Back to Active - set patient eligibility to not eligible then back to eligible
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "not_eligible" option
    #When I click on eligibility set "not_eligible" option
    #Then I will wait to see "Your changes have been successfully saved"
     #And I should see "Not Eligible"
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
     #And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "NOT ELIGIBLE"
    #And I will wait to see "Unknown"
#
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "eligible" option
    #When I click on eligibility set "eligible" option
    #Then I will wait to see "Your changes have been successfully saved"
     #And I should see "Eligible"
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
     #And Patient should have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "ACTIVE"
    #And I will wait to see "Needs Onboarding"
#
  #Scenario: Episode COMPLETED - discharge date before 90 days
    #When I click first timing transition edit link
     #And I will wait to see 'Edit Transition' popup
     #And I fill in 'Admission Date' with minus 4 months
#
     #And I fill in 'Discharge Date' with minus 95 days
     #And I fill in 'Discharge Date' with logic "minus" with 95 days
     #And I click 'Update Transition' button
     #And I wait to finish processing admission
     #And I reload the page
    #Then I will wait to see "Patient No Episode"
#    And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "COMPLETED"
#
    #And I will wait to see "Unknown"
#
  #@smoke
  #Scenario: Episode COMPLETED EXPIRED - Update the discharge date and set patient as exp
    #When I click first timing transition edit link
     #And I will wait to see 'Edit Transition' popup
     #And I fill in 'Admission Date' with minus 3 months
#
     #And I fill in 'Discharge Date' with minus 30 days
     #And I fill in 'Discharge Date' with logic "minus" with 30 days
     #And I click 'Update Transition' button
     #And I wait to finish processing admission
     #And I reload the page
    #Then I will wait to see "Patient No Episode"
    #And Patient should have opened episode
#
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #When I fill in eligibility 'Date of Death' with today date
     #And I submit 'Set Expired Status' popup
#
    #And I will wait flash message to appear
    #Then I will wait to see "Your changes have been successfully saved"
     #And I should see "Expired"
    #When I reload the page
    #Then I will wait to see "Patient No Episode" maximum 60 seconds
#     And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "COMPLETED EXPIRED"
    #And I will wait to see yesterday date without time format
#
  #Scenario: Episode COMPLETED-365 - Anchor admit date before 365 days
    #When I click first timing transition edit link
    #And I will wait to see 'Edit Transition' popup
    #And I fill in 'Admission Date' with minus 13 months
#
    #And I click 'Update Transition' button
    #And I wait to finish processing admission
    #And I reload the page
    #Then I will wait to see "Patient No Episode"
#    And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "COMPLETED 365"
    #Then I will wait to see "Unknown"
#
  #Scenario: EXPIRED AS INPATIENT-Removing dod should rerun episode logic and also reinstate previous eligibility status.
    #And I will wait to see "Eligible"
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #When I fill in eligibility 'Date of Death' with today date
    #And I submit 'Set Expired Status' popup
    #Then I will wait to see "Your changes have been successfully saved"
    #And I should see "Expired"
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
    #And I will wait to see "Unknown"
    #And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "EXPIRED AS INPATIENT"
#
#
#    And I will wait to see "Expired"
    #When I am on "/secure/person/260000000000000000000009/patient-details"
    #Then I will wait to see "Patient No Episode"
    #When I edit medicare ID with "123456799A"
#
    #When I edit date of death with ""
    #And I will clear the Date of death field on patient details page
    #And I reload the page
    #Then I will wait to see "Patient No Episode" maximum 60 seconds
    #And Patient should have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "ACTIVE"
    #And I will wait to see "Needs Onboarding"
    #And I should not see "Expired"
#
  #Scenario: COMPLETED EXPIRED -Removing dod should rerun episode logic and also reinstate previous eligibility status.
    #And I will wait to see "Eligible"
    #When I click first timing transition edit link
    #And I will wait to see 'Edit Transition' popup
    #And I fill in 'Admission Date' with minus 3 months
#
    #And I fill in 'Discharge Date' with minus 30 days
    #And I fill in 'Discharge Date' with logic "minus" with 30 days
    #And I click 'Update Transition' button
    #And I wait to finish processing admission
    #And I reload the page
    #Then I will wait to see "Patient No Episode"
    #And Patient should have opened episode
#
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #When I fill in eligibility 'Date of Death' with today date
    #And I submit 'Set Expired Status' popup
#
    #And I will wait flash message to appear
    #Then I will wait to see "Your changes have been successfully saved"
    #And I should see "Expired"
    #When I reload the page
    #Then I will wait to see "Patient No Episode" maximum 60 seconds
#    And Patient should not have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "COMPLETED EXPIRED"
#
#    And I will wait to see "Expired"
    #When I am on "/secure/person/260000000000000000000009/patient-details"
    #Then I will wait to see "Patient No Episode"
    #When I edit medicare ID with "123456799A"
#
    #And I will clear the Date of death field on patient details page
    #And I reload the page
    #Then I will wait to see "Patient No Episode" maximum 60 seconds
    #And Patient should have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "ACTIVE"
    #And I will wait to see "Unknown"
    #And I should not see "Expired"
#
  #Scenario: Set ESRD should cancel the valid episodes
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "not_eligible_esrd" option
    #When I click on eligibility set "not_eligible_esrd" option
#    Then I will wait flash message to appear
#    And I will wait to see "Your changes have been successfully saved"
    #Then I will wait to see "Not Eligible – ESRD"
#
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
    #When I click on episode marker drop down
    #Then I will wait to see "NOT ELIGIBLE"
#
  #Scenario: From "Not Eligible - ESRD" to "Expired"
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "not_eligible_esrd" option
    #When I click on eligibility set "not_eligible_esrd" option
#    And I will wait flash message to appear
#    Then I will wait to see "Your changes have been successfully saved"
    #Then I will wait to see "Not Eligible – ESRD"
    #And I wait 1 seconds
#
    #When I click 'New Transition' button
    #Then I will wait to see 'New Transition' popup
    #When I fill in 'Admission Date' with yesterday date
    #And I choose "HHH - Hospital" from Admission 'Facility Category' select
    #And I choose "Inpatient" from Admission 'Care type' select
    #And I will wait to see 'Admission Facility'
    #And I fill in Admission 'Facility' with "first facility"
    #When I follow visible "Diagnosis and DRG"
    #And I choose "(2) test2 ()" from 'DRG' select
    #And I choose "Possible" from 'DRG Type' select
    #And I click 'Create Transition' button
    #And I wait to finish processing admission
    #Then I should see "(HHH) Inpatient first facility \" (test group) \"" after time
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
#
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #When I fill in eligibility 'Date of Death' with today date
    #And I submit 'Set Expired Status' popup
    #Then I will wait to see "Your changes have been successfully saved"
    #And I should see "Expired"
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
    #When I click on episode marker drop down
    #Then I will wait to see "NOT ELIGIBLE"
#
  #Scenario: From "Not Eligible - ESRD" to "Not Eligible"
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "not_eligible_esrd" option
    #When I click on eligibility set "not_eligible_esrd" option
#    And I will wait flash message to appear
#    Then I will wait to see "Your changes have been successfully saved"
    #Then I will wait to see "Not Eligible – ESRD"
#
    #When I click 'New Transition' button
    #Then I will wait to see 'New Transition' popup
    #When I fill in 'Admission Date' with yesterday date
    #And I choose "HHH - Hospital" from Admission 'Facility Category' select
    #And I choose "Inpatient" from Admission 'Care type' select
    #And I will wait to see 'Admission Facility'
    #And I fill in Admission 'Facility' with "first facility"
    #When I follow visible "Diagnosis and DRG"
    #And I choose "(2) test2 ()" from 'DRG' select
    #And I choose "Possible" from 'DRG Type' select
    #And I click 'Create Transition' button
    #And I wait to finish processing admission
    #Then I should see "(HHH) Inpatient first facility \" (test group) \"" after time
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
#
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "not_eligible" option
    #When I click on eligibility set "not_eligible" option
    #Then I will wait to see "Your changes have been successfully saved"
    #And I should see "Not Eligible"
    #When I reload the page
    #Then I will wait to see "Patient No Episode"
    #When I click on episode marker drop down
    #Then I will wait to see "NOT ELIGIBLE"
#
  #Scenario: DoD Error Validation on Eligibility Modal - DoD to be future date
    #And I will wait to see "Eligible"
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #And I should see "Note!"
    #And I should see "To set status to Expired, please enter an official date of death."
    #And I should see "This information will be added to the Patient Details tab."
    #When I fill in eligibility 'Date of Death' with date 1 for logic "plus"
    #And I submit 'Set Expired Status' popup
    #Then I will wait to see "You have some form errors. Please check below."
    #And I will wait to see "DoD is in the future. Please choose a valid date in the past."
#
  #Scenario: DoD Error Validation on Eligibility Modal - DoD cannot be before DoB
    #And I will wait to see "Eligible"
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #When I fill in eligibility 'Date of Death' with date 20000 for logic "minus"
    #And I submit 'Set Expired Status' popup
    #Then I will wait to see "You have some form errors. Please check below."
    #And I will wait to see "DoD can not come before DoB."
#
  #Scenario: DoD Error Validation on Eligibility Modal - DoD blank
    #And I will wait to see "Eligible"
    #When I click on eligibility drop down button
    #Then I will wait to see eligibility set "expired" option
    #When I click on eligibility set "expired" option
    #Then I will wait to see "Set Expired Status"
    #And I submit 'Set Expired Status' popup
    #Then I will wait to see "Please enter a date of death"
#
  #Scenario: Updating Anchor Admission - BPCI to Non-BPCI and again to BPCI
    #When I click first timing transition edit link
    #And I will wait to see 'Edit Transition' popup
    #Then I wait 2 seconds
    #When I follow visible "Diagnosis and DRG"
    #And I will wait to see "DRG Type"
    #And I choose "(1) test ()" from 'DRG' select
    #And I choose "Working" from 'DRG Type' select
    #And I click 'Update Transition' button
    #And I wait to finish processing admission
    #And I reload the page
    #Then I will wait to see "Patient No Episode"
    #And Patient should have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "PENDING CANCELLATION"
    #And I will wait to see "Needs Onboarding"
#
    #When I click first timing transition edit link
    #And I will wait to see 'Edit Transition' popup
    #And I wait 2 seconds
    #When I follow visible "Diagnosis and DRG"
    #And I will wait to see "DRG Type"
    #And I choose "(2) test2 ()" from 'DRG' select
    #And I choose "Final" from 'DRG Type' select
    #And I click 'Update Transition' button
    #And I wait to finish processing admission
    #And I reload the page
    #Then I will wait to see "Patient No Episode"
    #And Patient should have opened episode
    #When I click on episode marker drop down
    #Then I will wait to see "ACTIVE"
    #And I will wait to see "Needs Onboarding"