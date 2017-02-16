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
    Then I enter "629368578" for SSN
    Then I select "Male" for Gender
    And I search for <FicilitySearch> Admit Facility
    And I Select the first admit facility
    And I enter "629368578F2" for Medicare ID
    And I click on Submit Button
    Then I should see "No Patient Found" on next window
    And I click on Submit Button
    And I wait for 10000 milli seconds
    Then I should see "New Transition" on next window
    Then I select an Admit Date
    Then I select care type
    And I click on Submit Button
    And I wait for 4000 milli seconds
    Then I click on Agree under Attestation page
    And I wait for 3000 milli seconds
    
    Examples:
      | email                 | password  | Episode1 | FirstName | LastName | DateofBirth | FicilitySearch    |
      | qa.admin@yopmail.com  | Episode1! | Episodes | TestQA    | PatQA    | 13/06/1989  | stamford Hospital |
  
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
    Then I enter "629368578" for SSN
    Then I select "Male" for Gender
    And I search for <FicilitySearch> Admit Facility
    And I Select the first admit facility
    And I enter "629368578F2" for Medicare ID
    And I click on Submit Button
    Then I should see "Found patient matching your criteria; view the patient page for more information" on next page
    And I click on Cancel Button
    And I wait for 3000 milli seconds

    Examples:
      | email                 | password  | Episode1 | FirstName | LastName | DateofBirth | FicilitySearch    |
      | qa.admin@yopmail.com  | Episode1! | Episodes | TestQA    | PatQA    | 13/06/1989  | stamford Hospital |
  