package stepDefination.Episode1;

import com.remedy.episode1.PatientDetails;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class PatientDetailsSteps extends DriverScript
{
	PatientDetails details=new PatientDetails(driver);
	@Then("^I click on patient details button$")
	public void i_click_on_patient_details_button() throws Throwable
	{
		details.iClickOnPatientDetailsButton();
	}
	@Then("^I see \"([^\"]*)\" under patient details$")
	public void i_see_under_patient_details(String text) throws Throwable
	{
		details.iSeeUnderPatientDetails(text);
	}
	@Then("^I see \"([^\"]*)\" under general$")
	public void i_see_under_general(String text) throws Throwable
	{
		details.iSeeUnderGeneral(text);
	}
	@Then("^I click on firstname$")
	public void i_click_on_firstname() throws Throwable
	{
		details.iClickOnFirstname();
	}
	@Then("^I update with \"([^\"]*)\"$")
	public void i_update_with(String text) throws Throwable
	{
		details.iUpdateWith(text);
	}
	@Then("^I click on submit button$")
	public void i_click_on_submit_button() throws Throwable
	{
		details.iClickOnSubmitButton();
	}
	@Then("^I click on lastname$")
	public void i_click_on_lastname() throws Throwable
	{
		details.iClickOnLastname();
	}
	@Then("^I click on physician name$")
	public void i_click_on_physician_name() throws Throwable
	{
		details.iClickOnPhysicianName();
	}
	@Then("^I click on Add new under phones$")
	public void i_click_on_add_new_under_phones() throws Throwable
	{
		details.iClickOnAddNewUnderPhones();
	}
	@Then("^I click on empty phone field$")
	public void i_click_on_empty_phone_field() throws Throwable
	{
		details.iClickOnEmptyPhoneField();
	}
	@Then("^I click on Add new under Addresses$")
	public void i_click_on_add_new_under_addresses() throws Throwable
	{
		details.iClickOnAddNewUnderAddresses();
	}
	@Then("^I click on \"([^\"]*)\" under address$")
	public void i_click_on_under_address(String text) throws Throwable
	{
		details.iClickOnUnderAddress(text);
	}
	@Then("^I select the type$")
	public void i_select_the_type() throws Throwable
	{
		details.iSelectTheType();
	}
	@Then("^I click on \"([^\"]*)\"$")
	public void i_click_on(String text) throws Throwable
	{
		details.iClickOn(text);
	}
}
