package stepDefination.Episode2;


import com.remedy.Episode2.PatientClinicalDocuments;


import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class PatientFormStatusSteps extends DriverScript {

	PatientClinicalDocuments patientclinical=new PatientClinicalDocuments(driver);
	
	
	
	@Then ("^I verify the searched patient has the CARL complete text or not$")
	 
	public void I_verify_the_searched_patient_has_the_CARL_complete_text_or_not() throws Throwable
	{  
		patientclinical.IverifythesearchedpatienthastheCARLcompletetextornot();
	
	}
	
	@Then ("^I click on the \"(.*)\" searched patient which has the CARL text in it$")
	
	public void I_click_on_the_searched_patient_which_has_the_CARL_text_in_it(String lastname) throws Throwable
	{
		patientclinical.IclickonthesearchedpatientwhichhastheCARLtextinit(lastname);
	
	}
	
	
	
	@Then ("^I click on the Clinical Documents tab in the patient summary Page$")
	
	public void I_click_on_the_Clinical_Documents_tab_in_the_patient_summary_Page() throws Throwable
	{
		patientclinical.IclickontheClinicalDocumentstabinthepatientsummaryPage();
	}
	
	
	@Then("^I verify the CARL Document on the Clinical Documents tab in the patient summary Page$")
	public void I_verify_the_CARL_Document_on_the_Clinical_Documents_tab_in_the_patient_summary_Page() throws Throwable
	{
		patientclinical.IverifytheCARLDocumentontheClinicalDocumentstabinthepatientsummaryPage();
	}
	
	@Then("^I verify that if user has saved a form but not submitted, status should be read as In Progress$")
	
	public void I_verify_that_if_user_has_saved_a_form_but_not_submitted_status_should_be_read_as_In_Progress() throws Throwable
	
	{
		patientclinical.IverifythatifuserhassavedaformbutnotsubmittedstatusshouldbereadasInProgress();
	}
	
	@Then ("^I verify that In-progress status should be in purple color with Color code AD77B3$")
	public void I_verify_that_In_progress_status_should_be_in_purple_color_with_Color_code_AD77B3()
	{
		patientclinical.IverifythatInprogressstatusshouldbeinpurplecolorwithColorcodeAD77B3();
	}
	
	@Then ("^I click on the complete CARL on the Patient Summary$")
	public void I_click_on_the_complete_CARL_on_the_Patient_Summary()
	{
		patientclinical.IclickonthecompleteCARLonthePatientSummary();
	}
	
	 @Then ("^I save and continue the complete CARL form$")
	 public void I_save_and_continue_the_complete_CARL_form()
	 {
		 patientclinical.IsaveandcontinuethecompleteCARLform();
	 }
	 
	 @Then ("^I verify that if user submits a patient form status should be read as Active$")
	 public void I_verify_that_if_user_submits_a_patient_form_status_should_be_read_as_Active()
	 {
		 patientclinical.IverifythatifusersubmitsapatientformstatusshouldbereadasActive();
	 }
	 
	 @Then ("^I verify that Active status should be in green color with Color code 4EB96F$")
	 public void I_verify_that_Active_status_should_be_in_green_color_with_Color_code_4EB96F()
	 {
		 patientclinical.IverifythatActivestatusshouldbeingreencolorwithColorcode4EB96F();
	 }
	 
	 @Then ("^I click on cross button to close the Patient Summary Page$")
	 public void I_click_on_cross_button_to_close_the_Patient_Summary_Page()
	 {
		 patientclinical.IclickoncrossbuttontoclosethePatientSummaryPage();
	 }
	 
	 @Then ("^I click on the Transition Button to add the new episode$")
	 public void I_click_on_the_Transition_Button_to_add_the_new_episode()
	 {
		 patientclinical.IclickontheTransitionButtontoaddthenewepisode();
	 }

	 @Then  ("^I verify that if patient has has a formed assigned that is the same as an existing form the status of the already existing form should be read as Archived$")
	 public void I_verify_that_if_patient_has_has_a_formed_assigned_that_is_the_same_as_an_existing_form_the_status_of_the_already_existing_form_should_be_read_as_Archived()
	 {
		 patientclinical.IverifythatifpatienthashasaformedassignedthatisthesameasanexistingformthestatusofthealreadyexistingformshouldbereadasArchived();
	 }
	 
	 @Then ("^I verify that Archived status should be in Grey color with Color code 959595$")
	 public void I_verify_that_Archived_status_should_be_in_Grey_color_with_Color_code_959595()
	 {
		 patientclinical.IverifythatArchivedstatusshouldbeinGreycolorwithColorcode959595();
	 }
}
