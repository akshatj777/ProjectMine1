@EC1Smoke
Feature: Episode Connect export patient list

  Scenario: User can load a system filter and export patient list
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    When I click on "Patients" in the left navigator present on the episode dashboard page
    Then I should see "Patient List" in the Patients dropdown menu
    Then I should see "Inpatient Episodes" in the Patients dropdown menu
    Then I should see "Post Acute Episodes" in the Patients dropdown menu
    Then I should see "Readmissions" in the Patients dropdown menu
    Then I should see "Non-BPCI inpatients" in the Patients dropdown menu
    Then I should see "Inpatients with no DRG" in the Patients dropdown menu
    Then I should see "Anchor discharges" in the Patients dropdown menu
    Then I should see "Discharges from readmission" in the Patients dropdown menu
    Then I should see "Canceled episodes" in the Patients dropdown menu
    Then I should see "Discharges with no DRG" in the Patients dropdown menu
    When I click on "Post Acute Episodes" in the Patients dropdown menu
    Then I click on Load filter in "Post Acute Episodes" to load the patient list present on the patients dropdown
    Then I should see "Patient" present on the patient list filter page present on the patient list page
    Then I should see patient list count info present on the patient list page
    Then I verify the patient count is "less" than 1000 on the patient list page
    Then I verify export button is present on the patient list page
    Then I click on the export button present on the patient list page
    And I will wait to see "Export List" in "h4" tag
    When I click "Anchor Admission Date" check box "admitted_anchor" on export list
    When I click "Download File" xpath element "//*[@id='modal-download-file']"
    And I will wait to see "Download Complete" in "h2" tag
    And I will wait to see "This patient list was successfully downloaded to your computer." in "p" tag
    Then I verify the file "patientList.csv" downloaded is in "csv" format for export

  Scenario: Validation pop up(Cannot Export List - Lists with more than 1,000 patients cannot be exported).
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    And I am on "/secure/pn/patientslist"
    Then I should see patient list count info present on the patient list page
    Then I click Custom on patient list
    Then I verify the patient count is "greater" than 1000 on the patient list page
    Then I verify export button is present on the patient list page
    Then I click on the export button present on the patient list page
    Then I verify "Cannot Export List" on export list
    And I will wait to see "Lists with more than 1,000 patients cannot be exported. Please refine your search." in "p" tag

  Scenario: Message should be displayed when there are no patient on patient list and user try to export.
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    And I am on "/secure/pn/patientslist"
    Then I should see patient list count info present on the patient list page
    Then I click Custom on patient list
    Then I verify the patient count is "greater" than 1000 on the patient list page
    And I am on "/secure/pn/patientslist#/filterId=custom&ssn=123456789&"
    And I will wait to see "Showing 0 to 0 of 0 results" in "div" tag
    Then I verify export button is present on the patient list page
    Then I click on the export button present on the patient list page
    Then I verify "Cannot Export List" on export list
    And I will wait to see "No patients found matching current search criteria. Please refine your search." in "p" tag
