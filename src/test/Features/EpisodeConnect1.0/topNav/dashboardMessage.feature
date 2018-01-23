@EC1Smoke
Feature: DashBoard Message Functionality

Scenario: Verify Message functionality
	Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    Then I click on Message Icon on header navigation bar 
    And I click on see all messages under Message on header navigation bar
    And I click on "Compose" under Message tab on Dashboard
    Then I enter "FRN MEDICARETESTING" in To field under Compose message
    And I click on "FRN MEDICARETESTING" to Add recipient in Compose message
    Then I enter message "Automation_Testing" in the compose message field
    And I switch to default window from iframe
#    And I click on Add files button to upload files for message
    And I upload "ECSample.jpeg" file to send message
    And I upload "ECPNG.png" file to send message
    And I click on "Send" button under message tab
    And I will wait to see "Message sent" in "p" tag
    And I click on "Compose" under Message tab on Dashboard
    And I click on "Send" button under message tab
    And I should see "You should enter at least one recipient" text error under Message
    And I should see "This value should not be blank." text error under Message
    And I switch back to old window
    And I click on the top user account link and click on "Log Out" button
    
    Given I am on the login page
    When I enter email field qa.fieldrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
    And I switch to new window
    
    Then I click on Message Icon on header navigation bar 
    And I click on see all messages under Message on header navigation bar
    And I click on first messaage in Inbox
#    And I click on "Reply" button under message tab
    And I click on Reply button for message
    And I should see "Automation_Testing" text under body for message
    And I verify "ECSample.jpeg" file present under attachment
    And I verify "ECPNG.png" file present under attachment
    And I delete "ECPNG.png" file present under attachment 
    And I verify "ECPNG.png" file not present under attachment
    And I click on "Send" button under message tab
    And I will wait to see "Message sent" in "p" tag
#    And I click on gear icon for first message
    And I click on first gear icon 
    And I select Move to archive for message
    And I will wait to see "No messages selected." in "p" tag
    And I will wait for invisibility of "No messages selected." in "p" tag
 	And I click on select all message checkbox 
 	And I click on first gear icon 
    And I select Move to archive for message 
    And I will wait to see "Messages moved." in "p" tag
    