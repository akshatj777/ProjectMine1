Feature: Clinical Documents - Updated Table
	
Scenario Outline: Verify the buttons and text on Clinical Documents

 Given I am on the login page
    When I enter email field qa.emblemprm@yopmail.com for login
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
    And I wait for 10000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I wait for 5000 milli seconds
    Then I verify there should be filter link on clinical document section  
    Then I verify Clinical Document Table should contain the following sections
    
                #Document
                #Status
                #Summary
                #Activity
   Then I count the number of documents that appear in the clinical Documents      
   Then To verify table should be sorted chronologically by activity date most recent first            
  Examples:
      | First name    | Last name    | Medicare ID |
      |  AUTOMATION      |   DO_NOT_USE      |  wa984986   |
 

 
