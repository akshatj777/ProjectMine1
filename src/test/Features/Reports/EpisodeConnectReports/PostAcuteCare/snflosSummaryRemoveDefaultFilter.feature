Feature: Remove the default filters from SNF LOS Summary Report

  Scenario Outline: User should be able to remove default filters from SNF LOS Summary Report and add Anchor Discharge Month Filter
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Initial SNF Length of Stay Summary" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF LOS Summary" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on show all filters icon button
    Then I remove "Anchor Month" field filter under "Anchor Month" filter field from default filters
    Then I remove "Model" field filter under "Model" filter field from default filters
    Then I remove "DataQualityFlag" field filter under "DataQualityFlag" filter field from default filters
    Then I remove "isSNFAdmissionReport" field filter under "isSNFAdmissionReport" filter field from default filters
    When I click on field-panel-icon button
    When I click to "Anchor Discharge Month" field filter under "Anchor Discharge Date" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Discharge Month" in the header text of filter page
    Then I select "PREVIOUS" discharge month in anchor discharge month filter
    And I click on ok button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                          |
      #| Medicare Payer Users          |
      | shutestaug231132a@yopmail.com  |
      #| Multiple Payer Users          |
      #| multipayerachrpfin@yopmail.com |
