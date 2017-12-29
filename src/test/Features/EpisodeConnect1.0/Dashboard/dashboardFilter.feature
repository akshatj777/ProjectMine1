@EC1Smoke
Feature: Filters pinned to dashboard
 
 Background: Patient Creation
    Given I am on the login page
    When I enter email field qa.admin@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    And I am on "/secure/dashboard"
    
    Scenario:
    Then I verify "My patients" as selected tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I am on "/secure/pn/patientslist"
    Then I click on "Save As" button
    And I will wait to see "New filter" in "h4" tag
    And I enter "NewFilter1" in filter name on New filter
    
    Then I click on "Create & Continue" button
    And I will wait to see "filter saved" in "p" tag
    
    And I click on "Pin to dashboard" under open filter
    And I click on "NewFilter1" on navigation tab on patient dashboard
    And I verify patients are appearing on patient dashboard
    And I click on select all checkbox on patient dashboard
    And I click on gear Icon on top on patient dashboard
    And I click on "JOIN CARETEAM" present under gear menu on top on patient dashboard
    And I will wait to see "Assigned to care team" in "p" tag
    And I am on "/secure/pn/patientslist"
    And I click on "NewFilter1" filter name under patients menu
    And I click on "Unpin to dashboard" under open filter
    And I click on "Pin to bookmark" under open filter
    
    And I am on "/secure/bookmarks"
    
    And I should see "NewFilter1" filter under bookmark
    Then I click on gear icon under "NewFilter1" bookmark
    And I enter "NewFilter2" in titile field in bookmark
    And I click on "ok" button on edit bookmark
    And I should see "NewFilter2" filter under bookmark
    
    
    
    
    
     
    
    
    
