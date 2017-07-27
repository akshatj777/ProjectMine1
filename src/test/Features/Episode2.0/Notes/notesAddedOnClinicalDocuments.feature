Feature: Notes Sorting on Clinical Documents

  Scenario: To verify note should be stored in the clinical document section once it is created and also verify the notifications on activity tab on Clinical Documents
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 8000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the Impatient tab on the patient Card Page
    And I wait for 8000 milli seconds
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
    And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
    Then I click on Add Files link on Note Section on Patient Card
    And I wait for 5000 milli seconds
    Then I verify that user should be able to select and upload file "Sample.csv" through Add files link
    Then I verify the image is attached or not
    Then I wait for 3000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I wait for 3000 milli seconds
    Then I verify that create Note has been successfully created
    Then I wait for 10000 milli seconds
    Then I click on the patient card to navigate to the patient summary page
    And I wait for 15000 milli seconds
    Then I click on the subbar clinical documents tab in Patient summary Page
    Then I click on the created note in the clinical Documents section on patient summary
    Then I verify note should be stored in the clinical document section once it is created
    Then I click on the cross button Note Read only form to navigate to patient card
    Then I click on the patient card to navigate to the patient summary page
    And I wait for 15000 milli seconds
    Then I click on the Activity tab on the Patient Summary Page
    Then I wait for 8000 milli seconds
    Then I switch to the Activity frame on the Patient Summary Page
    Then I click on the Notification button on the Activity frame on Patient Summary Page
    Then I Verify that the notification logs activity date on the Notification on Activity tab on Patient Summary
    Then I Verify that the notification logs activity name  on the Notification on Activity tab on Patient Summary
    Then I Verify that the notification logs user name  on the Notification on Activity tab on Patient Summary

  Scenario: To verify to submit the Note Topic is the mandatory field to fill
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 8000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 20000 milli seconds
    Then I get the name of the first patient from the patient list on patient card page
    Then I click on the agree button on the Patient Card page
    Then I wait for 10000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    And I verify to submit the Note Topic is the mandatory field to fill
