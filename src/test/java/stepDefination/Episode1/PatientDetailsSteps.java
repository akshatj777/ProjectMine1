package stepDefination.Episode1;

import org.openqa.selenium.By;

import com.remedy.episode1.PatientDetails;
import com.remedy.resources.DriverScript;
//import com.thoughtworks.selenium.webdriven.commands.IsElementPresent;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientDetailsSteps extends DriverScript {
	PatientDetails details = new PatientDetails(driver);

	@Then("^I click on patient details button$")
	public void i_click_on_patient_details_button() throws Throwable {
		details.iClickOnPatientDetailsButton();
	}

	@Then("^I see \"([^\"]*)\" under patient details$")
	public void i_see_under_patient_details(String text) throws Throwable {
		details.iSeeUnderPatientDetails(text);
	}

	@Then("^I see \"([^\"]*)\" under general$")
	public void i_see_under_general(String text) throws Throwable {
		details.iSeeUnderGeneral(text);
	}

	@Then("^I click on firstname$")
	public void i_click_on_firstname() throws Throwable {
		details.iClickOnFirstname();
	}

	@Then("^I update with \"([^\"]*)\" for first name under patient details$")
	public void i_update_with_under_first_name(String text) throws Throwable {
		details.iUpdateWithfirstname(text);
	}

	@Then("^I update with \"([^\"]*)\" for last name under patient details$")
	public void i_update_with_under_last_name(String text) throws Throwable {
		details.iUpdateWithlastname(text);
	}

	@Then("^I update with \"([^\"]*)\" for physicianname under patient details$")
	public void i_update_with_under_physicianname(String text) throws Throwable {
		details.iUpdateWithphysicianname(text);
	}

	@Then("^I update with \"([^\"]*)\" under phonenumber$")
	public void i_update_with_under_phonenumber(String text) throws Throwable {
		details.iUpdateWithNumber(text);
	}

	@Then("^I update with \"([^\"]*)\" under street$")
	public void i_update_with_under_street(String text) throws Throwable {
		details.iUpdateWith(text);
	}

	@Then("^I update with \"([^\"]*)\" under city$")
	public void i_update_with_under_city(String text) throws Throwable {
		details.iUpdateWith(text);
	}

	@Then("^I update with \"([^\"]*)\" under zip$")
	public void i_update_with_under_zip(String text) throws Throwable {
		details.iUpdateWith(text);
	}

	@Then("^I click on submit button$")
	public void i_click_on_submit_button() throws Throwable {
		details.iClickOnSubmitButton();
	}

	@Then("^I click on lastname$")
	public void i_click_on_lastname() throws Throwable {
		details.iClickOnLastname();
	}

	@Then("^I click on physician name$")
	public void i_click_on_physician_name() throws Throwable {
		details.iClickOnPhysicianName();
	}

	@Then("^I click on Add new under phones$")
	public void i_click_on_add_new_under_phones() throws Throwable {
		details.iClickOnAddNewUnderPhones();
	}

	@Then("^I click on empty phone field$")
	public void i_click_on_empty_phone_field() throws Throwable {
		details.iClickOnEmptyPhoneField();
	}

	@Then("^I click on Add new under Addresses$")
	public void i_click_on_add_new_under_addresses() throws Throwable {
		details.iClickOnAddNewUnderAddresses();
	}

	@Then("^I click on \"([^\"]*)\" under address$")
	public void i_click_on_under_address(String text) throws Throwable {
		details.iClickOnUnderAddress(text);
	}

	@Then("^I Select \"([^\"]*)\" of the address$")
	public void i_select_the_address_type(String text) throws Throwable {
		details.iSelectTheType(text);
	}

	@Then("^I select \"([^\"]*)\" under address$")
	public void i_select_the_state_under_address(String text) throws Throwable {
		details.iSelectTheType(text);
	}

	@Then("^I click on \"([^\"]*)\" to add street$")
	public void i_click_on_to_add_street(String text) throws Throwable {
		details.iClickOn(text);
	}

	@Then("^I click on \"([^\"]*)\" to add city$")
	public void i_click_on_to_add_city(String text) throws Throwable {
		details.iClickOn(text);
	}

	@Then("^I click on \"([^\"]*)\" to add zip$")
	public void i_click_on_to_add_zip(String text) throws Throwable {
		details.iClickOn(text);
	}
	@Then("^I remove the \"([^\"]*)\" phone numbers under patient details$")
	public void i_remove_the_phone_numbers_under_patient_details(String number) throws Throwable {
		details.iRemoveThePhoneNumbers(number);
	}
	@And("^I verify Add new button is not visible after adding 10 numbers$")
	public void i_verify_Add_new_button_is_not_visible_after_adding_10_numbers(){
		details.isElementPresentOnPage(By.cssSelector("#BP_patientType_phones .add_to_collection"));
	}
}
