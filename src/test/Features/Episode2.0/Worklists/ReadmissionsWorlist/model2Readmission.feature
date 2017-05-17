
Feature: Model 2 Readmission

  Scenario Outline: User can see ec1 patients page and add a patient
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes

    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"

    Then I should see Alerts present on the top-nav bar present on the episode dashboard page
    Then I should see Messeges present on the top-nav bar present on the episode dashboard page
    Then I should see Notifications present on the top-nav bar present on the episode dashboard page
    Then I should see user profile present on the top-nav bar present on the episode dashboard page

    Then I should see "Dashboard" in the left navigator present on the episode dashboard page
    Then I should see "Bookmarks" in the left navigator present on the episode dashboard page
    Then I should see "Patients" in the left navigator present on the episode dashboard page
    Then I should see "Admin Center" in the left navigator present on the episode dashboard page
    When I click on "Patients" in the left navigator present on the episode dashboard page
    When I click on "Patient List" in the Patients dropdown menu

    When I click on Add Patient button present on the ec1 patients page
    And I wait for 15000 milli seconds
    Then I verify "Add Patient" text is present on the add patient page
    Then I verify "Patient Information" text is present on the add patient page
    Then I enter "<Patient First Name>" in the first name text box present on the Add Patient page
    And I enter  "<Patient Last Name>" in the last name text box present on the Add Patient page
    And I enter date of birth "01/05/1995" present on the Add Patient Page
    And I wait for 4000 milli seconds
    And I selected "Male" from the gender drop down list present on the Add Patient page
    When I click on Admitting Facility present on the Add Patient page
    And I wait for 2000 milli seconds
    And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    And I wait for 4000 milli seconds
    And I enter "WA784654785" in the Medicare ID present on the Add Patient page
    Then I click on the next button present on the Add Patient page
    And I wait for 8000 milli seconds
    Then I click on the next button present on the Add Patient page
    And I wait for 15000 milli seconds
    Then I click on the Cancel Button on the New Transition on Add Patient page 
    And I wait for 8000 milli seconds
    Then I switch back to old window
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I should see "All" tab in the filter bar on patients page
    Then I should see search box appearing on the patients page
    Then I enter "<Patient Last Name>,<Patient First Name>" in the search box on the patients page
    And I wait for 60000 milli seconds
    Then I click on the "<Patient Last Name>" searched patient on the Patient Card Page 
    And I wait for 15000 milli seconds
    

    Examples:

      | email                | password  | Patient First Name  | Patient Last Name |
      | qa.admin@yopmail.com | Episode1! | AutomationC         | CaseD            |


