Feature: Clinical Documents - Last Saved

  Scenario Outline: The Last saved section on the clinical documents table should display the information of the last user who saved the individual form
    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 8000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on quick action button for note creation on Patient Card page
    Then I verify whether topic drop down appears on Add Clinical Document on Patient Card page
    And I select the value from the topic drop down on  Add Clinical Document on Patient Card
    Then I select the "<date>"  from date picker on Add Clinical Document on Patient Card
    And I enter the Note Text in the textarea on Add Clinical Document on Patient Card
    Then I verify that Add Files link is clickable
    And I wait for 8000 milli seconds
    Then I verify that user should be able to select and upload files from the computer through Add files link
    Then I wait for 8000 milli seconds
    Then I click on the create Note Button on Add Clinical Document on Patient Card
    Then I verify that create Note has been successfully created
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
    Then I verify information of the last user who saved the individual form is displaying on the Last saved section

    Examples: 
      | First name | Last name | Medicare ID | date |
      | PATIENT    | CROST     | wa984986    |   12 |

  Scenario Outline: To verify following details should appear under the last saved section:
                     Date the form was saved,Time form was saved, Last Name of user who saved form, First Name of user who saved form, User's credentials

    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0
    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 8000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I wait for 7000 milli seconds
    Then I verify date and time information appears in last saved section
    Then I verify LastName FirstName and userrole appears in last saved section
    Then I verify that upon Selecting Show History should display the information of all users who have saved that form
    Then I click on hide history to disable all the saved form list
    Then I verify upon clicking Show history link a list of users should appear in chronological order from most recent saved to oldest saved
    Then I verify that Show History section should not be applicable for note section
    Then I verify that upon selecting Hide History user should only see the information of the last user who saved the form

    Examples: 
      | First name | Last name | Medicare ID | date |
      | PATIENT    | CROST     | wa984986    |   12 |
