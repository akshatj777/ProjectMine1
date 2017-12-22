package stepDefination.Episode1;

import com.remedy.episode1.PatientCreationRules;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PatientCreationRulesSteps extends DriverScript {
	PatientCreationRules patientrules=new PatientCreationRules(driver);
	
	@Then("^I click on new button$")
	public void i_click_on_new_button_on_the_page() throws Throwable{
		patientrules.iClickOnNewButtonOnPatientRulesPage();
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the patient creation rule$")
	public void i_wait_untill_i_see_on_the_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@Then("^I fill in Name with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_enter_in_the_name_field_in_the_new_patient_creation_rule(String text) throws Throwable{
		patientrules.iEnterNameInNewPatientCreationRule(text);
	}
	
	@And("^I fill in Field with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_fill_in_field_with_on_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iFillInFieldWithOnPatientRuleCreationPage(text);
	}
	
	@And("^I fill in Value with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_fill_in_value_with_on_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iFillInValueWithOnPatientRuleCreationPage(text);
	}
	
	@And("^I fill in Priority with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_fill_in_priority_with_on_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iFillInPriorityWithOnPatientRuleCreationPage(text);
	}
	
	@And("^I press \"([^\"]*)\" on the new patient rule creation page$")
	public void i_press_On_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iClickOnSaveButtonOnPatientRuleCreationPage(text);
	}
	
	@And("^I will wait to see \"(.*)\"$")
	public void i_will_wait_to_see(String text) throws Throwable{
		patientrules.iWillWaitToSeeNewlyCreatedRule(text);
	}
	
	@And("I should see \"([^\"]*)\" label on \"([^\"]*)\" page")
	public void i_should_see_label_on_page(String text,String page) throws Throwable{
		patientrules.iVerifyLabelTextOnNewCreationPage(text, page);
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the Facility Free Text Mapping$")
	public void i_wait_untill_i_see_on_the_Facility_Free_Text_mapping(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@When("^I select HL7 Admit facility on New Facility Free Text Mapping page with \"([^\"]*)\"$")
	public void i_select_HL7_Admit_facility_on_New_Facility_Free_Text_Mapping_page_with(String text) throws Throwable{
		patientrules.iSelectAdmiTFacilityOnFreeTextMappingPage(text);
	}
	
	@And("^I select \"([^\"]*)\" from \"([^\"]*)\"$")
	public void i_select_from(String select,String text) throws Throwable{
		patientrules.iSelectFrom(select, text);
	}
	
	@And("^I fill in \"([^\"]*)\" with \"([^\"]*)\"$")
	public void i_fill_in_with(String selector,String text) throws Throwable{
		patientrules.iFillTextWith(selector, text);
	}
	
	@And("I select mapped discharge facility on New Facility Free Text Mapping page with \"([^\"]*)\"")
	public void i_select_mapped_discharge_facility_on_New_Facility_Free_Text_Mapping_page_with(String text) throws Throwable{
		patientrules.iSelectMappedDischargeFacility(text);
	}
	
	@And("^I press \"([^\"]*)\" on the new facility free text mapping page$")
	public void i_press_On_the_new_facility_free_text_mapping_page(String text) throws Throwable{
		patientrules.iClickOnSaveButtonOnPatientRuleCreationPage(text);
	}
}
