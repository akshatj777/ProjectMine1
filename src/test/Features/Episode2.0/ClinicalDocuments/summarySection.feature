Feature: Summary Section of the Clinical Documents

  Scenario Outline: The "Summary" section of the Clinical Document table should display the message from a created "Note
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
    And I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    Then I click on Add Files link on Note Section on Patient Card
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload file "Sample.txt" through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I wait for 8000 milli seconds
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    And I wait for 15000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
    Then I verify the presence of Summary Section of the Clinical Document table
    Then I verify body text of the Note is appearing in the summary section
    Then I verify for clinical note and baseline summary should be displayed up to 2 lines
    Then I verify if summary is longer than the character limit then Ellipsis three dots should show
    Then I verify if a note is having attachment and do not have any summary then attachment count should appear in the summary section

    Examples: 
      | Medicare ID | Notetext                                                                                                                                                                    |
      | wa984986    | In above case we have String dateString in format dd-MMM-yyyy, so to convert the String to Date in given format we have Created Object formatter of Class SimpleDateFormat. |
