package stepDefination.Episode2;

import java.awt.AWTException;
import com.remedy.Episode2.NoteCreation;
import com.remedy.Episode2.PatientsPage;
import com.remedy.Episode2.Readmission;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class PatientNotesPatientCardSteps extends DriverScript {

	NoteCreation noteCreation = new NoteCreation(driver);

	@Then("^I click on the ALL Tab on Patient page$")
	public void I_click_on_the_ALL_Tab_on_Patient_page() throws Throwable {
		noteCreation.IclickontheALLTabonPatientpage();
    }

	@Then("^I click on quick action button for note creation on Patient Card page$")
	public void I_click_on_quick_action_button_for_note_creation_on_Patient_Card_page() throws Throwable {
		noteCreation.IclickonquickactionbuttonfornotecreationonPatientCardpage();
	}

	@Then("^I click on quick action button for note creation on Patient Card page JavaScript$")
	public void I_click_on_quick_action_button_for_note_creation_on_Patient_Card_page_JavaScript() throws Throwable {
		noteCreation.IclickonquickactionbuttonfornotecreationonPatientCardpageJavaScript();
	}

	@Then("^I refresh my webpage on Patient Card Page$")
	public void I_refresh_my_webpage_on_Patient_Card_Page() throws Throwable {
		noteCreation.Irefreshmywebpageonpatientcardpage();
	}

	@Then("^I verify whether topic drop down appears on Add Clinical Document on Patient Card page$")
	public void I_verify_whether_topic_drop_down_appears_on_Add_Clinical_Document_on_Patient_Card_page()throws Throwable {
		noteCreation.IverifywhethertopicdropdownappearsonAddClinicalDocumentonPatientCardpage();
	}
	 
	 @And ("^I enter the Note Text in the textarea on Add Clinical Document on Patient Card$")	 
	 public void I_enter_the_Note_Text_in_the_textarea_on_Add_Clinical_Document_on_Patient_Card() throws Throwable 
	 {
		 noteCreation.IentertheNoteTextinthetextareaonAddClinicalDocumentonPatientCard("test");
	 }
	  
	 @Then ("^I select the month \"(.*)\" from calendar from date picker$")
	 public void I_select_the_month_from_calendar_from_date_picker(int date) throws InterruptedException
	 {
		 noteCreation.Iselectthemonthfromcalendarfromdatepicker(date);
	 }

	 //Upload file

	@And("^I select the \"(.*)\" from the topic drop down on Add Clinical Document on Patient Card$")
	public void I_select_the_value_from_the_topic_drop_down_on_Add_Clinical_Document_on_Patient_Card(String dropdownvalue) throws Throwable {
		noteCreation.IselectthevaluefromthetopicdropdownonPatientCard(dropdownvalue);
	}

	@Then("^I verify Activity Date drop down calendar appears on the Add Clinical Document on Patient Card$")
	public void I_verify_Activity_Date_drop_down_calendar_appears_on_the_Add_Clinical_Document_on_Note_Creation()throws Throwable {
		noteCreation.IverifyActivityDatedropdowncalendarappearsontheAddClinicalDocumentonPatientCard();
	}

	@And("^I verify Activity Body text box appears on the Add Clinical Document on Patient Card$")
	public void I_verify_Activity_Body_text_box_appears_on_the_Add_ClinicalDocument_on_Patient_Card() throws Throwable {
		noteCreation.IverifyActivityBodytextboxappearsontheAddClinicalDocumentonPatientCard();
	}

	@And("^I verify attach files link appears on the Add Clinical Document on Patient Card$")
	public void I_verify_attach_files_link_appears_on_the_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IverifyattachfileslinkappearsontheAddClinicalDocumentonPatientCard();
	}

	@And("^I verify Cancel button appears on the Add Clinical Document on Patient Card$")
	public void I_verify_Cancel_button_appears_on_the_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IverifyCancelbuttonappearsontheAddClinicalDocumentonPatientCard();
	}

	@And("^I verify Create note appears on the Add Clinical Document on Patient Card$")
	public void I_verify_Create_note_appears_on_the_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IverifyCreatenoteappearsontheAddClinicalDocumentonPatientCard();
	}

	@Then("^I select the \"(.*)\"  from date picker on Add Clinical Document on Patient Card$")
	public void I_select_the_date_from_date_picker_on_Add_Clinical_Document_on_Patient_Card(String date)throws Throwable {
		noteCreation.IselectthedatefromdatepickeronAddClinicalDocumentonPatientCard(date);
	}

	@Then("^I click on the create Note Button on Add Clinical Document on Patient Card$")
	public void I_click_on_the_create_Note_Button_on_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IclickonthecreateNoteButtononAddClinicalDocumentonPatientCard();
	}

	@And("^I click the value from the topic drop down on  Add Clinical Document on Patient Card$")
	public void I_click_the_value_from_the_topic_drop_down_on_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IclickthevaluefromthetopicdropdownonAddClinicalDocumentonPatientCard();
	}

	@And("^I verify the drop down values on  Add Clinical Document on Patient Card$")
	public void I_verify_the_drop_down_valueson_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IverifythedropdownvaluesonAddClinicalDocumentonPatientCard();
	}

	@Then("^I verify Topicdropdownbar has the placeholder Select a topic or not$")
	public void I_verify_Topicdropdownbar_has_the_placeholder_Select_a_topic_or_not() throws Throwable {
		noteCreation.IverifyTopicdropdownbarhastheplaceholderSelectatopicornot();
    }

	@Then("^I click on Activity Date on  Add Clinical Document on Patient Card$")
	public void I_click_on_Activity_Date_on_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IclickonActivityDateonAddClinicalDocumentonPatientCard();
	}

	@Then("^I click on the centre of the calendar header to select date and month$")
	public void I_click_on_the_centre_of_the_calendar_header_to_select_date_and_month() throws Throwable {
		noteCreation.Iclickonthecentreofthecalendarheadertoselectdateandmonth();
	}

	@Then("^I select the \"(.*)\" from the calendar from date picker$")
	public void I_select_the_date_from_the_calendar_from_date_picker(String date) throws Throwable {
		noteCreation.Iselectthedatefromthecalendarfromdatepicker(date);
	}

	@Then("^I click on the next link to select the required year \"(.*)\" on date picker$")
	public void I_click_on_the_next_link_to_select_the_required_year_on_date_picker(String date) throws Throwable {
		noteCreation.Iclickonthenextlinktoselecttherequiredyearondatepicker(date);
	}

	@Then("^I select the month \"(.*)\" from calendar from date picker$")
	public void I_select_the_month_from_calendar_from_date_picker(String date) throws InterruptedException, Throwable {
		noteCreation.Iselectthemonthfromcalendarfromdatepicker(date);
	}

	@Then("^I click on navigation bar to return to remedy connect$")
	public void I_click_on_navigation_bar_to_return_to_remedy_connect() throws Throwable {
		noteCreation.Iclickonnavigationbartoreturntoremedyconnect();
    }

	@Then("^I verify Calendar appears to select the date manually on  Add Clinical Document on Patient Card$")
	public void I_verify_Calendar_appears_to_select_the_date_manually_on_Add_Clinical_Document_on_Patient_Card()throws Throwable {
		noteCreation.IverifyCalendarappearstoselectthedatemanuallyonAddClinicalDocumentonPatientCard();
	}

	@Then("^I Verify that user should not allow to create note without selecting Topic field$")
	public void I_Verify_that_user_should_not_allow_to_create_note_without_selecting_Topic_field() throws Throwable {
		noteCreation.IVerifythatusershouldnotallowtocreatenotewithoutselectingTopicfield();
	}

	@Then("^I Verify that \"(.*)\"  date as default date$")
	public void I_Verify_that_todays_date_should_be_highlighted_in_calendar_as_default_date() throws Throwable {
		noteCreation.IVerifythattodaysdateshouldbehighlightedincalendarasdefaultdate();
	}

	@Then("^I click on outside of the calendar on Add Clinical Document on Patient Card$")
	public void I_click_on_outside_of_the_calendar_on_Add_Clinical_Document_on_Patient_Card() throws Throwable {
		noteCreation.IclickonoutsideofthecalendaronAddClinicalDocumentonPatientCard();
	}

	@Then("^I verify that create Note has been successfully created$")
	public void I_verify_that_create_Note_has_been_successfully_created() throws Throwable {
		noteCreation.IverifythatcreateNotehasbeensuccessfullycreated();
	}

	@Then("^I verify message should display in green color Your clinical document for Angela Pena has been added$")
	public void I_verify_message_should_display_in_green_color_Your_clinical_document_for_Angela_Pena_has_been_added() throws Throwable {
		noteCreation.IverifymessageshoulddisplayingreencolorYourclinicaldocumentforAngelaPenahasbeenadded();
	}

	@Then("^I verify on notification there should be link to View clinical document$")
	public void I_verify_on_notification_there_should_be_link_to_View_clinical_document() throws Throwable {
		noteCreation.IverifyonnotificationthereshouldbelinktoViewclinicaldocument();
	}

	@Then("^I verify Dismiss button should be there on notification message$")
	public void I_verify_Dismiss_button_should_be_there_on_notification_message() throws Throwable {
		noteCreation.IverifyDismissbuttonshouldbethereonnotificationmessage();
	}

	@Then("^I check clicking on cross icon of green bar green bar notification should get removed$")
	public void I_check_clicking_on_cross_icon_of_green_bar_green_bar_notification_should_get_removed() throws Throwable {
		noteCreation.Icheckclickingoncrossiconofgreenbargreenbarnotificationshouldgetremoved();
	}

	@Then("^I click on Add Files link on Note Section on Patient Card$")
	public void I_verify_that_Add_Files_link_is_clickable() throws Throwable {
		noteCreation.IverifythatAdd_Fileslinkisclickable();
	}

	@Then("^I verify that user should be able to select and upload file \"(.*)\" through Add files link$")
	public void I_verify_that_usershould_be_able_to_select_and_upload_files_from_the_computer_through_Add_files_link(String FileName) throws Throwable, AWTException, InterruptedException {
		String importDir = System.getProperty("user.dir");
		String newDir = importDir + "\\" + "src" + "\\" + "test" + "\\" + "Imports";
		noteCreation.IverifythatusershouldbeabletoselectanduploadfilesfromthecomputerthroughAddfileslink(newDir + "\\" + FileName);
	}

	@Then("^I verify the image is attached or not$")
	public void I_verify_the_image_is_attached_or_not() throws Throwable {
		noteCreation.Iverifytheimageisattachedornot();
	}

	@Then("^I verify that trash icon is available for each file after uploading all file$")
	public void I_verify_that_trash_icon_is_available_after_uploading_file() throws Throwable {
		noteCreation.Iverifythattrashiconisavailableafteruploadingfile();
	}

	@Then("^I verify user should be able to remove the file by selecting the trash icon$")
	public void I_verify_user_should_be_able_to_remove_the_file_by_selecting_the_trash_icon() throws Throwable {
		noteCreation.Iverifyusershouldbeabletoremovethefilebyselectingthetrashicon();
	}

	@Then("^I click on the Cancel button on the Note Section on Patient Card$")
	public void I_click_on_the_Cancel_button_on_the_Note_Section_on_Patient_Card() throws Throwable {
		noteCreation.IclickontheCancelbuttonontheNoteSectiononPatientCard();
	}

	@Then("^I verify create note successful message doesnot appear on Patient Card$")
	public void I_verify_create_note_successful_message_doesnot_appear_on_Patient_Card() throws Throwable {
		noteCreation.IverifycreatenotesuccessfulmessagedoesnotappearonPatientCard();
	}

	@Then("^I verify on canceling Note creation Note window should get close$")
	public void I_verify_on_canceling_Note_creation_Note_window_should_get_close() throws Throwable {
		noteCreation.IverifyoncancelingNotecreationNotewindowshouldgetclose();
	}

	@And("^I verify to submit the Note Topic is the mandatory field to fill$")
	public void I_verify_to_submit_the_Note_Topic_is_the_mandatory_field_to_fill() throws Throwable {
		noteCreation.IverifytosubmittheNoteTopicisthemandatoryfieldtofill();
	}

	@Then("^I switch to the Activity frame on the Patient Summary Page$")
	public void I_switch_to_the_Activity_frame_on_the_Patient_Summary_Page() throws Throwable {
		noteCreation.IswitchtotheActivityframeonthePatientSummaryPage();
	}

	@Then("^I click on the Impatient tab on the patient Card Page$")
	public void I_click_on_the_Impatient_tab_on_the_patient_Card_Page() throws Throwable {
		noteCreation.IclickontheImpatienttabonthepatientCardPage();
	}

	@And("^I enter the Note Text \"(.*)\" in the textarea on Add Clinical Document on Patient Card$")
	public void I_enter_the_Note_Text_in_the_textarea_on_Add_Clinical_Document_on_Patient_Card(String Notetext)throws Throwable {
		noteCreation.IentertheNoteTextinthetextareaonAddClinicalDocumentonPatientCard(Notetext);
	}
}
