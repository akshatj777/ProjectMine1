@EC1Smoke
Feature: Create task from patient list
 Background: Patient creation
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
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the Cancel Button on the New Transition on Add Patient page
 
  Scenario: Verify user is able to create task from patinet list
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    And I click on first patient gear menu
    When I click on "Add task" from patients list patient gear menu
    Then I verify "New Task" header on popup
    When I fill in task Due Date with today date
    And I fill in Task description with "TaskTest" for patient list
    And I select the checkbox on popup for care team
    And I click on "Create & Continue" button
    And I will wait to see "Task saved" in "p" tag
    And I refresh the page
    Then I navigate to the "/secure/person/mongoID/careflow#/careFlowTasks"
    And I verify "TaskTest" task description under Task in Care Plan
    
    