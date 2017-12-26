Feature: Verify Patient ID EngineUI scenarios

  Scenario: User should be able to verify ICD9 and ICD10 radio buttons on diagnosis and drg tab and verify the DRG prediction results.
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
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
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I verify ICD is present in the Diagnosis and DRG tab
    And I verify "Use ICD10" label is appearing under Diagnosis and DRG tab
    And I verify "Use ICD9" label is appearing under Diagnosis and DRG tab
    Then I verify "Use ICD10" radio button is checked when redirected to Diagnosis and DRG tab
    And I verify "Use ICD9" radio button is not selected and click on radio button if not selected
    Then I click on "Use ICD10" radio button on Diagnosis and DRG tab
    And I verify "Add ICD10 Code" text is appearing inside the primary Dx dropdown for ICD10
    Then I click on Primary Dx dropdown and select "543" value from the list
    And I click on Secondary Dx dropdown and select "235" value from the list
    Then I click on claculate results on the Diagnosis and DRG tab
    And I verify "(299)" code is appearing for "PERIPHERAL VASCULAR DISORDERS W MCC" on DRG prediction
    And I verify "(252)" code is appearing for "OTHER VASCULAR PROCEDURES W MCC" on DRG prediction
    And I verify "(239)" code is appearing for "AMPUTATION FOR CIRC SYS DISORDERS EXC UPPER LIMB & TOE W MCC" on DRG prediction
    And I verify "(0)" code is appearing for "None of the Above" on DRG prediction