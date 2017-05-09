package stepDefination.Episode2;

import java.awt.AWTException;
import java.io.File;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import com.remedy.Episode2.NoteCreation;
import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientNotesPatientCardSteps extends DriverScript {

	NoteCreation noteCreation = new NoteCreation(driver);

	 @Then ("^I click on the ALL Tab on Patient page$")
	 public void I_click_on_the_ALL_Tab_on_Patient_page()
	 {
		 noteCreation.IclickontheALLTabonPatientpage();
	 
	 }
	 
	@Then ("^I click on quick action button for note creation on Patient Card page$")
	public void I_click_on_quick_action_button_for_note_creation_on_Patient_Card_page() throws Throwable 
	{
		noteCreation.IclickonquickactionbuttonfornotecreationonPatientCardpage();
		 }

	@Then("^I verify whether topic drop down appears on Add Clinical Document on Patient Card page$")
    public void I_verify_whether_topic_drop_down_appears_on_Add_Clinical_Document_on_Patient_Card_page() throws Throwable 
	{
		noteCreation.IverifywhethertopicdropdownappearsonAddClinicalDocumentonPatientCardpage();
	}
	
	 @And("^I select the value from the topic drop down on  Add Clinical Document on Patient Card$")
	    public void I_select_the_value_from_the_topic_drop_down_on_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		 noteCreation.IselectthevaluefromthetopicdropdownonPatientCard("Baseline");
	    }
	 
	 @Then("^I verify Activity Date drop down calendar appears on the Add Clinical Document on Patient Card$")
	     public void I_verify_Activity_Date_drop_down_calendar_appears_on_the_Add_Clinical_Document_on_Note_Creation() throws Throwable 
	     {
		 noteCreation.IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonPatientCard();
		 }
	 
	 @And("^I verify Activity Body text box appears on the Add Clinical Document on Patient Card$")
	     public void I_verify_Activity_Body_text_box_appears_on_the_Add_ClinicalDocument_on_Patient_Card() throws Throwable 
	      {
		 noteCreation.IverifyActivityBodytextboxappearsontheAddClinicalDocumentonPatientCard();
	     }
	 
	 @And ("^I verify attach files link appears on the Add Clinical Document on Patient Card$")
	 public void I_verify_attach_files_link_appears_on_the_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IverifyattachfileslinkappearsontheAddClinicalDocumentonPatientCard();
	 }
	 
	 @And ("^I verify Cancel button appears on the Add Clinical Document on Patient Card$")
	 public void I_verify_Cancel_button_appears_on_the_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IverifyCancelbuttonappearsontheAddClinicalDocumentonPatientCard();
 }
	 
	 @And ("^I verify Create note appears on the Add Clinical Document on Patient Card$")
	 public void I_verify_Create_note_appears_on_the_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IverifyCreatenoteappearsontheAddClinicalDocumentonPatientCard();
	 }
	 
	 @Then ("^I select the \"(.*)\"  from date picker on Add Clinical Document on Patient Card$")
	 public void I_select_the_date_from_date_picker_on_Add_Clinical_Document_on_Patient_Card(String date) throws Throwable 
	 {
		 noteCreation.IselectthedatefromdatepickeronAddClinicalDocumentonPatientCard(date);
		
	 }
	 @And ("^I enter the Note Text in the textarea on Add Clinical Document on Patient Card$")	 
	 public void I_enter_the_Note_Text_in_the_textarea_on_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IentertheNoteTextinthetextareaonAddClinicalDocumentonPatientCard();
	 }
	 @Then ("^I click on the create Note Button on Add Clinical Document on Patient Card$")
	 public void I_click_on_the_create_Note_Button_on_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IclickonthecreateNoteButtononAddClinicalDocumentonPatientCard();
	 }
	 @And ("^I click the value from the topic drop down on  Add Clinical Document on Patient Card$")
	 public void I_click_the_value_from_the_topic_drop_down_on_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IclickthevaluefromthetopicdropdownonAddClinicalDocumentonPatientCard();
	 }
	 @And ("^I verify the drop down values on  Add Clinical Document on Patient Card$")
	 public void I_verify_the_drop_down_valueson_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IverifythedropdownvaluesonAddClinicalDocumentonPatientCard(); 
	 }
	 
	 @Then ("^I verify Topicdropdownbar has the placeholder Select a topic or not$")
	  public void I_verify_Topicdropdownbar_has_the_placeholder_Select_a_topic_or_not() throws Throwable 
	 {
		 noteCreation.IverifyTopicdropdownbarhastheplaceholderSelectatopicornot();

	 }
	 
	 @Then ("^I click on Activity Date on  Add Clinical Document on Patient Card$")
	  public void I_click_on_Activity_Date_on_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	  {
		 noteCreation.IclickonActivityDateonAddClinicalDocumentonPatientCard();
	  }
	 
	 @Then ("^I verify Calendar appears to select the date manually on  Add Clinical Document on Patient Card$")
	 public void I_verify_Calendar_appears_to_select_the_date_manually_on_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IverifyCalendarappearstoselectthedatemanuallyonAddClinicalDocumentonPatientCard();
	 }
	 
	 @Then ("^I Verify that \"(.*)\"  date as default date$")
	 public void I_Verify_that_todays_date_should_be_highlighted_in_calendar_as_default_date() throws Throwable 
	 {
		 noteCreation.IVerifythattodaysdateshouldbehighlightedincalendarasdefaultdate();
		 }
	 
	 @Then ("^I click on outside of the calendar on Add Clinical Document on Patient Card$")
	 public void I_click_on_outside_of_the_calendar_on_Add_Clinical_Document_on_Patient_Card() throws Throwable 
		 {
		 noteCreation.IclickonoutsideofthecalendaronAddClinicalDocumentonPatientCard();
		 }
	 
	 @Then ("^I verify that create Note has been successfully created$")
	 public void I_verify_that_create_Note_has_been_successfully_created()
	 {
		 noteCreation.IverifythatcreateNotehasbeensuccessfullycreated();
	 }
	 
	 
	 
	 
	 //Upload file
	 
	 @Then ("^I verify that Add Files link is clickable$")
	 public void I_verify_that_Add_Files_link_is_clickable()
	 {
		 noteCreation.IverifythatAdd_Fileslinkisclickable();    	 
	 }
	 
	 
	 @Then ("^I verify that user should be able to select and upload file \"(.*)\" through Add files link$")
     public void I_verify_that_usershould_be_able_to_select_and_upload_files_from_the_computer_through_Add_files_link(String FileName) throws AWTException, InterruptedException  	 
     {
		 String importDir=System.getProperty("user.dir");
		 String newDir=importDir+"\\"+"src"+"\\"+"test"+"\\"+"Imports";
	     System.out.println("$$$$$$$The Project Directory is"+importDir);
		 noteCreation.IverifythatusershouldbeabletoselectanduploadfilesfromthecomputerthroughAddfileslink(newDir+"\\"+FileName);
     }
	 
	 @Then ("^I verify the image is attached or not$")
	 public void I_verify_the_image_is_attached_or_not()
	 {
		 noteCreation.Iverifytheimageisattachedornot();
	 }
	 
	 
}
