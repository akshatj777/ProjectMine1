package stepDefination.Episode2;

import com.remedy.Episode2.NoteCreation;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;


public class PatientNotesSteps extends DriverScript{

	NoteCreation noteCreation = new NoteCreation(driver);
	
	@Then("^I verify click on patient card to be navigated to patient summary$")
	public void I_verify_click_on_patient_card_to_be_navigated_to_patient_summary() throws Throwable 
	{
		noteCreation.Iverifyclickonpatientcardtobenavigatedtopatientsummary();
		
	}
	
    @Then ("^I click on the patient card on Patient Card Page$")
	 public void I_click_on_the_patient_card_on_Patient_Card_Page() throws Throwable 
    {
    	noteCreation.I_click_on_the_patient_card_on_Patient_Card_Page();
	    }
	
	@Then("^I verify Patient Summary includes quick action button for note creation$")
	public void I_verify_Patient_Summary_includes_quick_action_button_for_note_creation() throws Throwable {
		noteCreation.IverifyPatientSummaryincludesquickactionbuttonfornotecreation();
    }
	
	@Then ("^I click on quick action button for note creation on Patient Summary page$")
	public void I_click_on_quick_action_button_for_note_creation_on_Patient_Summary_page() throws Throwable 
	{
		noteCreation.IclickonquickactionbuttonfornotecreationonPatientSummarypage();
		 }

	@Then("^I verify whether topic drop down appears on the Add Clinical Document on Note Creation$")  
    public void I_verify_whether_topic_drop_down_appears_on_the_Add_Clinical_Document_on_Note_Creation() throws Throwable 
	{
		noteCreation.I_verify_whether_topic_drop_down_appears_on_the_Add_Clinical_Document_on_Note_Creation();
	}
	
	 @Then("^I select the value from the topic drop down on Add Clinical Document on Patient Summary$")
	    public void I_select_the_value_from_the_topic_drop_down_on_Add_Clinical_Document_on_Patient_Summary() throws Throwable {
		 noteCreation.IselectthevaluefromthetopicdropdownonAddClinicalDocumentonPatientSummary("Baseline");
	    }
	 
	 @Then("^I verify Activity Date drop down calendar appears on the Add Clinical Document on Note Creation$")
	     public void I_verify_Activity_Date_drop_down_calendar_appears_on_the_Add_Clinical_Document_on_Note_Creation() throws Throwable 
	     {
		 noteCreation.IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonNoteCreation();
		 }
	 
	 @And("^I verify Activity Body text box appears on the Add Clinical Document on Note Creation$")
	     public void I_verify_Activity_Body_text_box_appears_on_the_Add_Clinical_Document_on_Note_Creation() throws Throwable 
	     {
		 noteCreation.IverifyActivityBodytextboxappearsontheAddClinicalDocumentonNoteCreation();
	     }
	 
	 @And ("^I verify attach files link appears on the Add Clinical Document on Note Creation$")
	 public void I_verify_attach_files_link_appears_on_the_Add_Clinical_Document_on_Note_Creation() throws Throwable 
	 {
		 noteCreation.IverifyattachfileslinkappearsontheAddClinicalDocumentonNoteCreation();
	 }
	 
	 @And ("^I verify Cancel button appears on the Add Clinical Document on Note Creation$")
	 public void I_verify_Cancel_button_appears_on_the_Add_Clinical_Document_on_Note_Creation() throws Throwable 
	 {
		 noteCreation.IverifyCancelbuttonappearsontheAddClinicalDocumentonNoteCreation();
 }
	 
	 @And ("^I verify Create note appears on the Add Clinical Document on Note Creation$")
	 public void I_verify_Create_note_appears_on_the_Add_Clinical_Document_on_Note_Creation() throws Throwable 
	 {
		 noteCreation.IverifyCreatenoteappearsontheAddClinicalDocumentonNoteCreation();
	 }
	 
	 @Then ("^I attach file on the Add Clinical Document on Note Creation$")
	 public void I_attach_file_on_the_Add_Clinical_Document_on_Note_Creation()
	 {
		 noteCreation.IattachfileontheAddClinicalDocumentonNoteCreation();
	 }
	 
	 
}
