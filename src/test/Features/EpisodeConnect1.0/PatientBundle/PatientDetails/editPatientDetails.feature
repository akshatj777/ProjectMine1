@EC1Smoke
Feature: Edit Patient Detail link from patient overview Gear icon

  Background: Create a Patient
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

  Scenario: Edit Patient Detail and patient details UI verification
    Then I verify patients fullname on patient overview page
    And I click on gear icon on patient overview page
    Then I click on "Edit patient details" option under patient overview gear icon
    And I edit "dob" to "02/06/1995" under patient details
    And I click on "submit" button under patient details
    And I select "Female" on "gender" dropdown under edit patient details
    Then I click on "Cancel" button under patient details
    And I refresh the page
    And I will wait to see patient's name on patient summary page
    And I should see details "02/06/1995" on patients overview page
    And I should see details "Male" on patients overview page
