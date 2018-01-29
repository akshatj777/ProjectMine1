@EC1Smoke
Feature: POT3 will get activated on post acute admission

  Background: Potential M3 Active
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
    Then I fill in "Admit" with logic "minus" with "30" days
    Then I select the "Admit" "caresetting" "HHH - Hospital" by "#bp_personbundle_bpadmissiontype_admitFacilityCategory" on add a new transition
    Then I select the "Admit" "caretype" "Inpatient" by "#bp_personbundle_bpadmissiontype_admitCareType" on add a new transition
    Then I select the "Admit" facility "Emanuel County Hospital Authority" by "#s2id_bp_personbundle_bpadmissiontype_admitFacility" on add a new transition
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I select the "Working" DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the "177" DRG value on the Diagnosis and DRG tab on add a new transition
    Then I click on the Create Transition Button to add a new transition
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will wait to see "POTENTIAL MODEL 3" state
    Then I verify Episode Marker with Admit Date "30" is created without end date

  Scenario: POT3 will get activated on post acute admission, which its admit date is between HHH discharge to the POT3 episode end date.
    
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "15" LOS days on Discharge date on Add Transition
    Then I select the "Discharge" "caresetting" "SNF - Skilled Nursing Facility" by "#bp_personbundle_bpadmissiontype_dischargeFacilityCategory" on add a new transition
    Then I select the "Discharge" "caretype" "Skilled Nursing" by "#bp_personbundle_bpadmissiontype_dischargeCareType" on add a new transition
    Then I select the "Discharge" facility "Coosa valley health care" by "#s2id_bp_personbundle_bpadmissiontype_dischargeFacility" on add a new transition
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "15" with "89" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "15" admit date with "1" hour "later" in transition "1"
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "15" with "89" to show end date and Episode Status "ACTIVE"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click first timing transition edit link "1"
    And I will wait to see "Edit Transition" in "h4" tag
    Then I select the "15" admit date with "-2" hour "before" in transition "1"
    Then I click on update transition to add a new episode
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "0" with "-1" to show end date and Episode Status "CANCELED"
    Then I will verify Episode Marker Admit Date "30" and "minus" Discharge date "15" with "29" to show end date and Episode Status "POTENTIAL MODEL 3"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click anchor transition delete link "1"
    And I will wait to see patient's name on patient summary page
    When I click on episode marker drop down
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "15" with "89" to show end date and Episode Status "ACTIVE"
    Then I will verify Episode Marker Admit Date "30" and "minus" Discharge date "0" with "-1" to show end date and Episode Status "POTENTIAL EPISODE CANCELED"
    Then I navigate to the "/secure/person/mongoID/careflow#/careFlowForms"
    And I will wait to see patient's name on patient summary page
    Then I verify "Clinical Risk Assessment assigned" in "Assigned Form list" "2"
    Then I edit the CRA
    When I click "Submit" xpath element "//*[@id='submitButton']"
    And I will wait to see patient's name on patient summary page
    Then I will wait to see onboarding status "Onboarded"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click Start CARL tool link "2"
    When I click "Submit" xpath element "//*[@id='submitButton']"
    Then I verify CARL form in "1"
    Then I navigate to the "/secure/person/mongoID/overview"
    And I will wait to see patient's name on patient summary page
    When I click Start CARL tool link "1"
    When I click "Submit" xpath element "//*[@id='submitButton']"
    Then I verify CARL form in "2"
    When I click "Edit CARL" xpath element "//*[@id='edit_BPNSoCForm']"
    And I will wait to see "CARL Tool" in "h4" tag
    And I will wait to see "Care At the Right Location Calculator" in "h1" tag
    And I will wait to see "Independence" in "a" tag
    Then I select "Caregiver needed" from "Ambulatory Status in Independence" by xpath "//*[@id='bp_nsoc_form_type_ambulatoryStatus']"
    Then I select "Assistance needed for one or more ADLs" from "Activities of Daily Living in Independence" by xpath "//*[@id='bp_nsoc_form_type_activitiesOfDailyLiving']"
    Then I select "Forgetful" from "Cognitive Status in Independence" by xpath "//*[@id='bp_nsoc_form_type_cognitiveStatus']"
    Then I select "24 hours a day (or no caregiver needed)" from "Capable Caregiver Availability in Independence" by xpath "//*[@id='bp_nsoc_form_type_capableCaregiverAvailability']"
    Then I click "Therapies" text in tag "a"
    And I will wait to see "Therapy Needs" in "label" tag
    Then I select "More than one therapy" from "Therapy Needs" by xpath "//*[@id='bp_nsoc_form_type_totalTimeNeeded']"
    Then I click "Skilled Nursing Services" text in tag "a"
    And I will wait to see "Ostomy" in "label" tag
    Then I select "Not needed" from "Ostomy" by xpath "//*[@id='bp_nsoc_form_type_ostomy']"
    Then I select "Not needed" from "Tube Feeding" by xpath "//*[@id='bp_nsoc_form_type_tubeFeeding']"
    Then I select "Not needed" from "Tracheostomy" by xpath "//*[@id='bp_nsoc_form_type_tracheostomy']"
    Then I select "Not needed" from "Catheter" by xpath "//*[@id='bp_nsoc_form_type_catheter']"
    Then I select "Not needed" from "Injectable Meds" by xpath "//*[@id='bp_nsoc_form_type_injectableMeds']"
    Then I select "Not needed" from "Venipuncture Blood Testing" by xpath "//*[@id='bp_nsoc_form_type_venipunctureBloodTesting']"
    Then I select "Not needed" from "Clinical Nursing Oversight" by xpath "//*[@id='bp_nsoc_form_type_clinicalNursingOversight']"
    Then I select "Not needed" from "Teaching And Training Activities" by xpath "//*[@id='bp_nsoc_form_type_teachingAndTrainingActivities']"
    Then I select "Not needed" from "Wound Care" by xpath "//*[@id='bp_nsoc_form_type_woundCare']"
    Then I select "Not needed" from "Oxygen Or Other Respiratory Support" by xpath "//*[@id='bp_nsoc_form_type_oxygenOrOtherRespiratorySupport']"
    Then I click "Proposal" text in tag "a"
    And I will wait to see "Proposal" in "label" tag
    Then I will wait to see the proposal "Home With Limited Services (HOM)*"
    Then I will verify text "Proper Use of the CARL Tool. The CARL Tool provides decision support, which is intended to give qualified healthcare providers guidance when formulating a recommendation for the next site of care for a patient. It should not be used without, or as a substitute for, the judgement of a qualified healthcare provider who has the ability to assess the individual circumstances of each patient's case." in xpath element "//div[@id='disclaimer'][2]"
    Then I will verify text "Patient may benefit from community or home-based services, including Part B PT, personal care attendant, outpatient specialty care or other services." in xpath element "//div[@id='disclaimer'][1]"
    Then I select "Agrees" from "Agrees with Proposal" by xpath "//*[@id='bp_nsoc_form_type_agreesWithRecommendedNSC']"
    When I fill in "Staff Member Name" xpath "//*[@id='bp_nsoc_form_type_hospitalStaffMember']" with "testHospitalStaff"
    When I fill in "Additional comments" xpath "//*[@id='bp_nsoc_form_type_additionalComments']" with "Additional Comments"
    When I click "Submit" xpath element "//*[@id='submitButton']"
    Then I will wait to see CARL Tool "2" on active state
    And I should see text of "2" in active form counter
    When I click "Edit CARL" xpath element "//*[@id='edit_BPNSoCForm']"
    And I will wait to see "CARL Tool" in "h4" tag
    And I will wait to see "Care At the Right Location Calculator" in "h1" tag
    And I will wait to see "Independence" in "a" tag
    Then I select "Caregiver needed" from "Ambulatory Status in Independence" by xpath "//*[@id='bp_nsoc_form_type_ambulatoryStatus']"
    Then I select "Assistance needed for one or more ADLs" from "Activities of Daily Living in Independence" by xpath "//*[@id='bp_nsoc_form_type_activitiesOfDailyLiving']"
    Then I select "Forgetful" from "Cognitive Status in Independence" by xpath "//*[@id='bp_nsoc_form_type_cognitiveStatus']"
    Then I select "24 hours a day (or no caregiver needed)" from "Capable Caregiver Availability in Independence" by xpath "//*[@id='bp_nsoc_form_type_capableCaregiverAvailability']"
    Then I click "Therapies" text in tag "a"
    And I will wait to see "Therapy Needs" in "label" tag
    Then I select "More than one therapy" from "Therapy Needs" by xpath "//*[@id='bp_nsoc_form_type_totalTimeNeeded']"
    Then I click "Skilled Nursing Services" text in tag "a"
    And I will wait to see "Ostomy" in "label" tag
    Then I select "Not needed" from "Ostomy" by xpath "//*[@id='bp_nsoc_form_type_ostomy']"
    Then I select "Not needed" from "Tube Feeding" by xpath "//*[@id='bp_nsoc_form_type_tubeFeeding']"
    Then I select "Not needed" from "Tracheostomy" by xpath "//*[@id='bp_nsoc_form_type_tracheostomy']"
    Then I select "Not needed" from "Catheter" by xpath "//*[@id='bp_nsoc_form_type_catheter']"
    Then I select "Not needed" from "Injectable Meds" by xpath "//*[@id='bp_nsoc_form_type_injectableMeds']"
    Then I select "Not needed" from "Venipuncture Blood Testing" by xpath "//*[@id='bp_nsoc_form_type_venipunctureBloodTesting']"
    Then I select "Not needed" from "Clinical Nursing Oversight" by xpath "//*[@id='bp_nsoc_form_type_clinicalNursingOversight']"
    Then I select "Not needed" from "Teaching And Training Activities" by xpath "//*[@id='bp_nsoc_form_type_teachingAndTrainingActivities']"
    Then I select "Not needed" from "Wound Care" by xpath "//*[@id='bp_nsoc_form_type_woundCare']"
    Then I select "Not needed" from "Oxygen Or Other Respiratory Support" by xpath "//*[@id='bp_nsoc_form_type_oxygenOrOtherRespiratorySupport']"
    Then I click "Proposal" text in tag "a"
    And I will wait to see "Proposal" in "label" tag
    Then I will wait to see the proposal "Home With Limited Services (HOM)*"
    Then I will verify text "Proper Use of the CARL Tool. The CARL Tool provides decision support, which is intended to give qualified healthcare providers guidance when formulating a recommendation for the next site of care for a patient. It should not be used without, or as a substitute for, the judgement of a qualified healthcare provider who has the ability to assess the individual circumstances of each patient's case." in xpath element "//div[@id='disclaimer'][2]"
    Then I will verify text "Patient may benefit from community or home-based services, including Part B PT, personal care attendant, outpatient specialty care or other services." in xpath element "//div[@id='disclaimer'][1]"
    Then I select "Agrees" from "Agrees with Proposal" by xpath "//*[@id='bp_nsoc_form_type_agreesWithRecommendedNSC']"
    When I fill in "Staff Member Name" xpath "//*[@id='bp_nsoc_form_type_hospitalStaffMember']" with "testHospitalStaff"
    When I fill in "Additional comments" xpath "//*[@id='bp_nsoc_form_type_additionalComments']" with "Additional Comments"
    When I click "Submit" xpath element "//*[@id='submitButton']"
    Then I will wait to see CARL Tool "2" on active state
    And I should see text of "2" in active form counter
    And I should see text of "0" in assigned form counter
    And I should see text of "1" in archived form counter
    When I click "Add New+" xpath element "//*[@id='addNewForm']"
    Then I select "After Hour Call" from "Form Type" by xpath "//*[@id='bp_personbundle_addnewformratype_formType']"
    When I click "Assign" xpath element "//*[@id='submitButton']"
    Then I verify After Hour Call in "1"
    Then I navigate to the "/secure/person/mongoID/overview"
    When I click anchor transition delete link "1"
    And I will wait to see patient's name on patient summary page
    Then I will verify Episode Marker Admit Date "15" and "add" Discharge date "15" with "89" to show end date and Episode Status "ACTIVE"
