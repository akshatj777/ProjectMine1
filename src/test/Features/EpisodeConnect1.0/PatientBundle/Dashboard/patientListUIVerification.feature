@EC1Smoke
Feature: Patient List - Tabs - Patient List Card View

  Scenario: Verify on each tab and saved filter, that correct data should be presented on card view -
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
    And I verify patient DOB Age Gender on patient summary page
    And I verify SSN on patient summary page in EC1
    And I verify "Gray" color with code "#868686" should be followed for "High risk" with xpath "//span[contains(@class,'ra-label')]" on patient card
    When I click "Onboarding status" xpath element "//*[@id='current_onboarding_status_container']"
    And I verify "Blue" color with code "#4b8df8" should be followed for onboarding status "Needs Onboarding"
    And I verify "Orange" color with code "#e87e04" should be followed for onboarding status "Not-Onboarded"
    And I verify "Green" color with code "#35aa47" should be followed for onboarding status "Onboarded"
    Then I refresh the page
    And I verify "Grey" color with code "#bfbfbf" should be followed for onboarding status "Unknown"
    When I click "Add Transition" xpath element "//*[@id='btnNewTransition']"
    And I will wait to see "New Transition" in "h4" tag
    Then I fill in "Admit" with logic "minus" with "1" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I should see details "Stamford - Stamford Hospital" on patients overview page
    And I should see details "ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC (63)" on patients overview page
    And I should see details "Initiator: Stamford - Stamford Hospital" on patients overview page
    And I should see details "Account not activated" on patients overview page
    And I should see details "Error" on patients overview page
     Then I will wait to see onboarding status "Needs Onboarding" 