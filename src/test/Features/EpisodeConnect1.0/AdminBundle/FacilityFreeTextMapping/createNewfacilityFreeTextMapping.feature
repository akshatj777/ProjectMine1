Feature: Discharge Location Mapping Text

  @EC1Smoke
  Scenario: Create new Facility Free Text Mapping with success
    Given I am on the login page
    When I enter email field qa.adminuser@yopmail.com for login
    And I enter password field Episode1! for Login
    Then I click Access button
    Then I should see Tile text Episodes
    And I click on the "Episodes" tile
   
    When I am on "/secure/admin/facilityFreeText"
    And I wait untill "List for Facility Free Text Mapping" text is appearing on the Facility Free Text Mapping
    Then I click on new button
    And I wait untill "New object for Facility Free Text Mapping" text is appearing on the Facility Free Text Mapping
    And I should see "HL7's Admit Facility" label on "New Facility Free Text Mapping" page
    And I should see "HL7's Discharge Care Setting" label on "New Facility Free Text Mapping" page
    And I should see "HL7's Discharge Care Type" label on "New Facility Free Text Mapping" page
    And I should see "HL7's Discharge Facility Free Text" label on "New Facility Free Text Mapping" page
    And I should see "Mapped Discharge Facility (leave empty for unmapped records)" label on "New Facility Free Text Mapping" page
    And I should see "Mapped Discharge Care Type" label on "New Facility Free Text Mapping" page
    When I select HL7 Admit facility on New Facility Free Text Mapping page with "Hackensack University Medical Center"
    And I select "HHH" from "new_bpfacilityfreetext_dischargeCareSetting"
    And I select "Inpatient" from "new_bpfacilityfreetext_dischargeCareType"
    And I fill in "new_bpfacilityfreetext_dischargeFacilityFreeText" with "testDischargeFacilityText"
    When I select mapped discharge facility on New Facility Free Text Mapping page with "Allentown"
    And I select "Inpatient" from "new_bpfacilityfreetext_mappedDischargeCareType"
    And I press "Save" on the new facility free text mapping page
    And I will wait to see "The object was successfully saved" in "p" tag
    And I will wait to see Facility Free Text "Hackensack University Medical Center"
