Feature: Notes - Selecting a topic

  Scenario: Verify that Note>Topic dropdown bar should display the required value
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    Then I Verify that user should not allow to create note without selecting Topic field
    And I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
    Then I verify Topicdropdownbar has the placeholder Select a topic or not
    And I verify the drop down values on  Add Clinical Document on Patient Card
