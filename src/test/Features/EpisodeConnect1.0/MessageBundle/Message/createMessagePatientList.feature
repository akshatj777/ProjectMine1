Feature: Messages on patient list

  Scenario: Send message on patients list with success
   	Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/pn/patientslist"
    Then I click on "custom" filter tab present on the patients page
    And I click on first patient gear menu
    When I click on "Send message" from patients list patient gear menu
    Then I verify "New message" header on popup
    When I fill in "Message Body" xpath "//*[@id='bp_msg_form_message']" with "Test Message "
    And I will wait to see "Message sent" in "p" tag
    
