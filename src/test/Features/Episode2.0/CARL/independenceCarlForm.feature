Feature: To verify the options and functionality of Independence section of Carl form

  Scenario: To verify the Independence section of the Carl Form
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
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 2000 milli seconds
    Then I click on "Independence" section on left navigator
    And I wait for 2000 milli seconds
    And I verify the "Independence" section of the carl form upon clicking on it
    Then I verify that "Independence" section on carl form should be highlighted in left navigator upon clicking
    Then I verify "Cognitive Status" dropdown bar should appear on Independence section
    Then I verify "Activities of Daily Living" dropdown bar should appear on Independence section
    Then I verify "Ambulatory Status" dropdown bar should appear on Independence section
    Then I verify "Does the patient have a history of falls?" question appears on Independence section
    And I wait for 2000 milli seconds
    Then I verify "Yes" option should appear below Does the patient have a history of falls on Independece section
    Then I verify "No" option should appear below Does the patient have a history of falls on Independece section
    Then I verify "Not Sure" option should appear below Does the patient have a history of falls on Independece section
    Then I Verify that Carl form should appear with Save & Go Back link
    Then I Verify that Carl form should appear with Save & Continue link

  Scenario: User should be able select given options present on Independence section of the Carl Form
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
    And I wait for 15000 milli seconds
    Then I click on the complete CARL on the Patient Summary
    And I wait for 5000 milli seconds
    Then I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page
    And I wait for 2000 milli seconds
    Then I click on "Independence" section on left navigator
    And I wait for 2000 milli seconds
    Then I click on "Cognitive Status" dropdown on Independece Section
    Then I verify "Oriented" option present in dropdown for cognitive status on Independece Section
    Then I verify "Forgetful" option present in dropdown for cognitive status on Independece Section
    Then I verify "Disoriented" option present in dropdown for cognitive status on Independece Section
    And I wait for 2000 milli seconds
    Then I select "Forgetful" option in dropdown for cognitive status
    And I wait for 2000 milli seconds
    Then I verify "Forgetful" selected appears in the place holder of "Cognitive Status" dropdown on Independence section
    Then I click on "Activities of Daily Living" dropdown on Independece Section
    Then I verify "No assistance needed" option present in dropdown for cognitive status on Independece Section
    Then I verify "Assistance needed for one or more ADLs" option present in dropdown for cognitive status on Independece Section
    Then I verify "Dependent on caregiver for one or more ADLs" option present in dropdown for cognitive status on Independece Section
    And I wait for 2000 milli seconds
    Then I select "No assistance needed" option in dropdown for cognitive status
    Then I verify "No assistance needed" selected appears in the place holder of "Activities of Daily Living" dropdown on Independence section
    Then I click on "Ambulatory Status" dropdown on Independece Section
    Then I verify "No assistance needed" option present in dropdown for cognitive status on Independece Section
    Then I verify "Assistive device needed " option present in dropdown for cognitive status on Independece Section
    Then I verify "Caregiver needed" option present in dropdown for cognitive status on Independece Section
    And I wait for 2000 milli seconds
    Then I select "Caregiver needed" option in dropdown for cognitive status
    Then I verify "Caregiver needed" selected appears in the place holder of "Ambulatory Status" dropdown on Independence section
    Then I verify "Yes" radio button on Independence section
    Then I verify "No" radio button on Independence section
    Then I verify "Not Sure" radio button on Independence section
    Then I click on "No" radio button on Independence section
    And I wait for 2000 milli seconds
    And I verify "No" radio button is seclected on Independence section
