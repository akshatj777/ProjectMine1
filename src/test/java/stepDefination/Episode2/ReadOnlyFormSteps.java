package stepDefination.Episode2;

import java.awt.AWTException;
import java.text.ParseException;

import com.remedy.Episode2.PatientClinicalDocuments;

import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class ReadOnlyFormSteps extends DriverScript {

	PatientClinicalDocuments patientclinical = new PatientClinicalDocuments(driver);

	@Then("^I click on the document to open the Notes on the Clinical Documents$")
    public void I_click_on_the_document_to_open_the_Notes_on_the_Clinical_Documents() throws Throwable {
		patientclinical.IclickonthedocumenttoopentheNotesontheClinicalDocuments();

	}

	@Then("^I Verify that Notes - Read only form should be accessible$")
	public void I_Verify_that_Notes_Read_only_form_should_be_accessible() throws Throwable {
		patientclinical.IVerifythatNotesReadonlyformshouldbeaccessible();

	}

	@Then("^I verify Topic should be the note title$")
	public void I_verify_Topic_should_be_the_note_title() throws Throwable {
		patientclinical.IverifyTopicshouldbethenotetitle();
	}

	@Then("^I verify Body text box should be there on Notes - Read only form$")
	public void I_verify_Body_text_box_should_be_there_on_Notes_Read_only_form() throws Throwable {
		patientclinical.IverifyBodytextboxshouldbethereonNotesReadonlyform();
	}

	@Then("^I Verify that User email should be displayed under notes read only form$")
	public void I_Verify_that_User_email_should_be_displayed_under_notes_read_only_form() throws Throwable {
        patientclinical.IVerifythatUseremailshouldbedisplayedundernotesreadonlyform();
	}

	@Then("^I Verify that User role should be displayed under notes read only form$")
	public void I_Verify_that_User_role_should_be_displayed_under_notes_read_only_form() throws Throwable {
		patientclinical.IVerifythatUserroleshouldbedisplayedundernotesreadonlyform();
	}

	@Then("^I Verify that Username should be displayed under notes read only form$")
	public void I_Verify_that_Username_should_be_displayed_under_notes_read_only_form() throws Throwable {
		patientclinical.IVerifythatUsernameshouldbedisplayedundernotesreadonlyform();
	}

	@Then("^I verify the Activity Date and time of the note under notes read only form$")
	public void I_verify_the_Activity_Date_and_time_of_the_note_under_notes_read_only_form() throws Throwable {
		patientclinical.IverifytheActivityDateandtimeofthenoteundernotesreadonlyform();

	}

	@Then("^I Verify that Activity date should displayed date with format MM/DD/YYYY$")
	public void I_Verify_that_Activity_date_should_displayed_date_with_format_MMDDYYYY() throws ParseException, Throwable {
		patientclinical.IVerifythatActivitydateshoulddisplayeddatewithformatMMDDYYYY();
	}

	@Then("^I Verify that Created date should displayed date with format MM/DD/YYYY$")
	public void I_Verify_that_Created_date_should_displayed_date_with_format_MMDDYYYY() throws ParseException, Throwable {
		patientclinical.IVerifythatCreateddateshoulddisplayeddatewithformatMMDDYYYY();
	}

	@Then("^I verify that user should be able to download all the attachment attached under the notes by selecting download link$")
	public void I_verify_that_user_should_be_able_to_download_all_the_attachment_attached_under_the_notes_by_selecting_download_link() throws Throwable, AWTException, InterruptedException {
		patientclinical.Iverifythatusershouldbeabletodownloadalltheattachmentattachedunderthenotesbyselectingdownloadlink();
	}

	@Then("^I verify that there is an Attachments section that should display all attachments")
	public void I_verify_that_there_is_an_Attachments_section_that_should_display_all_attachments() throws Throwable {
		patientclinical.IverifythatthereisanAttachmentssectionthatshoulddisplayallattachments();

	}

}
