package stepDefination.Episode2;

import com.remedy.Episode2.DischargeCarlForm;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;

public class DischargeCarlFormSteps extends DriverScript {
	DischargeCarlForm dischargecarlform = new DischargeCarlForm(driver);
	
	@Then("^I verify \"([^\"]*)\" appears on Discharge section of carl form$")
	public void I_Verify_Subtitle_Field_Appears_under_on_Discharge_section(String text) throws Throwable {
	    dischargecarlform.IVerifySubtitleUnderDischargeSectionOnDishargeTabOfTheCarlForm(text);
	}
	
	@Then("^I verify \"([^\"]*)\" field under Next Site of Care on Discharge section$")
	public void I_Verify_Recommendation_Field_under_on_Discharge_section(String text) throws Throwable {
	    dischargecarlform.IVerifyRecommendationUnderDischargeSectionOnDishargeTabOfTheCarlForm(text);
	}

	@Then("^I verify \"([^\"]*)\" subform field under Recommendation on Discharge section$")
	public void I_Verify_SUbform_Field_Under_Recommendation_On_Discharge_Section(String subForm) throws Throwable {
		dischargecarlform.IVerifySubFormFieldUnderRecommendationOnDischargeSectionOnCarlForm(subForm);	
	}
	
	@Then("^I verify Additional Comments section under Discharge on Carl form$")
	public void I_Verify__AdditionalComments_Under_DischargeSection() throws Throwable {
		dischargecarlform.IVerifyAdditionalCommentsSectionUnderDischargeOnCarlForm();	
	}

	@Then("^I click on \"([^\"]*)\" subform dropdown under Recommendation on Discharge section$")
	public void I_Click_On_Subform_Dropdown_Under_Recommendation_On_Discharge_Section(String text) throws Throwable {
		dischargecarlform.IClickOnSubFormDropDownUnderRecommendationOnDischargeSectionOnCarlForm(text);	
	}

	@Then("^I select \"([^\"]*)\" in subform dropdown for \"([^\"]*)\" on Discharge section$")
	public void I_Select_Option_From_Subform_Dropdown_Under_Recommendation_On_Discharge_Section(String dropdown, String subForm) throws Throwable {
	    dischargecarlform.ISelectOptionFromSubFormDropDownUnderRecommendationOnDischargeSectionOnCarlForm(dropdown, subForm);
	}
	
	@Then("^I verify Done button under subform is disabled on Discharge section$")
	public void I_Verify_Done_Button_Under_SubForm_Is_Disabled_On_Discharge_section() throws Throwable {
	    dischargecarlform.IVerifyDoneButtonIsDisabledUnderSubFormOnDischargeSectionOnCarlForm();
	}
	
	@Then("^I verify Done button under subform is enabled on Discharge section$")
	public void I_Verify_Done_Button_Under_SubForm_Is_Enabled_On_Discharge_section() throws Throwable {
	    dischargecarlform.IVerifyDoneButtonIsEnabledUnderSubFormOnDischargeSectionOnCarlForm();
	}
	
	@Then ("^I click on Done button under subform on Discharge sections$")
	public void I_click_on_Done_button_under_subform_on_Discharge_sections()
	{
		dischargecarlform.IclickonDonebuttonundersubformonDischargesections();
	}
	@Then("^I verify first question \"([^\"]*)\" under Discharge section$")
	public void I_Verify_First_Question_Under_Discharge_Section(String text) throws Throwable {
	    dischargecarlform.IVerifyFirstQuestionUnderDischargeSectionOnCarlForm(text);
	}

	@Then("^I verify \"([^\"]*)\" radio option for \"([^\"]*)\" under Discharge section$")
	public void I_Verify_Radio_Options_For_Under_Discharge_Section(String radio, String text) throws Throwable {
	    dischargecarlform.IVerifyRadioOptionForFirstQuestionUnderDischargeSectionOnCarlForm(radio, text);
	}
	
	@Then("^I verify second question \"([^\"]*)\" under Discharge section$")
	public void I_Verify_Second_Question_Under_Discharge_Section(String text) throws Throwable {
	    dischargecarlform.IVerifySecondQuestionUnderDischargeSectionOnCarlForm(text);
	}

	@Then("^I verify \"([^\"]*)\" dropdown for \"([^\"]*)\" under Discharge section$")
	public void I_Verify_Dropdown_For_Second_Question_under_Discharge_section(String text) throws Throwable {
	    dischargecarlform.IVerifyDropDownUnderSecondQuestionUnderDischargeSectionOnCarlForm(text);
	}

	@Then("^I verify the legal messages appears with an i icon under Discharge section$")
	public void i_verify_the_legal_messages_appears_with_an_i_icon_under_Discharge_section() throws Throwable {
	    dischargecarlform.IVerifyLegalMessageAppearsWithiIconUnderDischargeSectionOnCarlForm();
	}
	
	@Then("^I click on \"([^\"]*)\" button under subform on Discharge section$")
	public void I_Click_On_Button_Under_SubForm_On_Discharge_section(String button) throws Throwable {
	    dischargecarlform.IClickOnButtonUnderSubFormOnDischargeSectionOnCarlForm(button);
	}
	
