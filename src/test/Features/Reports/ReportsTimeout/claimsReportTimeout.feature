Feature: Verificaion of Timout scenarios under Claims Reports

  #Performance Claims under Overall Prog
  Scenario: User should not get logged out automatically in less than 15 mins in performance claims report under overall program
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Performance" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in performance claims report under overall program
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Performance" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Performance" is still appearing on the reports page

  #Financial Performance Claims under Overall Program
  Scenario: User should not get logged out automatically in less than 15 mins in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Financial Performance" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in financial performance claims report under overall program
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    Then I click on "Financial Performance (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Financial Performance" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Financial Performance" is still appearing on the reports page

  #Spending claims report under overall program
  Scenario: User should not get logged out automatically in less than 15 mins in spending claims report under overall program
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    When I click on the Reports Tile with text "Overall Program"
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Spending" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in spending claims report under overall program
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Overall Program" under reports tile text
    Then I click on "Spending (Claims)" report text for Overall Program Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Spending" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Spending" is still appearing on the reports page
    
#SNF Performance report under post acute care
  Scenario: User should not get logged out automatically in less than 15 mins in SNF Performance report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Performance (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "SNF Performance" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in SNF Performance report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Performance (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Performance" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "SNF Performance" is still appearing on the reports page

#SNF Volume claims report under post acute care
Scenario: User should not get logged out automatically in less than 15 mins in SNF volume report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "SNF Volume" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in SNF volume report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "SNF Volume (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "SNF Volume" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "SNF Volume" is still appearing on the reports page
    
#Post acute care claims report under post acute care
Scenario: User should not get logged out automatically in less than 15 mins in Post acute care claims report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Post Acute Care (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Post Acute Care" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in Post acute care claims report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Post Acute Care" under reports tile text
    When I click on the Reports Tile with text "Post Acute Care"
    Then I click on "Post Acute Care (Claims)" report text for Post Acute Care Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Post Acute Care" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Post Acute Care" is still appearing on the reports page
    
#Performance claims report under physician
Scenario: User should not get logged out automatically in less than 15 mins in Performance claims report under physician
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Physician Performance" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in Performance claims report under physician
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Performance (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Performance" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Physician Performance" is still appearing on the reports page
    
#Volume claims report under physician
Scenario: User should not get logged out automatically in less than 15 mins in Volume claims report under physician
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Volume (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Volume" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Physician Volume" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in Volume claims report under physician
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Volume (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Volume" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Physician Volume" is still appearing on the reports page
    
#Spending claims report under physician
Scenario: User should not get logged out automatically in less than 15 mins in spending claims report under physician
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Spending (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Physician Spending" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in spending claims report under physician
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Physician" under reports tile text
    When I click on the Reports Tile with text "Physician"
    Then I click on "Spending (Claims)" report text for Physician Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Physician Spending" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Physician Spending" is still appearing on the reports page
    
#Readmissions claims report under readmissions
Scenario: User should not get logged out automatically in less than 15 mins in Readmissions claims report under readmissions
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Readmissions Claims" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in Readmissions claims report under readmissions
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions (Claims)" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions Claims" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Readmissions Claims" is still appearing on the reports page