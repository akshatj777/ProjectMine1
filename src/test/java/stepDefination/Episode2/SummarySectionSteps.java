package stepDefination.Episode2;

import org.openqa.selenium.By;
import com.remedy.Episode2.PatientClinicalDocuments;
import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class SummarySectionSteps extends DriverScript{

	PatientClinicalDocuments patientclinical=new PatientClinicalDocuments(driver);
	
	@Then ("^I verify the presence of Summary Section of the Clinical Document table$") 
	public void I_verify_the_presence_of_Summary_section_of_the_Clinical_Document_table() throws Throwable
	{
		patientclinical.IverifythepresenceofSummarysectionoftheClinicalDocumenttable();
		
	}
	
	 @Then ("^I verify body text of the Note is appearing in the summary section$")
	public void I_verify_body_text_of_the_Note_is_appearing_in_the_summary_section() throws Throwable		 
	{
		 patientclinical.IverifybodytextoftheNoteisappearinginthesummarysection();
			
	}
	 
	@Then ("^I verify for clinical note and baseline summary should be displayed up to 2 lines$")
	 public void  I_verify_for_clinical_note_and_baseline_summary_should_be_displayed_up_to_2_lines() throws Throwable
	 {
		 patientclinical.Iverifyforclinicalnoteandbaselinesummaryshouldbedisplayedupto2lines();
	 }
	
	@Then("^I verify if summary is longer than the character limit then Ellipsis three dots should show$")
	public void I_verify_if_summary_is_longer_than_the_character_limit_then_Ellipsis_three_dots_should_show() throws Throwable
	{
		patientclinical.IverifyifsummaryislongerthanthecharacterlimitthenEllipsisthreedotsshouldshow();
	}
	
	@Then ("^I verify if a note is having attachment and do not have any summary then attachment count should appear in the summary section$") 
	public void I_verify_if_a_note_is_having_attachment_and_do_not_have_any_summary_then_attachment_count_should_appear_in_the_summary_section() throws Throwable
	{
		patientclinical.Iverifyifanoteishavingattachmentanddonothaveanysummarythenattachmentcountshouldappearinthesummarysection();
	}
	
    @Then ("^I verify forms should not display any message in the summary section and it should be greyed out blank$")
	public void I_verify_forms_should_not_display_any_message_in_the_summary_section_and_it_should_be_greyed_out_blank() throws Throwable
	{
    	patientclinical.Iverifyformsshouldnotdisplayanymessageinthesummarysectionanditshouldbegreyedoutblank();
	}
    
    
    //Document section
    
     @Then ("^I click on the Transitions tab on the Patient Summary Page$")
	
	public void I_click_on_the_Transitions_tab_in_the_patient_summary_Page() throws Throwable
	{
		patientclinical.IclickontheTransitionstabinthepatientsummaryPage();
	}
     
     @Then ("^I click on add a new transition to add a new episode$")
     public void I_click_on_add_a_new_transition_to_add_a_new_episode() throws Throwable
     {
    	 patientclinical.ThenIclickonaddanewtransitiontoaddanewepisode();	 
     }
     
     @Then ("I click on datepicker button to select the admit date on add a new transition$")
     public void I_click_on_datepicker_button_to_select_the_admit_date() throws Throwable
     {
    	 patientclinical.Iclickondatepickerbuttontoselecttheadmitdate();
     }
     
     
     @Then ("^I click on the date from the datepicker on add a new transition$")
     public void I_click_on_the_date_from_the_datepicker_on_add_a_new_transition() throws Throwable
     {
    	 patientclinical.Iclickonthedatefromthedatepickeronaddanewtransition();
    	 
     }
    
     @Then ("^I select the care setting value on add a new transition$")
     public void I_select_the_care_setting_value_on_add_a_new_transition() throws Throwable
     {
    	 patientclinical.Iselectthecaresettingvalueonaddanewtransition();
     }
    
     @Then ("^I select the care type value on add a new transition$")
     public void I_select_the_care_type_value_on_add_a_new_transition() throws Throwable
     {
    	 patientclinical.Iselectthecaretypevalueonaddanewtransition();
     }
    
     @Then ("^I select the facility value on add a new transition$")
     public void I_select_the_facility_value_on_add_a_new_transition() throws Throwable
     {
    	 patientclinical.Iselectthefacilityvalueonaddanewtransition();
     }
     
     @Then ("^I click on the Diagnosis and DRG tab on add a new transition to select the DRG$")
    public void I_click_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition_to_select_the_DRG() throws Throwable
    {
    	 patientclinical.IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRG();	 
    }
 
     @Then ("^I select the DRG type on the Diagnosis and DRG tab on add a new transition$")
     public void I_select_the_DRG_type_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition() throws Throwable
     {
    	 patientclinical.IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition();
     }
     
     @Then ("^I select the DRG on the Diagnosis and DRG tab on add a new transition$")
     public void I_select_the_DRG_on_the_Diagnosis_and_DRG_tab_on_add_a_new_transition() throws Throwable
     {
    	 patientclinical.IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition();
     }
    
     @Then ("^I switch to PatientTransitions frame$")
     public void I_switch_to_Patient_Transitions_frame() throws Throwable
     {
    	 patientclinical.IswitchtoPatientTransitionsframe();
     }
    
     @Then ("^I verify that title of document or topic of note should appear as a link in the section$")
     public void I_verify_that_title_of_document_or_topic_of_note_should_appear_as_a_link_in_the_section() throws Throwable
     {
    	 patientclinical.Iverifythattitleofdocumentortopicofnoteshouldappearasalinkinthesection();
     }
     
     @Then ("^I verify that user should be able to click on title of document$")
 	public void I_verify_that_user_should_be_able_to_click_on_title_of_document() throws Throwable
 	{
    	 patientclinical.Iverifythatusershouldbeabletoclickontitleofdocument();
 	}
     
     @Then ("^I click on the Create Transition Button to add a new transition$") 
     public void I_click_on_the_Create_Transition_Button_to_add_a_new_transition() throws Throwable
     {
    	 patientclinical.IclickontheCreateTransitionButtontoaddanewtransition();
     }
  
     @Then ("^I click on the Create Transition Button to add a new transition for discharge info$") 
     public void I_click_on_the_Create_Transition_Button_to_add_a_new_transition_for_discharge_info() throws Throwable
     {
    	 patientclinical.IclickontheCreateTransitionButtontoaddanewtransitionfordischargeinfo();
     }
     @Then ("^I click on the Transition Info on add a new transition$")
     public void I_click_on_the_Transition_Info_on_add_a_new_transition() throws Throwable
     {
    	 patientclinical.IclickontheTransitionInfoonaddanewtransition();
    
     }
     
     
     @Then ("^I verify the CARL Document not appear on the Clinical Documents tab in the patient summary Page$")
     public void  I_verify_the_CARL_Document_not_appear_on_the_Clinical_Documents_tab_in_the_patient_summary_Page()
     {
    	 
  //  	 patientclinical.IverifytheCARLDocumentnotappearontheClinicalDocumentstabinthepatientsummaryPage();
     }
       
    @Then("^I click on the Cancel button on Episode present on the Add Patient page$")
    public void I_click_on_the_Cancel_button_on_Episode_present_on_the_Add_Patient_page() {
        patientclinical.IclickontheCancelbuttononEpisodepresentontheAddPatientpage();
    }

    @Then("^I click on the agree button for the patient on patient card page$")
    public void I_click_on_the_agree_button_for_the_patient_on_patient_card_page() {
        patientclinical.Iclickontheagreebuttonforthepatientonpatientcardpage();
    }

    @Then("^I switch to Patient Care Team frame$")
    public void I_switch_to_Patient_CareTeam_frame() throws Throwable {
        patientclinical.IswitchtoPatientCareTeamframe();
    }
    
    @Then("^I click on the patient on the patient card page that has no CARL button in it$")
    public void I_click_on_the_patient_on_the_patient_card_page_that_has_no_CARL_button_in_it()
    {
    	patientclinical.IclickonthepatientonthepatientcardpagethathasnoCARLbuttoninit();
    }
    
	@Then ("^I get the patient last name who have no CARL button in it$")
	public void I_get_the_patient_last_name_who_have_no_CARL_button_in_it()
	{
		patientclinical.IgetthepatientlastnamewhohavenoCARLbuttoninit();
	}
	

	@Then ("^I click on the cancel button to delete the searched patient from the search box$")
	public void I_click_on_the_cancel_button_to_delete_the_searched_patient_from_the_search_box()
	{
		patientclinical.Iclickonthecancelbuttontodeletethesearchedpatientfromthesearchbox();
	}
	
	@Then ("^I click on the searched name on the patient card$")
	public void I_click_on_the_searched_name_on_the_patient_card()
	{
		patientclinical.Iclickonthesearchednameonthepatientcard();
	}
    
}
