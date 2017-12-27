@EC1Smoke
Feature: User can add appointment

  Scenario Outline: Verify that user is able create an appointment from Patient List page
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    And I click on first patient gear menu
    When I click on "Add Appointment" from patients list patient gear menu
    Then I verify "New Appointment" header on popup
    Then I select "<Appointment_type>" Appointment tye
    Then I fill "Name Test" in "Contact" on Appointment form
    Then I fill "Test" in "Facility" on Appointment form
    Then I fill "9748563210" in "Contact phone" on Appointment form
    And I click on "Schedule Appointment" button
    Then I will wait to see "New appointment created."

    Examples: 
      | Appointment_type |
      | Office Visit     |
      | Phone Call       |
      | Lab Test         |
