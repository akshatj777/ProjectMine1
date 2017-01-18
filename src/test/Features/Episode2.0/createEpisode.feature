Feature: Episode 2.0 Create Episode

  Scenario: User can see ec2 patients page and navigate to different fil
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    
    When I click on the Expand button on the patient card on the patient page
    Then I click on the gear icon present on the patient overview page.
    Then I verify Edit button is present on the patient overview page
    And I verify Delete button is present on the patient overview page
		And I verify Assign button is present on the patient overview page
    And I verify Attach Note button is present on the patient overview page
    And I verify Start CARL Tool button is present on the patient overview page
    
    When I click on Edit option present under gear icon present on the transition table
    Then I verify Transition Info is present under Transition Tab present on the patient overview page
    Then I verify Diagnosis and DRG is present under Transition Tab present on the patient overview page
    Then I verify Treatment Info is present under Transition Tab present on the patient overview page
    Then I verify Comment is present under Transition Tab present on the patient overview page
    Then I verify TCRN Checklist is present under Transition Tab present on the patient overview page
    
    And I wait for 4000 milli seconds
    When I click on Diagnosis and DRG tab present on the patient overview page
    Then I verify ICD is present in the Diagnosis and DRG tab
    And I verify Predict DRG is present in the Diagnosis and DRG tab
    And I verify Add a New DRG is present in the Diagnosis and DRG tab 
    
    When I click on DRG Type to Add a New DRG present on the patient overview page
    Then I select Possible from the DRG type dropdown present on the patient overview page
    Then I Click on DRG dropdown menu present on the patient overview page
    And I wait for 4000 milli seconds
    Then I Search DRG 177 on the search box on the DRG present on the patient overview page
    And I wait for 4000 milli seconds
    Then I select RESPIRATORY INFECTIONS & INFLAMATIONS from the DRG list present on the patient overview page
    And I wait for 4000 milli seconds
    Then I click on Update Transition button present on the patient overview page 
    
    
    
    
    
    
    
    