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
    Then I click on the ALL Tab on Patient page
    And I wait for 8000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 5000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
    Then I verify the presence of Summary Section of the Clinical Document table
    Then I verify body text of the Note is appearing in the summary section
    Then I verify for clinical note and baseline summary should be displayed up to 2 lines
    Then I verify if summary is longer than the character limit then Ellipsis three dots should show
    Then I verify if a note is having attachment and do not have any summary then attachment count should appear in the summary section
    Then I verify forms should not display any message in the summary section and it should be greyed out blank

    Examples: 
      | First name | Last name | Medicare ID |
      | PATIENT    | CROST     | wa984986    |
