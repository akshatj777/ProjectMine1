package stepDefination.Episode2;

import com.remedy.Episode2.NoteCreation;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class NotesSortClinicalDocumentsSteps extends DriverScript {

	NoteCreation noteCreation = new NoteCreation(driver);
	
	@Then ("^I get the name of the first patient from the patient list on patient card page$")
	public void I_get_the_name_of_the_first_patient_from_the_patient_list_on_patient_card_page()
	{
		noteCreation.Igetthenameofthefirstpatientfromthepatientlistonpatientcardpage();
	
	}
	
	@Then ("^I enter patient name in the search box on the patients page$")
	public void I_enter_patient_name_in_the_search_box_on_the_patients_page()
	{
		noteCreation.Ienterpatientnameinthesearchboxonthepatientspage();
	}
	
	@Then ("^I click on the patient card to navigate to the patient summary page$")
	public void I_click_on_the_patient_card_to_navigate_to_the_patient_summary_page()
	{
		noteCreation.Iclickonthepatientcardtonavigatetothepatientsummarypage();
	}
	
	@Then ("^I click on the subbar clinical documents tab in Patient summary Page$") 
	public void I_click_on_the_subbar_clinical_documents_tab_in_Patient_summary_Page()
	{
		noteCreation.IclickonthesubbarclinicaldocumentstabinPatientsummaryPage();
	}
	
	@Then ("^I verify note should be stored in the clinical document section once it is created$")
	public void I_verify_note_should_be_stored_in_the_clinical_document_section_once_it_is_created()
	{
		noteCreation.Iverifynoteshouldbestoredintheclinicaldocumentsectiononceitiscreated();
		
	}
	
	@Then ("^I click on the created note in the clinical Documents section on patient summary$") 
	public void I_click_on_the_created_note_in_the_clinical_Documents_section_on_patient_summary()
	{
	    noteCreation.IclickonthecreatednoteintheclinicalDocumentssectiononpatientsummary(); 
	}
	
	@Then ("^I click on the cross button Note Read only form to navigate to patient card$")
	public void I_click_on_the_cross_button_Note_Read_only_form_to_navigate_to_patient_card()
	{
		noteCreation.IclickonthecrossbuttonNoteReadonlyformtonavigatetopatientcard();
	}
	
	@Then ("^I click on the Activity tab on the Patient Summary Page$")
	public void I_click_on_the_Activity_tab_on_the_Patient_Summary_Page() 
	{
		noteCreation.IclickontheActivitytabonthePatientSummaryPage();
	}
	
	@Then ("^I click on the Notification button on the Activity frame on Patient Summary Page$")
	public void I_click_on_the_Notification_button_on_the_Activity_frame_on_Patient_Summary_Page() 
	{
		noteCreation.IclickontheNotificationbuttonontheActivityframeonPatientSummaryPage();
	}
   
	@Then ("^I Verify that the notification logs activity date on the Notification on Activity tab on Patient Summary$")

	public void I_Verify_that_the_notification_logs_activity_date_on_the_Notification_on_Activity_tab_on_Patient_Summary()
	{
		noteCreation.IVerifythatthenotificationlogsactivitydateontheNotificationonActivitytabonPatientSummary();
	}
	 
	 @Then ("^I Verify that the notification logs activity name  on the Notification on Activity tab on Patient Summary$")
	 public void I_Verify_that_the_notification_logs_activity_name_on_the_Notification_on_Activity_tab_on_Patient_Summary()
	 {
		 noteCreation.IVerifythatthenotificationlogsactivitynameontheNotificationonActivitytabonPatientSummary();
	 }
	 
	 
	 
	 @Then ("^I Verify that the notification logs user name  on the Notification on Activity tab on Patient Summary$")
	 public void I_Verify_that_the_notification_logs_user_name_on_the_Notification_on_Activity_tab_on_Patient_Summary()
	 {
		 noteCreation.IVerifythatthenotificationlogsusernameontheNotificationonActivitytabonPatientSummary();
	 }
	
}
