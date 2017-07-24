Feature: Clinical Documents - Patient Notes History Section

  Scenario Outline: The Last saved section on the clinical documents table should display the information of the last user who saved the individual form (To verify information Activity column in Clinical Documents table)
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
    Then I click on the patient on the patient card page that has no CARL button in it
    And I wait for 2000 milli seconds
    Then I get the patient last name who have no CARL button in it
    Then I wait for 1000 milli seconds
    Then I close the patient summary Page
    Then I wait for 3000 milli seconds
    Then I search and click on the searched patient which has the CARL text in it
    Then I wait for 1000 milli seconds
    Then I click on the cross button to close the CARL document form
    Then I verify current page "Remedy Partners" title 
    Then I should see search box appearing on the patients page
    Then I wait for 4000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And  I select the "Baseline" from the topic drop down on Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And I enter the Note Text "<Notetext>" in the textarea on Add Clinical Document on Patient Card
    Then I click on Add Files link on Note Section on Patient Card
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload file "Sample.txt" through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I wait for 8000 milli seconds
    Then I click on the searched name on the patient card 
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
    Then I wait for 7000 milli seconds
    Then I verify date and time information appears in last saved section
    Then I verify LastName FirstName and userrole appears in last saved section
    Then I verify that Show History section should not be applicable for note section

  Examples:  
      | First name | Last name  | Medicare ID | date | Notetext                                                                                                                                                                    |
      | DO_NOT_USE | AUTOMATION | wa984986    |   12 | In above case we have String dateString in format dd-MMM-yyyy, so to convert the String to Date in given format we have Created Object formatter of Class SimpleDateFormat. |
