@EC1Smoke
Feature: Patient Transition Update

  Scenario Outline: Update Patient Transition Details
  
  Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
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
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    And I click on submit button present on the new filter modal
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    And I click on first gear menu under Transitions on patient overview
    And I click on "Edit" in gear menu option under Transition
	And I will wait to see "Edit Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "3" days
    And I wait for 2000 milli seconds
    Then I select "HHH - Hospital" from the care setting dropdown present on the add transition page
    And I select "Inpatient" from admission care type drop down menu present on Add transition page
    And I wait for 4000 milli seconds
    When I click on Diagnosis and DRG tab present on the patient overview page
    Then I verify ICD is present in the Diagnosis and DRG tab
    And I verify Predict DRG is present in the Diagnosis and DRG tab
    And I verify Add a New DRG is present in the Diagnosis and DRG tab
    When I click on DRG Type to Add a New DRG present on the patient overview page
    Then I select Possible from the DRG type dropdown present on the patient overview page
    Then I Click on DRG dropdown menu present on the patient overview page
    And I wait for 4000 milli seconds
    Then I Search DRG 177 on the search box on the DRG present on the patient overview page
    And I wait for 4000 milli seconds
    Then I select RESPIRATORY INFECTIONS & INFLAMATIONS from the DRG list present on the patient overview page
    And I wait for 4000 milli seconds
    Then I click on Update Transition button present on the patient overview page
    And I wait for 3000 milli seconds
    
    Examples:

      | email                | password  |
      | qa.admin@yopmail.com | Episode1! |
    