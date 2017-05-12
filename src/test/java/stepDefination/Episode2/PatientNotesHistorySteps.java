package stepDefination.Episode2;

import com.remedy.Episode2.PatientClinicalDocuments;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class PatientNotesHistorySteps extends DriverScript  {

	PatientClinicalDocuments patientclinical=new PatientClinicalDocuments(driver);
	
	
	 @Then ("I click on the CARL Assessment Note document to open the Notes on the Clinical Documents")
	 public void  I_click_on_the_Care_Assessment_Note_document_to_open_the_Notes_on_the_Clinical_Documents()
	 {
		 patientclinical.IclickontheCareAssessmentNotedocumenttoopentheNotesontheClinicalDocuments();
	 }
	 
	 
	 
	 @Then("^I verify information of the last user who saved the individual form is displaying on the Last saved section$")
	 public void I_verify_information_of_the_last_user_who_saved_the_individual_form_is_displaying_on_the_Last_saved_section()
	 {
		 patientclinical.IverifyinformationofthelastuserwhosavedtheindividualformisdisplayingontheLastsavedsection();
	 }
	
	 @Then ("^I verify date and time information appears in last saved section$")
	  public void I_verify_date_and_time_information_appears_in_last_saved_section()
	 {
		 patientclinical.Iverifydateandtimeinformationappearsinlastsavedsection();
	 }
	 

     @Then ("^I verify LastName FirstName and userrole appears in last saved section$")
    		 
	 
	 public void I_verify_LastName_FirstName_and_userrole_appears_in_last_saved_section()
	 {
		 patientclinical.IverifyLastNameFirstNameanduserroleappearsinlastsavedsection();
	 
	 }
      
     @Then ("^I verify that upon Selecting Show History should display the information of all users who have saved that form$")
	
	 public void I_verify_that_upon_Selecting_Show_History_should_display_the_information_of_all_users_who_have_saved_that_form() throws InterruptedException
	 {
		 patientclinical.IverifythatuponSelectingShowHistoryshoulddisplaytheinformationofalluserswhohavesavedthatform();
	 }

     @Then ("^I verify upon clicking Show history link a list of users should appear in chronological order from most recent saved to oldest saved$")
	 
	public void I_verify_upon_clicking_Show_history_link_a_List_of_users_should_appear_in_chronological_order_from_most_recent_saved_to_oldest_saved () throws InterruptedException
	{
		 patientclinical.IverifyuponclickingShowhistorylinkaListofusersshouldappearinchronologicalorderfrommostrecentsavedtooldestsaved();
	}

	 @Then ("^I verify that Show History section should not be applicable for note section$")
	 public void I_verify_that_Show_History_section_should_not_be_applicable_for_note_section()
	 {
		 patientclinical.IverifythatShowHistorysectionshouldnotbeapplicablefornotesection();
	 }
  
     
     @Then ("^I verify that upon selecting Hide History user should only see the information of the last user who saved the form$")
     public void  I_verify_that_upon_selecting_Hide_History_user_should_only_see_the_information_of_the_last_user_who_saved_the_form()     
     {
    	 patientclinical.IverifythatuponselectingHideHistoryusershouldonlyseetheinformationofthelastuserwhosavedtheform();
     }
     
     @Then ("^I click on hide history to disable all the saved form list$")
    public void  I_click_on_hide_history_to_disable_all_the_saved_form_list()
    {
    	 patientclinical.Iclickonhidehistorytodisableallthesavedformlist();
    }
	
}
