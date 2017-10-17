Feature: Verification of database test cases under reports

  Scenario Outline: User should be able to verify ccn appearing in ui and database are same in episode drg issue report under patient id
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Episode DRG Issues" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Episode DRG Issues" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should see "<ccn1>" in the filter value list
    And I should see "<ccn2>" in the filter value list
    Then User executes query
      """
      SELECT ccn FROM sharedReference.participantBpidCCN
      where bpid in ('2070-021','2070-022')
      order by ccn ASC;
      """
      Then User verifies the data from database
      |CCN1|"<ccn1>"|
      |CCN2|"<ccn2>"|
      

    Examples: 
      | email                         | ccn1   | ccn2   |
      | shutestaug231132a@yopmail.com | 390223 | 390226 |
      
