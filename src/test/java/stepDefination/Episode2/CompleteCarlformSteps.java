package stepDefination.Episode2;

import com.remedy.Episode2.CompleteCarlform;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class CompleteCarlformSteps extends DriverScript {

	CompleteCarlform completecarl = new CompleteCarlform(driver);

	@Then("^I verify CARL buttons appears on the patient summary$")
	public void I_verify_CARL_buttons_appears_on_the_patient_summary() {
		completecarl.IverifyCARLbuttonsappearsonthepatientsummary();
	}

	@Then("^I close the patient summary Page$")
	public void I_close_the_patient_summary_Page() {
		completecarl.IclosethepatientsummaryPage();
	}

	@Then("^I verify CARL button is appearing on the patient card or not$")
	public void I_verify_CARL_button_is_appearing_on_the_patient_card_or_not() {
		completecarl.IverifyCARLbuttonisappearingonthepatientcardornot();
	}

	@Then("^I select the button to delete the transition$")
	public void I_select_on_the_button_to_delete_the_transition() {
		completecarl.Iselectonthebuttontodeletethetransition();
	}

	@Then("^I click on the button to delete the transition$")
	public void I_click_on_the_button_to_delete_the_transition() {
		completecarl.Iclickonthebuttontodeletethetransition();
	}

	@Then("^I click on Ok to delete the transition$")
	public void I_click_on_Ok_to_delete_the_transition() {
		completecarl.IclickonOktodeletethetransition();
	}

	@Then("^I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page$")
	public void I_Verify_that_Clicking_on_Complete_CARL_button_Carl_form_should_appear_as_a_takeover_page() {
		completecarl.IVerifythatClickingonCompleteCARLbuttonCarlformshouldappearasatakeoverpage();
	}

	@Then("I Verify that Carl form should appear with White bar with Patient Name \"([^\"]*)\" \"([^\"]*)\" and x icon on the page$")
	public void I_Verify_that_Carl_form_should_appear_with_White_bar_with_Patient_Name_Last_First_name_and_x_icon_on_the_page(String lastname, String firstname) {
		completecarl.IVerifythatCarlformshouldappearwithWhitebarwithPatientNameLastFirstnameandxicononthepage(lastname,firstname);
	}

	@Then("^I Verify that Carl form should appear with Cancel link$")
	public void I_Verify_that_Carl_form_should_appear_with_Cancel_link() {
		completecarl.IVerifythatCarlformshouldappearwithCancellink();
	}

	@Then("^I Verify that Carl form should appear with Save your progress link$")
	public void I_Verify_that_Carl_form_should_appear_with_Save_your_progress_link() {
		completecarl.IVerifythatCarlformshouldappearwithSaveyourprogresslink();
	}

	@Then("^I Verify that Carl form should appear with form link$")
	public void I_Verify_that_Carl_form_should_appear_with_form_link() {
		completecarl.IVerifythatCarlformshouldappearwithformlink();
	}

	@Then("^I Verify that Carl form should appear Left navigator displaying four sections$")
	public void I_Verify_that_Carl_form_should_appear_Left_navigator_displaying_four_sections() {
		completecarl.IVerifythatCarlformshouldappearLeftnavigatordisplayingfoursections();

	}

}
