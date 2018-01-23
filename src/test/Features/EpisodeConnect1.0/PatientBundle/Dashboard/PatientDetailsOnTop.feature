@EC1Smoke
Feature: Patient Details on Patient overview page

  Background: Episode Active - create anchor transition
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
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
    And I Select "Home" from the list of address type present on the Add Patient page
    And I enter "Street" in "address_street" field on add Patient page
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
    And I enter Test on create transition page on transition tab on Patient Summary
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I fill in "Discharge" with logic "minus" with "2" days
    Then I select the "Discharge" "caresetting" "SNF - Skilled Nursing Facility" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I select the "Discharge" "caretype" "Skilled Nursing" by "#bp_personbundle_bpadmissiontype_dischargeCareType" on add a new transition
    Then I select the "Discharge" facility "Stamford Hospital" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    And I store "Admit date" value appearing in "#bp_personbundle_bpadmissiontype_admitDate" field
    And I store "Discharge date" value appearing in "#bp_personbundle_bpadmissiontype_dischargeDate" field
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "63" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on "TCRN Checklist" label tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I will wait to see patient's name on patient summary page

  Scenario: Patient Details on Patient overview page+
    Then I verify patients fullname on patient overview page
    #   And I should see details "01/05/1995" on patients overview page
    #   And I should see details "Male" on patients overview page
    And I click on gear icon on patient overview page
    And I should see "Edit patient details" under patient overview gear icon
    And I should see "Send message" under patient overview gear icon
    And I should see "Add task" under patient overview gear icon
    And I should see "Add Appointment" under patient overview gear icon
    And I should see "Add Note" under patient overview gear icon
    And I should see "Assign Form" under patient overview gear icon
    And I should see "Add New Clinician" under patient overview gear icon
    And I should see "Eligibility Verification" under patient overview gear icon
    When I click on episode marker drop down
    Then I will wait to see "ACTIVE" state
    Then I will wait to see onboarding status "Needs Onboarding"
    And I verify patient DOB Age Gender on patient summary page
    And I should see details "STREET" on patients overview page
    And I should see details "SSN xxx-xx-0800" on patients overview page
    And I should see details "Stamford - Stamford Hospital" on patients overview page
    And I should see details "ACUTE ISCHEMIC STROKE W USE OF THROMBOLYTIC AGENT W/O CC/MCC (63)" on patients overview page
    And I should see details "Initiator: Stamford - Stamford Hospital" on patients overview page
    And I should see details "Account not activated" on patients overview page
    And I should see details "Error" on patients overview page
    And I should see details "Needs Onboarding" on patients overview page
    And I should see details "MRNs" on patients overview page
    And I should see "info" icon on details on patients overview page
    And I should see "plus" icon on details on patients overview page
    And I should see "home" icon on details on patients overview page
    And I should see "map-marker" icon on details on patients overview page
    And I should see "hospital-o" icon on details on patients overview page
    And I should see "flag" icon on details on patients overview page
    And I should see "user" icon on details on patients overview page
    And I should see "umbrella" icon on details on patients overview page
    And I should see "flash" icon on details on patients overview page
    #   And I should see "alt" icon on details on patients overview page
    And I reload my page
    And I will wait to see patient's name on patient summary page
    And I select first text from tag drodown on patient overview page
    And I click on Onboarding status dropdown on patient overview page
    And I should see "Unknown" under onboarding status dropdown on patient overview page
    And I should see "Not-Onboarded" under onboarding status dropdown on patient overview page
    And I should see "Onboarded" under onboarding status dropdown on patient overview page
    And I reload my page
    And I will wait to see patient's name on patient summary page
    And I click on Eligibility dropdown on patient overview page
    And I should see "Run Service" under Eligibility dropdown on patient overview page
    And I should see "Review Service Response" under Eligibility dropdown on patient overview page
    And I should see "Reset Payer Section" under Eligibility dropdown on patient overview page
    And I should see "Eligible" under Eligibility dropdown on patient overview page
    And I should see "Not Eligible" under Eligibility dropdown on patient overview page
    And I should see "Not Eligible - ESRD" under Eligibility dropdown on patient overview page
    And I should see "Unknown" under Eligibility dropdown on patient overview page
    And I should see "Expired" under Eligibility dropdown on patient overview page
    Then I verify "Dashboard" tab is present under header navigation on patient overview
    Then I verify "Patient Details" tab is present under header navigation on patient overview
    Then I verify "Care Plan" tab is present under header navigation on patient overview
    Then I verify "Care Team" tab is present under header navigation on patient overview
    Then I verify "Medical Record" tab is present under header navigation on patient overview
    Then I verify "Activity" tab is present under header navigation on patient overview
    And I verify search present under transition on patient overview
    And I verify "Stamford - Stamford Hospital" appearing under "Episode Initiator" for "1" tranisition on patient overview
    And I verify "(HHH) Stamford - Stamford Hospital" appearing under "facility-column" for "1" tranisition on patient overview
    And I verify "Inpatient" appearing under "type-column" for "1" tranisition on patient overview
    And I verify "(SNF) Stamford Hospital Snf" appearing under "discharge_location-column" for "1" tranisition on patient overview
    And I verify "Test" appearing under "admit_reason-column" for "1" tranisition on patient overview
    And I verify "admit date" appearing in transition on patient overview
    And I verify "discharge date" appearing in transition on patient overview
    And I click on first gear menu under Transitions on patient overview
    And I should see "Edit" under transition gear icon on patient overview page
    And I should see "Add Transition" under transition gear icon on patient overview page
    And I should see "Delete" under transition gear icon on patient overview page
    And I should see "Assign" under transition gear icon on patient overview page
    And I should see "Attach Note" under transition gear icon on patient overview page
    And I should see "Start CARL Tool" under transition gear icon on patient overview page
    And I should see Pagination under Transition on patient overview
    And I reload my page
    And I will wait to see patient's name on patient summary page
    And I click on gear icon on patient overview page
    And I click on "Add New Clinician" option under patient overview gear icon
    And I will wait to see "Add New Clinician" in "h4" tag
#
