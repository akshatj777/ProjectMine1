Feature: Reporting Help Center

  Scenario Outline: Verify help option is not appearing on the product tiles page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    Then I click on avatar symbol to see the menu
    And I should not see "Help Center" is present in the list after clicking on avatar

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |

  Scenario Outline: Verify the help center from the reports tiles page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    Then I click on avatar symbol to see the menu
    And I click on "Help Center" tab after clicking on avatar symbol to redirect to reporting help center page
    And I switch to new window

    Examples: 
      | email                              |
      | shutestaug231132a@yopmail.com      |
      | reptestachmodel2opsfin@yopmail.com |