@EC1Smoke
Feature: Filters pinned to dashboard
 
 Background: Patient Creation
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
    And I will wait to see "New Transition" in "h4" tag
    Then I click on the Cancel Button on the New Transition on Add Patient page
    And I am on cutom tab page "/secure/pn/patientslist#/filterId=custom&ssn=%%SSN&" filtered by SSN
    Then I Expand to the patient summary page
    And I will wait to see "Attestation" in "span" tag
    When I click "Agree" xpath element "//*[@id='submitButtonAdd']"
    And I will wait to see patient's name on patient summary page
    
 Scenario: Verify display of no of tasks and verify task moved to complete tab on mraked as complete
 	Then I navigate to the "/secure/patient/mongoID/careteam"
    And I click on "Join Care Team" button under "Care Team" on Patient overview
    And I will wait to see "Assigned to Care Team successfully." in "p" tag
    Then I navigate to the "/secure/person/mongoID/overview"
    And I click on gear icon on patient overview page
  	Then I click on "Add task" option under patient overview gear icon
  	And I verify "New Task" header on popup
    When I fill in task Due Date with today date
    And I fill in Task description with "TaskNavBar" for patient list
    And I select the checkbox on popup for care team
    And I click on "Create & Continue" button
    And I will wait to see "Task saved" in "p" tag
    Then I navigate to the "/secure/person/mongoID/careflow#/careFlowTasks"
    And I verify "TaskNavBar" task description under Task in Care Plan
    And I verify the count "1" on task navigation bar icon
    And I am on "/secure/dashboard/#today"
    And I should see "TaskNavBar" under My Task on Dashboard
    Then I should see "Today(1)" in task type "today" under My Task on Dashboard
    And I click on complete task checkbox under My task on Dashboard
    And I will wait to see "Task completed" in "p" tag
    Then I should see "Completed(1)" in task type "completed" under My Task on Dashboard
    
   
    

    
    
    
    
        
    
    
    
    