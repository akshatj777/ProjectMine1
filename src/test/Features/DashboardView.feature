 Feature: Dashboard view

    Scenario: Search user by FirstName
      Given I am on the login page
      When I log in as super user
      Then I will wait
      When I should see "Administration"
      And I click on the "Administration" tile
      Then I should see "User Management"
      Then I enter search box with "Test"
       //And I should see "Test"
      //Then  I click on reset button
      //And I should see "Leonid"


   Scenario: Search user by Lastname
     Given I am on the login page
     When I log in as super user
     Then I will wait
     When I should see "Administration"
     And I click on the "Administration" tile
     Then I should see "User Management"
     Then I enter search box with "Test"
   //And I should see "Test"
   //Then  I click on reset button
   //And I should see "Leonid"

   Scenario: Search user by NPI 
     Given I am on the login page
     When I log in as super user
     Then I will wait
     When I should see "Administration"
     And I click on the "Administration" tile
     Then I should see "User Management"
     Then I enter search box with "Test"
   //And I should see "Test"
   //Then  I click on reset button
   //And I should see "Leonid"

     Scenario: User filter with facility
       Given I am on the login page
       When I log in as super user
       Then I will wait
       When I should see "Administration"
       And I click on the "Administration" tile
       Then I should see "User Management"
       And I should see "Leonid"
       Then I click on the Select Faclity field
       And I select filter form the dropdown "Anderson"
       And I should see "Manager"
       Then I click on reset button
       And I should see "Leonid"

   Scenario: View user profile from Table view
     Given I am on the login page
     When I log in as super user
     Then I will wait
     When I should see "Administration"
     And I click on the "Administration" tile
     Then I should see "User Management"
     And I click on the table view icon
     And I will wait
     Then I click on view Profile link of the first user
     And I should see "View Profile"
     Then I click cancel button


   Scenario: View Profile details from Card View
     Given I am on the login page
     When I log in as super user
     Then I will wait
     When I should see "Administration"
     And I click on the "Administration" tile
     Then I should see "User Management"
     And I click on the veiw profile of icon for first user
     And I click cancel button



