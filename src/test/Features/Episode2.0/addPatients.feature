Feature: Episode 2.0 Add Patient

  Scenario: User can see ec2 patients page and navigate to different fil
    Given I am on the login page
    When I enter email field admin.user@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
#
#	Scenario: Verify Add Patient button,Patient Card and Total number of pages on Patient Pages
#    Given I am on the login page
#    When I enter email field admin.user@yopmail.com for login
#    And I enter password field Episode1! for Login
#    Then I click Access button
#    And I wait for 2000 milli seconds
#    Then I should see Tile text Episodes 2.0
#
#    When I click on the "Episodes 2.0" tile
#    And I wait for 4000 milli seconds
#    Then I verify current page "Remedy Partners" title
    Then I verify "20" Patient Cards are present on patients page
    Then I verify Add Patient button is present on patients page

    When I click on Add Patient button present on the patients page
      And I wait for 15000 milli seconds
    And I switch to Add Patient embedded iframe
    Then I Enter "FirstNamexigj" in the first name text box present on the Add Patient page
      And I Enter  "LastNameifh" in the last name text box present on the Add Patient page
      And I Enter date of birth "01/05/2011" present on the Add Patient Page
      And I wait for 4000 milli seconds
      And I selected "Male" from the gender drop down list present on the Add Patient page

      When I click on Admitting Facility present on the Add Patient page
       And I wait for 2000 milli seconds
      And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
      And I wait for 4000 milli seconds
      And I enter "WA789541485" in the Medicare ID present on the Add Patient page
      Then I click on the next button present on the Add Patient page
      And I wait for 4000 milli seconds
#    And I switch to Add Patient embedded iframe
      Then I click on the next button present on the Add Patient page
     And I wait for 10000 milli seconds
      When I click on Calender button present on the Add Patient page
      And I wait for 2000 milli seconds
     And I select today's date as the admission date
      And I wait for 2000 milli seconds
      And I select "Inpatient" from the care type drop down menu present on the Add Patient page
      And I wait for 4000 milli seconds
      When I click on Add Transition button present on the Add Patient page
#      And I click on Agree button present on the Attestation page
#
