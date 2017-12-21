package stepDefination.Episode1;

import com.remedy.episode1.PatientCreationRules;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientCreationRulesSteps extends DriverScript {
	PatientCreationRules patientrules=new PatientCreationRules(driver);
	
	@Then("^I click on new button on the patient creation rules page$")
	public void i_click_on_new_button_on_the_patient_cration_rules_page() throws Throwable{
		patientrules.iClickOnNewButtonOnPatientRulesPage();
	}
	
	@And("^I wait untill i see \"([^\"]*)\" on the patient creation rule page$")
	public void i_wait_untill_i_see_on_the_patient_creation_rule_page(String text) throws Throwable{
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
	
	@Then("^I wait to see \"([^\"]*)\" after creating a rule$")
	public void i_wait_to_see_after_creating_a_rule(String text) throws Throwable{
		patientrules.iSeeTheMessageAfterCreatingRule(text);
	}
	
	@And("^I will wait to see \"(.*)\"$")
	public void i_will_wait_to_see(String text) throws Throwable{
		patientrules.iWillWaitToSeeNewlyCreatedRule(text);
	}
}