	@Then("^I enter \"([^\"]*)\" and select location in the Discharge Location search box$")
	public void I_Enter_And_Selct_Location_In_DischargeLocation_Under_SubForm_On_Discharge_section(String text) throws Throwable {
	    dischargecarlform.IEnterAndSelectDischargeLocationeUnderSubFormOnDischargeSectionOnCarlForm(text);
	}
	
	@Then("^I click on Calendar Icon On Discharge date under subform on Discharge section$")
	public void I_Click_On_CalendarIcon_On_DischargeDate_Under_SubForm_On_Discharge_section() throws Throwable {
	    dischargecarlform.IClickOnCalednarIconOnDischargeDateUnderSubFormOnDischargeSectionOnCarlForm();
	}    
	
	@Then ("^I select \"([^\"]*)\" with logic \"([^\"]*)\" \"([^\"]*)\" days on Calendar Discharge Date under subform on Discharge section$")
	public void I_select_admission_with_logic_counter_Date_on_Calendar_Discharge_Date_under_subform_on_Discharge_section(String admission,String counter,int days) throws Throwable {
		 dischargecarlform.IselectadmissionwithlogiccounterDateonCalendarDischargeDateundersubformonDischargesection(days);
	}
	
	@Then("^I verify User should not get an error message on adding a past date in the discharge date section$")
	public void I_verify_User_should_not_get_an_error_message_on_adding_a_past_date_in_the_discharge_date_section()
	{
		dischargecarlform.IverifyUsershouldnotgetanerrormessageonaddingapastdateinthedischargedatesection();
	}
	
	
	@Then("^I select todays Date on Calendar Discahrge Date under subform on Discharge section$")
	public void I_Select_TodaysDate_On_Calendar_DischargeDate_Under_SubForm_On_Discharge_section() throws Throwable {
	    dischargecarlform.ISelectTodaysDateOnCalednarOnDischargeDateUnderSubFormOnDischargeSectionOnCarlForm();
	} 
	
	@Then("^I verify \"([^\"]*)\" subform field is not appearing under Recommendation on Discharge section$")
	public void I_Verify_Subform_Field_Is_Not_Appearing_Under_Recommendation_On_Discharge_Section(String subForm) throws Throwable {
		dischargecarlform.IVerifySubFormFieldNotAppearingUnderRecommendationOnDischargeSectionOnCarlForm(subForm);	
	}
	
	@Then("^I Verify that Clicking done should show a read only field with the information filled$")
	public void I_Verify_that_Clicking_done_should_show_a_read_only_field_with_the_information_filled()
	{
		dischargecarlform.IVerifythatClickingdoneshouldshowareadonlyfieldwiththeinformationfilled();
	}
	
	@Then ("^I verify the correct \"([^\"]*)\" \"([^\"]*)\" which user has selected by the time of filling the form should appearing after saving the done form$")
	public void I_verify_the_correct_care_setting_which_user_has_selected_by_the_time_of_filling_the_form_should_appearing_after_saving_the_done_form(String variable,String value)
	{
		dischargecarlform.Iverifythecorrectvalueforheaderwhichuserhasselectedbythetimeoffillingtheformshouldappearingaftersavingthedoneform(variable,value);
	}
	
	@Then ("^I click on edit button to update the values of discharge subform under discharge test in Carl form$")
	public void I_click_on_edit_button_to_update_the_values_of_discharge_subform_under_discharge_test_in_Carl_form()
	{
		dischargecarlform.IclickoneditbuttontoupdatethevaluesofdischargesubformunderdischargetestinCarlform();
	}
	
	@Then ("^I verify user should be able to navigate to the read only form and no server error should appear on Discharge section$")
	public void I_verify_user_should_be_able_to_navigate_to_the_read_only_form_and_no_server_error_should_appear_on_Discharge_section()
	{
		dischargecarlform.IverifyusershouldbeabletonavigatetothereadonlyformandnoservererrorshouldappearonDischargesection();
	}
	
	@Then ("^I will wait to see the \"([^\"]*)\" \"([^\"]*)\" appears on the transition table on the Patient Summary page$")
	public void I_will_wait_to_transition_no_appears_on_the_transition_table_on_the_Patient_Summary_page(String transitiontype,int transition_no)
	{
		dischargecarlform.IwillwaittoseetransitionnoappearsonthetransitiontableonthePatientSummarypage(transition_no);
	}
	
	@Then("^I will wait to see column \"([^\"]*)\" header \"([^\"]*)\" \"([^\"]*)\" appears in transition column \"([^\"]*)\" on transitions table on Patient Summary Page$")
	public void I_will_wait_to_see_value_appears_in_transition_column_on_transitions_table(int column,String variable,String value,int transition_no)
	{
		dischargecarlform.Iwillwaittoseevalueappearsintransitioncolumnontransitionstable(column,value,transition_no);
	}
	
	@Then ("^I verify a legal message should appear when Carl recommendation field show Home with Limited Services$")
	public void legal_message_should_appear_when_Carl_recommendation() throws Throwable
	{
		dischargecarlform.legalmessageshouldappearwhenCarlrecommendation();
	}
	
}
