Feature: Accepatance testing for reports

  Scenario Outline: User should be able to verify the business functionalities in <Report> report and make sure there are NON-Null,Non-zero,Non-N/A in the report page
    Given I am on the login page
    When I enter email field <email> for login
    And I enter password field Testing1 for Login
    Then I click Access button
    And I wait to see "Reports" tile
    When I click on the "Reports" tile
    And I wait to see "<Module>" under reports tile text
    When I click on the Reports Tile with text "<Module>"
    Then I click on "<Report>" report under <Module> in reports
    And I wait for the reports embedded iframe to load
    When I switch to reports embedded iframe
    And I will wait to see "<ReportToLoad>" is appearing inside the iframe
    And I wait until refresh button is disappeared
    When I click on field-panel-icon button
    And I wait until refresh button is disappeared
    #Participant
    When I click to "Participant" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Participant" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #Episode Initiator
    When I click to "Episode Initiator" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Episode Initiator" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #Anchor Facility
    When I click to "Anchor Facility" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Anchor Facility" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #CCN
    When I click to "CCN" field filter under "Anchor Facility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "CCN" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #BPID
    When I click to "BPID" field filter under "Episode Initiator" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "BPID" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #Bundle Risk
    When I click to "Bundle Risk" field filter under "Bundle Risk" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Bundle Risk" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #Bundle Code
    When I click on "Bundle Code" field which is listed under "Bundle" filter from available fields
    And I choose "Filter" option from select options of filter field
    And I should see "Bundle Code" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #Patient Risk
    When I click on "Patient Risk" field which is listed under "Patient Details" filter from available fields
    And I choose "Filter" option from select options of filter field
    And I should see "Patient Risk" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #Onboarding Status
    When I click on "Onboarding Status" field which is listed under "Patient Details" filter from available fields
    And I choose "Filter" option from select options of filter field
    And I should see "Onboarding Status" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared
    #Eligibility
    When I click to "Eligibility" field filter under "Eligibility" filter field
    And I choose "Filter" option from select options of filter field
    And I should see "Eligibility" in the header text of filter page
    And I should not see "Null" in the filter value list
    And I should not see "0" in the filter value list
    And I should not see "NA" in the filter value list
    And I click on cancel button from filter
    And I wait until refresh button is disappeared

    Examples: 
      | email                            | Module            | Report                               | Type Of Report | ReportToLoad                         |
      | shutestaug231132a@yopmail.com    | Next Site of Care | CARL                                 | EC Model2      | CARL                                 |
      | shutestaug231132a@yopmail.com    | Next Site of Care | Next Site of Care Summary            | EC Model2      | Next Site Of Care Summary            |
      | shutestaug231132a@yopmail.com    | Patient ID        | Episode DRG Issues                   | EC Model2      | Episode DRG Issues                   |
      | shutestaug231132a@yopmail.com    | Patient ID        | InPatient Episode Clearing           | EC Model2      | InPatient Episode Clearing           |
      | shutestaug231132a@yopmail.com    | Post Acute Care   | Initial SNF Length of Stay Summary   | EC Model2      | SNF LOS Summary                      |
      | shutestaug231132a@yopmail.com    | Readmissions      | Readmissions                         | EC Model2      | Readmissions EC                      |
      | RPFINM3HHASNFVisitQA@yopmail.com | Patient ID        | Episode DRG Issues [Model 3]         | EC Model3      | Episode DRG Issues [Model 3]         |
      | RPFINM3HHASNFVisitQA@yopmail.com | Patient ID        | InPatient Episode Clearing [Model 3] | EC Model3      | InPatient Episode Clearing [Model 3] |
      | RPFINM3HHASNFVisitQA@yopmail.com | Next Site of Care | Next Site of Care Summary [Model 3]  | EC Model3      | Next Site of Care Summary [Model 3]  |
      | RPFINM3HHASNFVisitQA@yopmail.com | Readmissions      | Readmissions [Model 3]               | EC Model3      | Readmissions EC [Model 3]            |
      | shutestaug231132a@yopmail.com    | Overall Program   | Performance (Claims)                 | Claims         | Performance                          |
      | shutestaug231132a@yopmail.com    | Overall Program   | Financial Performance (Claims)       | Claims         | Financial Performance                |
      | shutestaug231132a@yopmail.com    | Overall Program   | Spending (Claims)                    | Claims         | Spending                             |
      | shutestaug231132a@yopmail.com    | Physician         | Performance (Claims)                 | Claims         | Physician Performance                |
      | shutestaug231132a@yopmail.com    | Physician         | Volume (Claims)                      | Claims         | Physician Volume                     |
      | shutestaug231132a@yopmail.com    | Physician         | Spending (Claims                     | Claims         | Physician Spending                   |
      | shutestaug231132a@yopmail.com    | Post Acute Care   | SNF Performance (Claims)             | Claims         | SNF Performance                      |
      | shutestaug231132a@yopmail.com    | Post Acute Care   | SNF Volume (Claims)                  | Claims         | SNF Volume                           |
      | shutestaug231132a@yopmail.com    | Post Acute Care   | Post Acute Care (Claims)             | Claims         | Post Acute Care                      |
      | shutestaug231132a@yopmail.com    | Readmissions      | Readmissions (Claims)                | Claims         | Readmissions Claims                  |
