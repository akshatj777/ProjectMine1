Feature: Login Logout test

 Scenario Outline: Successfully login and logout for a user
  Given I am on the login page
  When I enter email field <email> for login
  And I enter password field <password> for Login
  Then I click Access button
  And I wait for 2000 milli seconds
  Then I should see Tile text Gainsharing Physician Survey present on the product tile page
  Then I should see Tile text Episodes present on the product tile page
  Then I should see Tile text RemedyU present on the product tile page
  Then I should see Tile text Reports present on the product tile page
  Then I should see Tile text User Admin present on the product tile page
  Then I should see Tile text User Admin 2 present on the product tile page
  Then I should see Tile text Config Engine present on the product tile page
  Then I should see Tile text Episodes 2.0 present on the product tile page
  Then I should see Tile text Shared Files present on the product tile page
  Then I should see Tile text Institute present on the product tile page
  Then I should see user profile icon on product tile page
  Then I click on the user profile icon present on the product tile page
  And I click on Logout button present on the user profile drop down
  
 Examples:

      |          email            |   password   |
      |  qa.admin@yopmail.com 		|   Episode1!  |
  
