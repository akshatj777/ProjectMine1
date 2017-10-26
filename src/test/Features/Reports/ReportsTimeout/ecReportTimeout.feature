Feature: Verificaion of Timout scenarios under EC Reports

  #Episode DRG Issues Report
  Scenario: User should not get logged out automatically in less than 15 mins in episode drg issues report under patient id
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
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
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Episode DRG Issues" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in episode drg issues report under patient id
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
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
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Episode DRG Issues" is still appearing on the reports page

  #Inpatient Episode Clearing
  Scenario: User should not get logged out automatically in less than 15 mins in inpatient episode clearing report under patient id
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Inpatient Episode Clearing" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "InPatient Episode Clearing" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in inpatient episode clearing report under patient id
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Patient ID" under reports tile text
    When I click on the Reports Tile with text "Patient ID"
    Then I click on "Inpatient Episode Clearing" report text for Patient ID Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "InPatient Episode Clearing" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "InPatient Episode Clearing" is still appearing on the reports page

  #SNF LOS Summary report
  Scenario: User should not get logged out automatically in less than 15 mins in Initial snf length of stay summary report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
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
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "SNF LOS Summary" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in Initial snf length of stay summary report under post acute care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
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
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "SNF LOS Summary" is still appearing on the reports page

  #CARL Report
  Scenario: User should not get logged out automatically in less than 15 mins in carl report under next site of care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "CARL" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in carl report under next site of care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "CARL" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "CARL" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "CARL" is still appearing on the reports page

  #Next Site of care
  Scenario: User should not get logged out automatically in less than 15 mins in next site of cae summary report under next site of care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Next Site of Care Summary" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in next site of cae summary report under next site of care
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Next Site of Care" under reports tile text
    When I click on the Reports Tile with text "Next Site of Care"
    Then I click on "Next Site of Care Summary" report text for NSoC Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Next Site of Care Summary" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Next Site of Care Summary" is still appearing on the reports page

  #Readmissions report
  Scenario: User should not get logged out automatically in less than 15 mins in readmissions report under readmissions
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Readmissions EC" is still appearing on the reports page

  Scenario: User should recalculate for more 15 mins when user do some operation in less than 15 mins in readmissions report under readmissions
    Given I am on the login page
    When I enter email field shutestaug231132a@yopmail.com for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "Readmissions" under reports tile text
    When I click on the Reports Tile with text "Readmissions"
    Then I click on "Readmissions" report text for Readmissions Reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "Readmissions EC" is appearing inside the iframe
    #Waiting for 2 Minutes here
    Then I wait for 20000 milli seconds
    When I click on show all filters icon button
    #Waiting for 14.55 Minutes here
    Then I wait for 873000 milli seconds
    And I verify "Readmissions EC" is still appearing on the reports page
