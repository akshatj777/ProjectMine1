Feature: Dashboard view


    Scenario: Search user on dashboard and reset
      Given I am on the login page
      When I log in with "lbarinstein+qaadmin@remedypartners.com" and "Testing1"
      Then I will wait
      When I will wait to see "Administration"
      And I click on the "Administration" tile
      Then I will wait to see "My Dashboard"
      And I should see "Leonid"
      Then I enter search box with "Test"
       And I should see "Test"
      Then  I click on reset button
      And I should see "Leonid"


     Scenario: User filter with facility
       Given I am on the login page
       When I log in with "lbarinstein+qaadmin@remedypartners.com" and "Testing1"
       Then I will wait
       When I will wait to see "Administration"
       And I click on the "Administration" tile
       Then I will wait to see "My Dashboard"
       And I should see "Leonid"
       Then I click on the Select Faclity field
       And I select filter form the dropdown "Anderson"
       And I should see "Manager, test"
       Then I click on reset button
       And I should see "Leonid"
       
