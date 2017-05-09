
Feature: Created Patient Note Comparision in EC1 and EC2 
	


Scenario Outline: To verify Notes created in EC1 through i framing should only be accessible on EC2 care plan tab should not be seen under Clinical Documents tab .
Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    When I click on "Patients" in the left navigator present on the episode dashboard page
    Then I click on "Patient List" present in the Patients dropdown menu
    And I wait for 8000 milli seconds
    Then I enter "<Patient Name>" in the patient search box present on the patient page
    Then I click on search button present on the patients page
    And I wait for 10000 milli seconds
    Then I should see "<Patient Name>" patient on the patient list present on the patient page
     When I click on Patient under patient list page
    Then I should see "Patients" details
    And I wait for 10000 milli seconds
    
    Then I should see Care Plan present on the student details page
    Then I click on Care Plan
    And I wait for 2000 milli seconds
    
    When I click on Notes tab under care plan
    Then I click on new note button
    And I wait for 3000 milli seconds
    Then I should see "New Note" present on the new note page
    And I wait for 2000 milli seconds
    Then I click on topic dropdown under new note
    Then I select value from the topic dropdown
    Then I click on create note button
    And I wait for 10000 milli seconds
   
    Then I click on QA PRM on navigation bar on EC1
    Then I click on Return to Remedy from dropdown on QA PRM on navigation bar on EC1
    
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 25000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I wait for 30000 milli seconds
    
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Name>" in the search box on the patients page
    And I wait for 2000 milli seconds
    Then I click on the patient card on Patient Card Page
    And I wait for 25000 milli seconds
    Then I click on Clinical Documents tab below the patient summary 
    
    Examples:
                 | email     | password  | Patient Name   |
      | qa.admin@yopmail.com | Episode1! | Mlma Abccyvw |
