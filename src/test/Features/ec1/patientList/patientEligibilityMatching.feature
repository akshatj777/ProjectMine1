Feature: Patient Eligibility and Matching
  
  Scenario Outline: Create patient
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    Then I should see Tile text <Episode1>
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    And I expand the Patients panel on Dashboard
    And I click on patientlist link
    Then I should see "Patients" on the patient list page
    And I click on the Add Patient Button
    Then I should see "Patient Information" on Add Patient window
    And I enter <FirstName> for Patient first Name
    And I enter <LastName> for Patient Last Name
    Then I enter <DateofBirth> for patient date of Birth
    Then I enter "629568578" for SSN
    Then I select "Male" for Gender
    And I search for <FicilitySearch> Admit Facility
    And I Select the first admit facility
    And I enter "629568578F2" for Medicare ID
    And I click on Submit Button
    Then I should see "No Patient Found" on next window
    And I click on Submit Button
    And I wait for 10000 milli seconds
    Then I should see "New Transition" on next window
    Then I select an Admit Date
     #Then I enter "admit2" in admit reason
    Then I select care type
    And I click on Submit Button
    And I wait for 4000 milli seconds
    Then I click on Agree under Attestation page
    And I wait for 3000 milli seconds
     #Then I should see "Found patient matching your criteria; view the patient page for more information" on next page
     #And I click on Cancel Button
     #And I wait for 2000 milli seconds
    
    Examples:
      | email                 | password  | Episode1 | FirstName | LastName  | DateofBirth | FicilitySearch    |
      | qa.admin@yopmail.com  | Episode1! | Episodes | TesterQA  | PatientQA | 11/06/1989  | stamford Hospital |
  
  Scenario Outline: Create matching patient    
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    Then I should see Tile text <Episode1>
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"
    And I expand the Patients panel on Dashboard
    And I click on patientlist link
    Then I should see "Patients" on the patient list page
    And I click on the Add Patient Button
    Then I should see "Patient Information" on Add Patient window
    And I enter <FirstName> for Patient first Name
    And I enter <LastName> for Patient Last Name
    Then I enter <DateofBirth> for patient date of Birth
    Then I enter "629568578" for SSN
    Then I select "Male" for Gender
    And I search for <FicilitySearch> Admit Facility
    And I Select the first admit facility
    And I enter "629568578F2" for Medicare ID
    And I click on Submit Button
    Then I should see "Found patient matching your criteria; view the patient page for more information" on next page
     #And I click on Submit Button
     #And I wait for 5000 milli seconds
     #Then I should see "New Transition" on next window
     #Then I select an Admit Date
     #Then I select care type
     #And I click on Submit Button
     #And I wait for 2000 milli seconds
    And I click on Cancel Button
    And I wait for 3000 milli seconds

    Examples:
      | email                 | password  | Episode1 | FirstName | LastName  | DateofBirth | FicilitySearch    |
      | qa.admin@yopmail.com  | Episode1! | Episodes | TesterQA  | PatientQA | 11/06/1989  | stamford Hospital |
      
  Scenario Outline: Check Eligibility
  
  	Given I am on the login page
  	When I enter email field <email> for login
  	And I enter password field <password> for Login
  	Then I click Access button
		And I wait for 2000 milli seconds
  	Then I should see Tile text Episodes 
  	And I click on the "Episodes" tile
  	And I switch to new window
  	Then I should see Episode header text "Dashboard"
  	Then I should see "Dashboard" in the left navigator present on the episode dashboard page
  	Then I should see "Bookmarks" in the left navigator present on the episode dashboard page
  	Then I should see "Patients" in the left navigator present on the episode dashboard page
  	Then I should see "Admin Center" in the left navigator present on the episode dashboard page
  	When I click on "Patients" in the left navigator present on the episode dashboard page
  	Then I click on "Patient List" present in the Patients dropdown menu
  	Then I should see "Patient" present on the patient list filter page present on the patient list page 
  	Then I should see "Active" filter tab present on the patients page
  	Then I should see "Completed" filter tab present on the patients page
  	Then I should see "Canceled" filter tab present on the patients page
  	And I wait for 8000 milli seconds
  	Then I click on "Active" filter tab present on the patients page
  	And I wait for 4000 milli seconds
  	When I click on Patient under patient list page
  	Then I should see "Patients" details
  	And I wait for 2000 milli seconds
  	Then I should see "Eligible" under eligibility dropdown
  	Then I click on eligibility dropdown
  	Then I click on "Not Eligible" status
  	And I wait for 5000 milli seconds
  	And I search for "Not Eligible" in episodes dropdown
  	Then I verify "NOT ELIGIBLE" is present in episode dropdown
  	And I wait for 2000 milli seconds
  	#Then I clear the text in search box of episodes
  	#And I wait for 2000 milli seconds
  	Then I click on not eligible in the episodes dropdown
  	And I wait for 1000 milli seconds
  	Then I click on cancel
  	And I wait for 2000 milli seconds
  	And I search for date in episodes dropdown
  	And I wait for 2000 milli seconds
  	Then I verify date present in episode dropdown
  	And I wait for 2000 milli seconds
  	
 
     Examples:

      |          email            |   password   |
      |  qa.admin@yopmail.com 		|   Episode1!  |
  