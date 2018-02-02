Feature: Dashboard Search for Patient

  Scenario Outline: Search for patient on EC Dashboard My patient
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field <password> for Login
    Then I click Access button
    Then I should see Tile text <Episode1>
    And I click on the "Episodes" tile
    And I switch to new window
    Then I should see Episode header text "Dashboard"

    Examples: 
      | email                         | password | Episode1 |
      | shutestaug231132a@yopmail.com | Testing1 | Episodes |
