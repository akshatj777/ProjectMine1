package stepDefination.Episode2;

import com.remedy.Episode2.CompleteCarlform;

import com.remedy.Episode2.PatientClinicalDocuments;

import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class CompleteCarlformSteps extends DriverScript{

	CompleteCarlform completecarl=new CompleteCarlform(driver);
	
	@Then ("^I verify CARL buttons appears on the patient summary$")
	public void I_verify_CARL_buttons_appears_on_the_patient_summary()
	{
		completecarl.IverifyCARLbuttonsappearsonthepatientsummary();
	//button[contains(text(),'Complete CARL')]
	}
	@Then ("^I close the patient summary Page$")
	public void I_close_the_patient_summary_Page()
	{
		completecarl.IclosethepatientsummaryPage();
	}
	
	@Then ("^I verify CARL button is appearing on the patient card or not$")
	public void I_verify_CARL_button_is_appearing_on_the_patient_card_or_not()
	{
		completecarl.IverifyCARLbuttonisappearingonthepatientcardornot();
	}
	
	@Then ("^I verify the blank status on CARL Document on the Clinical Documents tab in the patient summary Page$")
	public void I_verify_the_blank_status_on_CARL_Document_on_the_Clinical_Documents_tab_in_the_patient_summary_Page()
	{
		completecarl.IverifytheblankstatusonCARLDocumentontheClinicalDocumentstabinthepatientsummaryPage();
	}
	

	@Then ("^I select the button to delete the transition$")
	public void I_select_on_the_button_to_delete_the_transition()
	{
		completecarl.Iselectonthebuttontodeletethetransition();
	}
	
	
	 @Then ("^I click on the button to delete the transition$")
	public void  I_click_on_the_button_to_delete_the_transition()
	{
		 completecarl.Iclickonthebuttontodeletethetransition();
	}
	 
	 @Then ("^I click on Ok to delete the transition$")
	 public void  I_click_on_Ok_to_delete_the_transition()
	 {
		 completecarl.IclickonOktodeletethetransition();
	 }
	 
	 
			 
	 
	
}
