Feature: Episode 2.0 Patient Card

  Scenario: verify Patient Card Header and Expand button
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    And I wait for 30000 milli seconds
    Then I verify Patient Name is present in the patient card header on patient page
    Then I verify DOB is present on the patient card header on the patient page
    Then I verify Age is present on the patient card header on the patient page
    Then I verify Gender is present on the patient card header on the patient page
    Then I verify SSN is present on the patient card header on the patient page
    Then I verify Expand button is present on the patient card header on the patient page
    
    Then I verify risk status is present on the patient card on the patient page
    Then I verify current location is present on the patient card on the patient page
    Then I verify anchor facility is present on the patient card on the patient page
    Then I verify tags is present on the patient card on the patient page
    Then I verify Quick Actions is present on the patient card on the patient page
    
    When I click on "Inpatient" tab in the filter bar on patients page
    And I wait for 5000 milli seconds
    Then I verify Admit Section is present on the patient card on the inpatient page
    And I wait for 2000 milli seconds
    Then I verify Inpatient Status is present on the patient card on the inpatient page
    #Then I verify Admission Reason is present on the patient card on the inpatient page
    And I wait for 2000 milli seconds
    
    