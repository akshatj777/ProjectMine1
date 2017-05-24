Feature: Readmssion Worklist Acceptamce Criteria

Scenario Outline: User should be able to see patient cards as per acceptance criteria

    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 10000 milli seconds
    Then I verify current page "Remedy Partners" title
    When I click on "Inpatient" tab in the filter bar on patients page
    And I wait for 2000 milli seconds
    Then I click on "Readmissions" worklist under "Inpatient" worklist on episode home page
    And I wait for 5000 milli seconds
    Then I verify days to readmission section is appearing on the patient cards under readmission worklist
    Then I see number of days to inepisode is appearing on the patient cards under readmission worklist
    Then I see readmission count appearing on the patient cards under readmission worklist
    And I verify episode progress knob appearing on patient cards under readmission worklist
    Then I verify "Readmitted" is appearing on patient cards under readmission worklist
    Then I see number of days as inpatient section is appearing on patient cards on readmission worklist
    
    
    Examples:
    
       | email                |
       | qa.admin@yopmail.com |
       
       