@EC1Smoke
Feature: Edit Transition

Background: Episode Active - create anchor transition
	Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
    And I am on "/secure/pn/patientslist"
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
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "10" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    And I reload my page
    And I will wait to see patient's name on patient summary page 

  Scenario: Edit transition & ELOS
    When I click on first gear menu under Transitions on patient overview
    And I click on "Edit" in gear menu option under Transition
    And I will wait to see "Edit Transition" in "h4" tag
    Then I enter TestReason on create transition page on transition tab on Patient Summary
    Then I enter "5" Room or Bed on create transition page on transition tab on Patient Summary
    Then I fill in "Discharge" with logic "minus" with "2" days
    Then I select the "Discharge" "caresetting" "SNF - Skilled Nursing Facility" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    And I should see "The episode length of stay for this bundle is 13-16 days" text for LOS on Transition modal 
    Then I click on "Treatment Info" tab on transition modal
    And I enter "Test treatment" in "treatments" field on transition modal
    And I enter "Test adverseReactions" in "adverseReactions" field on transition modal
    And I enter "Test hospitalist" in "hospitalist" field on transition modal
    And I enter "Test specialist" in "specialist" field on transition modal
    And I click on Update Transition button present on the patient overview page
    And I close modal popup
    And I will wait to see patient's name on patient summary page
    
