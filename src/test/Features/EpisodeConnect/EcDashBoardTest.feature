Feature: Dashboard Search for Patient


 Scenario Outline: Search for patient on EC Dashboard My patient

   Given I am on the login page
   When I enter email field <email> for login
   And I enter password field <password> for Login
   Then I click Access button
   Then I should see Tile text <Episode1>
   And I click on the Tile with text <Episode1>
   And I switch to new window
   Then I should see "My patients"

    #When I search for patient name on my patient Dashboard with "<PatientName>"
   # Then I will wait to see "<validDOB>" maximum 30 seconds

   Examples:

     |                 email            |   password    |     Episode1       |
     |  atuorexe3test3@yopmail.com      |    Testing1   |   Episodes         |