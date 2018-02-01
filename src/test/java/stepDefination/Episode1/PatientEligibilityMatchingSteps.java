package stepDefination.Episode1;

import com.remedy.episode1.PatientEligibilityMatching;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientEligibilityMatchingSteps extends DriverScript {
	
	PatientEligibilityMatching patienteligibility = new PatientEligibilityMatching(driver);

	@Then("^I should see \"([^\"]*)\" on next page$")
	public void i_should_see_on_next_page(String text) throws Throwable {
		patienteligibility.iShouldSeeOnNextPage(text);
	}

	@And("^I click on Cancel Button$")
	public void i_click_on_cancel_button() throws Throwable {
		patienteligibility.iClickOnCancelButton();
	}

	@Then("^I enter \"([^\"]*)\" for SSN$")
	public void i_enter_for_SSN(String ssn) throws Throwable {
		patienteligibility.iEnterForSSN(ssn);
	}

	@Then("^I click \"([^\"]*)\" filter tab present on the patients page$")
	public void i_click_on_filters_tab_present_on_the_patients_page(String filtertab) throws Throwable {
		patienteligibility.iClickOnFiltersTabPresentOnThePatientsPage(filtertab);
	}

	@Then("^I should see \"([^\"]*)\" under eligibility dropdown$")
	public void i_should_see_under_eligiblity_dropdown(String eligibility) throws Throwable {
		patienteligibility.iShouldSeeUnderEligiblityDropdown(eligibility);
	}

	@Then("^I click on eligibility dropdown$")
	public void i_click_on_eligibility_dropdown() throws Throwable {
		patienteligibility.iClickOnEligibilityDropdown();
	}

	@Then("^I click on \"([^\"]*)\" status$")
	public void i_click_on_status(String text) throws Throwable {
		patienteligibility.iClickOnStatus(text);
	}

	@And("^I search for \"([^\"]*)\" in episodes dropdown$")
	public void i_search_for_in_episodes_dropdown(String text) throws Throwable {
		patienteligibility.iSearchForInEpisodesDropdown(text);
	}

	@Then("^I verify \"([^\"]*)\" is present in episode dropdown$")
	public void i_verify_is_present_in_episode_dropdown(String text) throws Throwable {
		patienteligibility.iVerifyIsPresentInEpisodeDropdown(text);
	}

	@Then("^I click on not eligible in the episodes dropdown$")
	public void i_click_on_in_the_episodes_dropdown() {
		patienteligibility.iClickOnAllEpisodesInDropdown();
	}

	@Then("^I click on cancel$")
	public void i_click_on_cancel() throws Throwable {
		patienteligibility.iClickOnCancel();
	}

	@And("^I search for date in episodes dropdown$")
	public void i_search_for_date_in_episodes_dropdown() throws Throwable {
		patienteligibility.iSearchForDateInEpisodesDropdown();
	}

	@Then("^I verify date present in episode dropdown$")
	public void i_verify_date_present_in_episode_dropdown() throws Throwable {
		patienteligibility.iVerifyDatePresentInEpisodeDropdown();
	}

	@Then("^I click on Agree under Attestation page$")
	public void i_click_on_agree_under_attestation_page() throws Throwable {
		patienteligibility.iClickOnAgreeUnderAttestationPage();
	}

	@Then("^I verify not eligible patient is present in cancelled section$")
	public void i_verify_for_patient_in_cancelled() throws Throwable {
		patienteligibility.iVerifyForPatientInCancelled();
	}

	@And("^I Select the first admit facility$")
	public void i_select_the_first_admit_facility() throws Throwable {
		patienteligibility.iSelectTheFirstAdmitFacility();
	}

	@And("^I click agree under attestation page$")
	public void i_click_agree_under_attestation_page() throws Throwable {
		patienteligibility.iClickAgreeUnderAttestationPage();
	}
}
