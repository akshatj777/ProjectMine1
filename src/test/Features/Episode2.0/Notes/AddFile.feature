Feature: Note - Add files

  Scenario Outline: To verify that user should be able to upload the file
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 25000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the value from the topic drop down on  Add Clinical Document on Patient Card
    And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
    Then I verify that Add Files link is clickable
    And I wait for 10000 milli seconds
    Then I verify that user should be able to select and upload files from the computer through Add files link
    And I wait for 10000 milli seconds
    Then I verify the image is attached or not
    Then I click on the create Note Button on Add Clinical Document on Patient Card

    Examples: 
      | date |
      |   12 |
