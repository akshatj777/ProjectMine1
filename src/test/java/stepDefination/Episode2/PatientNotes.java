package stepDefination.Episode2;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;
import com.remedy.userAdmin.LoginPage;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PatientNotes extends DriverScript{

	PatientsPage patientsPage = new PatientsPage(driver);
	
	@Then("^I verify click on patient card to be navigated to patient summary$")
	public void I_verify_click_on_patient_card_to_be_navigated_to_patient_summary()
	{
		patientsPage.Iverifyclickonpatientcardtobenavigatedtopatientsummary();
		
	}
	
    @Then ("^I click on the patient card$")
	 public void I_click_on_the_patient_card() throws Throwable {
	    patientsPage.I_click_on_the_patient_card();
	    }
	
	@Then("^I verify Patient Summary includes quick action button for note creation$")
	public void I_verify_Patient_Summary_includes_quick_action_button_for_note_creation() throws Throwable {
        patientsPage.IverifyPatientSummaryincludesquickactionbuttonfornotecreation();
    }
	
	@Then ("^I click on quick action button for note creation on Patient Summary page$")
	public void I_click_on_quick_action_button_for_note_creation_on_Patient_Summary_page()
	{
		 patientsPage.IclickonquickactionbuttonfornotecreationonPatientSummarypage();
		 }

	@Then("^I verify whether topic drop down appears on the Add Clinical Document on Note Creation$")
    public void I_verify_whether_topic_drop_down_appears_on_the_Add_Clinical_Document_on_Note_Creation()
	{
		patientsPage.I_verify_whether_topic_drop_down_appears_on_the_Add_Clinical_Document_on_Note_Creation();
	}
	
	 @Then("^I select the Baseline value from the topic drop down on Note Creation$")
	    public void I_select_the_Baseline_value_from_the_topic_drop_down_on_Note_Creation() throws Throwable {
	        patientsPage.IselecttheBaselinevaluefromthetopicdropdownonNoteCreation();
	    }
	 
	 @Then("^I verify Activity Date drop down calendar appears on the Add Clinical Document on Note Creation$")
	     public void I_verify_Activity_Date_drop_down_calendar_appears_on_the_Add_Clinical_Document_on_Note_Creation()
	     {
		 patientsPage.IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonNoteCreation();
		 }
	 
	 @And("^I verify Activity Body text box appears on the Add Clinical Document on Note Creation$")
	     public void I_verify_Activity_Body_text_box_appears_on_the_Add_Clinical_Document_on_Note_Creation()
	     {
		 patientsPage.IverifyActivityBodytextboxappearsontheAddClinicalDocumentonNoteCreation();
	     }
	  
 }

