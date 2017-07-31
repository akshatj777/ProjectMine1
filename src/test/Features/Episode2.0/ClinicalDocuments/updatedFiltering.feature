
Feature: Updated Filtering
	
	Scenario Outline:The "Document" section of the "Clinical Documents" table should house the individual forms and notes assigned to patients

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
    And I wait for 20000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 5000 milli seconds
    Then I verify there should be filter link on clinical document section
    Then I click on filter link on clinical document section
    And I wait for 5000 milli seconds
    Then I Verify that Selecting Filters link when the filters drawer is open should close the drawer
    Then I click on filter link on clinical document section
    Then I Verify that Clinical Documents Filters link should display filters as below with the correct syntax and sequence
    Then I Verify that user should be able to select multiple filters by checkbox
   
   Examples:
 | First name    | Last name    | Medicare ID |
      | PATIENT  | CROST  | wa984986    |
       
    Scenario Outline: Verify the changes with multiple filter selected at the same time

    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
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
    And I wait for 5000 milli seconds
    Then I verify there should be filter link on clinical document section
    Then I click on filter link on clinical document section
    And I wait for 5000 milli seconds
    Then I Verify that checking multiple filter options should return relevant patients in return 
    And I wait for 5000 milli seconds 
    Then I Verify that clicking on Done should close the filter drawer and process the filter
    
   
    
Examples:
 | First name    | Last name    | Medicare ID |
      | PATIENT  | CROST  | wa984986    |

        
      
        