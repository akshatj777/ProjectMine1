package stepDefination.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientNotes_PatientCard extends DriverScript {

	PatientsPage patientsPage = new PatientsPage(driver);

	@Then ("^I click on quick action button for note creation on Patient Card page$")
	public void I_click_on_quick_action_button_for_note_creation_on_Patient_Card_page()
	{
		patientsPage.IclickonquickactionbuttonfornotecreationonPatientCardpage();
		 }

	@Then("^I verify whether topic drop down appears on Add Clinical Document on Patient Card page$")
    public void I_verify_whether_topic_drop_down_appears_on_Add_Clinical_Document_on_Patient_Card_page()
	{
		patientsPage.IverifywhethertopicdropdownappearsonAddClinicalDocumentonPatientCardpage();
	}
	
	 @And("^I select the value from the topic drop down on  Add Clinical Document on Patient Card$")
	    public void I_select_the_value_from_the_topic_drop_down_on_Add_Clinical_Document_on_Patient_Card() throws Throwable {
	        patientsPage.IselectthevaluefromthetopicdropdownonPatientCard("Baseline");
	    }
	 
	 @Then("^I verify Activity Date drop down calendar appears on the Add Clinical Document on Patient Card$")
	     public void I_verify_Activity_Date_drop_down_calendar_appears_on_the_Add_Clinical_Document_on_Note_Creation()
	     {
		 patientsPage.IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonPatientCard();
		 }
	 
	 @And("^I verify Activity Body text box appears on the Add Clinical Document on Patient Card$")
	     public void I_verify_Activity_Body_text_box_appears_on_the_Add_ClinicalDocument_on_Patient_Card()
	      {
		 patientsPage.IverifyActivityBodytextboxappearsontheAddClinicalDocumentonPatientCard();
	     }
	 
	 @And ("^I verify attach files link appears on the Add Clinical Document on Patient Card$")
	 public void I_verify_attach_files_link_appears_on_the_Add_Clinical_Document_on_Patient_Card()
	 {
		 patientsPage.IverifyattachfileslinkappearsontheAddClinicalDocumentonPatientCard();
	 }
	 
	 @And ("^I verify Cancel button appears on the Add Clinical Document on Patient Card$")
	 public void I_verify_Cancel_button_appears_on_the_Add_Clinical_Document_on_Patient_Card()
	 {
	 patientsPage.IverifyCancelbuttonappearsontheAddClinicalDocumentonPatientCard();
 }
	 
	 @And ("^I verify Create note appears on the Add Clinical Document on Patient Card$")
	 public void I_verify_Create_note_appears_on_the_Add_Clinical_Document_on_Patient_Card()
	 {
		 patientsPage.IverifyCreatenoteappearsontheAddClinicalDocumentonPatientCard();
	 }
	 
	 @Then ("^I select the date from date picker on Add Clinical Document on Patient Card$")
	 public void I_select_the_date_from_date_picker_on_Add_Clinical_Document_on_Patient_Card()
	 {
		 patientsPage.IselectthedatefromdatepickeronAddClinicalDocumentonPatientCard("12");
	 }
	 @And ("^I enter the Note Text in the textarea on Add Clinical Document on Patient Card$")	 
	 public void I_enter_the_Note_Text_in_the_textarea_on_Add_Clinical_Document_on_Patient_Card()
	 {
		 patientsPage.IentertheNoteTextinthetextareaonAddClinicalDocumentonPatientCard();
	 }
	 @Then ("^I click on the create Note Button on Add Clinical Document on Patient Card$")
	 public void I_click_on_the_create_Note_Button_on_Add_Clinical_Document_on_Patient_Card()
	 {
		 patientsPage.IclickonthecreateNoteButtononAddClinicalDocumentonPatientCard();
	 }
}
