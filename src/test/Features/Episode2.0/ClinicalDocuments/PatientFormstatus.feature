Feature:  Patient form status on the status section on clinical Documents
	
 #Scenario Outline: Check Patient form status on the status section on clinical Documents
    #Given I am on the login page
    #When I enter email field qa.emblemrn@yopmail.com for login
    #And I enter password field Episode1! for Login
    #Then I click Access button
    #And I wait for 2000 milli seconds
    #Then I should see Tile text Episodes 2.0
#
    #When I click on the "Episodes 2.0" tile
    #And I wait for 4000 milli seconds
    #Then I verify current page "Remedy Partners" title
    #Then I click on the Impatient Tab on Patient page
    #Then I should see search box appearing on the patients page
    #Then I enter "<Last name> <First name>" in the search box on the patients page
    #And I wait for 10000 milli seconds
    #Then I verify the searched patient has the CARL complete text or not
    #Then I click on the "<Last name>" searched patient which has the CARL text in it
    #And I wait for 10000 milli seconds
    #Then I click on the Clinical Documents tab in the patient summary Page
    #Then I verify the CARL Document on the Clinical Documents tab in the patient summary Page
    #Then I verify that if user has saved a form but not submitted, status should be read as In Progress 
    #Then I verify that Inprogress status should be in purple color with Color code AD77B3
    #Then I click on the complete CARL on the Patient Summary  
    #And I wait for 10000 milli seconds
    #Then I save and continue the complete CARL form
    #And I wait for 10000 milli seconds
    #Then I click on the Clinical Documents tab in the patient summary Page
    #Then I verify the CARL Document on the Clinical Documents tab in the patient summary Page
    #Then I verify that if user submits a patient form status should be read as Active
    #Then I verify that Active status should be in green color with Color code 4EB96F
    #And I wait for 5000 milli seconds
   # Then I click on the Transition Button to add the new episode 
    #Then I click on the Clinical Documents tab in the patient summary Page
    #Then I verify that if patient has has a formed assigned that is the same as an existing form the status of the already existing form should be read as Archived
    #Then I verify that Archived status should be in Grey color with Color code 959595
    #
    
    #Then I verify Add Patient button is present on patients page

    #When I click on Add Patient button present on the patients page
    #And I wait for 15000 milli seconds
    #Then I verify "Add Patient" text is present on the add patient page
    #And I switch to Add Patient embedded iframe
    #Then I verify "Patient Information" text is present on the add patient page
    #Then I enter "<First name>" in the first name text box present on the Add Patient page
    #And I enter  "<Last name>" in the last name text box present on the Add Patient page
    #And I enter date of birth "01/05/2011" present on the Add Patient Page
    #And I wait for 4000 milli seconds
    #And I selected "Male" from the gender drop down list present on the Add Patient page
#
    #When I click on Admitting Facility present on the Add Patient page
    #And I wait for 2000 milli seconds
    #And I Select "Stamford Hospital" from the list of admitting facility present on the Add Patient page
    #And I wait for 4000 milli seconds
    #And I enter "<Medicare ID>" in the Medicare ID present on the Add Patient page
    #Then I click on the next button present on the Add Patient page
    #And I wait for 8000 milli seconds
#
    #Then I verify "Primary Care Physician Information" text is present on the add patient page
    #Then I click on the next button present on the Add Patient page
    #And I wait for 15000 milli seconds
#
    #When I click on Calender button present on the Add Patient page
    #And I wait for 2000 milli seconds
    #And I select today's date as the admission date
    #And I wait for 2000 milli seconds
    #And I select "Inpatient" from admission care type drop down menu present on Add Patient page
    #And I wait for 4000 milli seconds
    #When I click on Add Transition button present on the Add Patient page
    #And I wait for 10000 milli seconds
#		And I click on Agree button present on the Attestation page
#		Then I verify "(HHH) Stamford - Stamford Hospital"  is present "facility-column" on the transition page
#		And I verify Admit Date is present on the transition page
#		Then I verify "Inpatient"  is present " type-column" on the transition page
    
    
 
    #Examples:
      #| First name    | Last name    | Medicare ID |
      #| FILTER | NEWEMBLEM  | wa984986    |

Scenario Outline:The "Document" section of the "Clinical Documents" table should house the individual forms and notes assigned to patients

    Given I am on the login page
    When I enter email field qa.emblemrn@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    And I wait for 2000 milli seconds
    Then I should see Tile text Episodes 2.0

    When I click on the "Episodes 2.0" tile
    And I wait for 4000 milli seconds
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Transitions tab on the Patient Summary Page
    And I wait for 5000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the DRG on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the date from the datepicker on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care setting value on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care type value on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the facility value on add a new transition
    Then I wait for 12000 milli seconds
    And I wait for 8000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 25000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I verify the CARL Document on the Clinical Documents tab in the patient summary Page
    Then I click on the complete CARL on the Patient Summary
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 10000 milli seconds
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I click on the cross button to close the CARL document form 
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 25000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 25000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
     Then I verify that if user has saved a form but not submitted, status should be read as In Progress 
    Then I verify that Inprogress status should be in purple color with Color code AD77B3  
     Then I click on the complete CARL on the Patient Summary
    Then I click on the Clinical Documents tab in the patient summary Page
    And I wait for 10000 milli seconds
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form
    Then I save and continue the complete CARL form  
    Then I click on the Submit button to submit the CARL form  
     Then I click on the cross button to close the CARL document form 
    Then I verify current page "Remedy Partners" title
    Then I click on the ALL Tab on Patient page
    And I wait for 10000 milli seconds
    Then I should see search box appearing on the patients page
    Then I enter "<Last name> <First name>" in the search box on the patients page
    And I wait for 20000 milli seconds
    Then I click on the "<Last name>" searched patient which has the CARL text in it
    And I wait for 20000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
     Then I verify that if user submits a patient form status should be read as Active
    Then I verify that Active status should be in green color with Color code 4EB96F
    Then I click on the Transitions tab on the Patient Summary Page
    And I wait for 5000 milli seconds
    Then I switch to PatientTransitions frame
    Then I click on add a new transition to add a new episode
    Then I wait for 7000 milli seconds
    Then I click on the Diagnosis and DRG tab on add a new transition to select the DRG
    Then I wait for 5000 milli seconds
    Then I select the DRG type on the Diagnosis and DRG tab on add a new transition
    Then I select the DRG on the Diagnosis and DRG tab on add a new transition
    Then I wait for 5000 milli seconds
    Then I click on the Transition Info on add a new transition
    Then I click on datepicker button to select the admit date on add a new transition
    Then I click on the date from the datepicker on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care setting value on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the care type value on add a new transition
    Then I wait for 5000 milli seconds
    Then I select the facility value on add a new transition
    Then I wait for 12000 milli seconds
    Then I click on the Create Transition Button to add a new transition
    And I wait for 10000 milli seconds
    Then I click on the Clinical Documents tab in the patient summary Page
    Then I verify that if patient has has a formed assigned that is the same as an existing form the status of the already existing form should be read as Archived
    Then I verify that Archived status should be in Grey color with Color code 959595
    
    
    
  Examples:

     | First name    | Last name    | Medicare ID |
      |  MOR  | TEST  | wa984986    |
  
   
  