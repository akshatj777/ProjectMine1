package stepDefination.Episode2;

import java.text.ParseException;

import com.remedy.Episode2.PatientClinicalDocuments;

import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class ReadOnlyform extends DriverScript{

	PatientClinicalDocuments patientclinical=new PatientClinicalDocuments(driver);
	
	@Then ("^I click on the document to open the Notes on the Clinical Documents$")
	
	public void I_click_on_the_document_to_open_the_Notes_on_the_Clinical_Documents()
	{
		patientclinical.IclickonthedocumenttoopentheNotesontheClinicalDocuments();
	
	}
	
	@Then ("^I Verify that Notes - Read only form should be accessible$")
	public void I_Verify_that_Notes_Read_only_form_should_be_accessible()
	{
		patientclinical.IVerifythatNotesReadonlyformshouldbeaccessible();
		
	}
	
	@Then ("^I verify Topic should be the note title$")
	public void I_verify_Topic_should_be_the_note_title()
	{
		patientclinical.IverifyTopicshouldbethenotetitle();
	}
	
	@Then ("^I verify Body text box should be there on Notes - Read only form$")
	public void  I_verify_Body_text_box_should_be_there_on_Notes_Read_only_form()
	{
		patientclinical.IverifyBodytextboxshouldbethereonNotesReadonlyform();
	}
	
	@Then ("^I Verify that User email should be displayed under notes read only form$")
    public void  I_Verify_that_User_email_should_be_displayed_under_notes_read_only_form()
    {
		
		patientclinical.IVerifythatUseremailshouldbedisplayedundernotesreadonlyform();
    }
	
	
	 @Then ("^I Verify that User role should be displayed under notes read only form$")
	 public void I_Verify_that_User_role_should_be_displayed_under_notes_read_only_form()
	 {
		 patientclinical.IVerifythatUserroleshouldbedisplayedundernotesreadonlyform();
	 }
	 
	 @Then ("^I Verify that Username should be displayed under notes read only form$") 
	 public void I_Verify_that_Username_should_be_displayed_under_notes_read_only_form()
	 {
		 patientclinical.IVerifythatUsernameshouldbedisplayedundernotesreadonlyform();
	 }
	 
	 @Then ("^I verify the Activity Date and time of the note under notes read only form$")
	 public void I_verify_the_Activity_Date_and_time_of_the_note_under_notes_read_only_form()
	 {
		 patientclinical.IverifytheActivityDateandtimeofthenoteundernotesreadonlyform();
		 
	 }
	 
	 @Then ("^I Verify that Activity date should displayed date with format MM/DD/YYYY$")
	 public void I_Verify_that_Activity_date_should_displayed_date_with_format_MMDDYYYY() throws ParseException
	 {
		 patientclinical.IVerifythatActivitydateshoulddisplayeddatewithformatMMDDYYYY();
	 }
	 
	 
	 @Then ("^I verify that there is an Attachments section that should display all attachments")
     public void I_verify_that_there_is_an_Attachments_section_that_should_display_all_attachments()
     {
		 patientclinical.IverifythatthereisanAttachmentssectionthatshoulddisplayallattachments();
	
     } 
	 
}
