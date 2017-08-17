package stepDefination.Episode2;

import java.util.List;

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
	
	@Then ("I enter \"([^\"]*)\" Discharge location in the Discharge Location search box$")
    public void I_enter_Discharge_location_in_the_Discharge_Location_search_box(String text)
    {
		dischargecarlform.IenterDischargelocationintheDischargeLocationsearchbox(text);
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
	
	@Then ("^I verify SNF ELOS message should appear under the Discharge Date on Discharge Section$")
	public void I_verify_SNF_ELOS_message_should_appear_under_the_Discharge_Date()
	{
		dischargecarlform.IverifySNFELOSmessageshouldappearundertheDischargeDate();
	}
	
	@Then ("^I verify SNF ELOS range that should be calculated by DRG that triggers the current active episode$")
	public void I_verify_SNF_ELOS_range_that_should_be_calculated_by_DRG_that_triggers_the_current_active_episode()
	{
		dischargecarlform.IverifySNFELOSrangethatshouldbecalculatedbyDRGthattriggersthecurrentactiveepisode();
	}

	@Then ("^I verify user should see the appropriate \"([^\"]*)\" based on Actual Care Setting chosen and the Restoration Potential chosen$")
	public void I_verify_user_should_see_the_appropriate_message_based_on_Actual_Care_Setting_chosen_and_the_Restoration_Potential_chosen(String message)
	{
		dischargecarlform.IverifyusershouldseetheappropriatemessagebasedonActualCareSettingchosenandtheRestorationPotentialchosen(message);
	}
	
	@Then ("^I verify physical therapy recommendation message should appear in green color$")
	public void I_verify_physical_therapy_recommendation_message_should_appear_in_green_color()
	{
		dischargecarlform.Iverifyphysicaltherapyrecommendationmessageshouldappearingreencolor();
	}
	
	@Then ("^I verify \"([^\"]*)\" appears in the dropdown to select the Discharge Location under Recommendation on Discharge Section$")
	public void I_verify_no_data_appears_in_the_dropdown_to_select_the_Discharge_Location_under_Recommendation_on_Discharge_Section(String data)
	{
		dischargecarlform.IverifynodataappearsinthedropdowntoselecttheDischargeLocationunderRecommendationonDischargeSection(data);
	}
	
	@Then ("^I verify Actual Discharge Location search should determined by Care Setting$")
	public void I_verify_Actual_Discharge_Location_search_should_determined_by_Care_Setting()
	{
		dischargecarlform.IverifyActualDischargeLocationsearchshoulddeterminedbyCareSetting();
	}
	
	@Then ("^I verify results should be configured with list of facilities after entering characters on the Discharge Location field$")
	public void I_verify_results_should_be_configured_with_list_of_facilities_after_entering_characters_on_the_Discharge_Location_field()
	{
		dischargecarlform.IverifyresultsshouldbeconfiguredwithlistoffacilitiesafterenteringcharactersontheDischargeLocationfield();
	}
	
	@Then ("^I close the Discharge Location dropdown on Discharge Section$")
	public void I_close_the_Discharge_Location_dropdown_on_Discharge_Section()
	{
		dischargecarlform.IclosetheDischargeLocationdropdownonDischargeSection();
	}
	
	@Then ("^I verify Care type and Discharge location field should get refreshed as per new Care setting$")
	public void I_verify_Care_type_and_Discharge_location_field_should_get_refreshed_as_per_new_Care_setting()
	{
		dischargecarlform.IverifyCaretypeandDischargelocationfieldshouldgetrefreshedaspernewCaresetting();
	}
	
    @Then ("^I verify discharge form should provide \"([^\"]*)\" and the \"([^\"]*)\" if the Actual Care Setting does not match the CARL recommendation proposed facility$")
    public void I_verify_discharge_form_should_provide_fields_if_the_Actual_Care_Setting_does_not_match_the_CARL_recommendation_proposed_facility(String data1,String data2)
    {
    	dischargecarlform.IverifydischargeformshouldprovidefieldsiftheActualCareSettingdoesnotmatchtheCARLrecommendationproposedfacility(data1,data2);
    }
    
    @Then ("^I verify question should state \"([^\"]*)\" under Recommendation on Discharge section$")
    public void I_verify_question_should_state_message_under_Recommendation_on_Discharge_section(String text)
    {
    	dischargecarlform.IverifyquestionshouldstatemessageunderRecommendationonDischargesection(text);
    }
    
    @Then ("^I verify that User should be able to provide additional comments \"([^\"]*)\" in a free text box$")
    public void I_verify_that_User_should_be_able_to_provide_additional_comments(String comment)
    {
    	dischargecarlform.IverifythatUsershouldbeabletoprovideadditionalcomments(comment);
    }
    
    @Then ("^I verify user should be able to provide upto 250 characters under Additional Comments$")
    public void I_verify_user_should_be_able_to_provide_upto_250_characters_under_Additional_Comments()
    {
    	dischargecarlform.Iverifyusershouldbeabletoprovideupto250charactersunderAdditionalComments();
    }
    
    @Then("^I verify that User can view icon for another Reason \"([^\"]*)\" under disagreement under Recommendation on Discharge section$")
    public void I_verify_that_User_can_add_Reason(String reason)
    {
    	dischargecarlform.IverifythatUsercanaddReason(reason);
    }
    @Then ("^I select the \"([^\"]*)\" from the \"([^\"]*)\" dropdown \"([^\"]*)\" for \"([^\"]*)\" under Recommendation on Discharge section$")
    public void I_select_dropdown_value_under_Recommendation(String value,String variable,int i,String reason)
    {
    	dischargecarlform.IselectdropdownvalueunderRecommendation(value,variable,i,reason);
    }
    
    @Then ("^I click on Reason \"([^\"]*)\" icon under disagreement under Recommendation on Discharge section$")
    public void I_click_on_Reason_icon_under_disagreement_under_Recommendation_on_Discharge_section(int i)
    {
    	dischargecarlform.IclickonReasoniconunderdisagreementunderRecommendationonDischargesection();
    }
    
    @Then ("^I verify that User cannot view icon for another Reason \"([^\"]*)\" under disagreement under Recommendation on Discharge section$")
    public void I_verify_that_User_cannot_view_icon_for_another_Reason()
    {
    	dischargecarlform.I_verify_that_User_cannot_view_icon_for_another_Reason();
    }
    
    @Then ("^I verify that user should be able to remove additional reason which is added$")
    public void I_verify_that_user_should_be_able_to_remove_additional_reason_which_is_added()
    {
    	dischargecarlform.Iverifythatusershouldbeabletoremoveadditionalreasonwhichisadded();
    }
    
    @Then ("^I verify that upon selecting any value to Actual care setting field presence of \"([^\"]*)\" question is appearing$")
    public void I_verify_that_upon_selecting_any_value_to_Actual_care_setting_field_presence_of_question_is_appearing(String question)
    {
    	dischargecarlform.IverifythatuponselectinganyvaluetoActualcaresettingfieldpresenceofquestionisappearing(question);
    }
    
    @Then("^I click \"([^\"]*)\" radio option for \"([^\"]*)\" under Discharge section$")
	public void I_click_Radio_Options_For_Under_Discharge_Section(String radio, String text) throws Throwable {
	    dischargecarlform.IClickRadioOptionForFirstQuestionUnderDischargeSectionOnCarlForm(radio, text);
	}
    
    @Then ("^I verify user should be able to select the radio button once selected$")
    public void I_verify_user_should_be_able_to_select_the_radio_button_once_selected()
    {
    	dischargecarlform.Iverifyusershouldbeabletoselecttheradiobuttononceselected();
    }
    
    @Then ("^I verify user should not be able to un-select the radio button once selected$")
    public void I_verify_user_should_not_be_able_to_unselect_the_radio_button_once_selected()
    {
    	dischargecarlform.Iverifyusershouldnotbeabletounselecttheradiobuttononceselected();
    }
    
    @Then ("^I verify Placeholder should say \"([^\"]*)\" from the \"([^\"]*)\" dropdown \"([^\"]*)\" under Recommendation on Discharge section$")
    public void I_verify_Placeholder_should_say_Select_from_the_Who_disagrees_dropdown_under_Recommendation_on_Discharge_section(String placeholder,String dropdowntext,String i)
    {
    	dischargecarlform.IverifyPlaceholdershouldsaySelectfromtheWhodisagreesdropdownunderRecommendationonDischargesection(placeholder,i);
    }
    @Then ("^I verify user should be able to select any options from following dropdown from the \"([^\"]*)\" dropdown \"([^\"]*)\" under Recommendation on Discharge section$")
    public void I_verify_user_should_be_able_to_select_any_options_from_following_dropdown_from_the_Who_disagrees_dropdown_under_Recommendation_on_Discharge_section(String dropdowntext,int j, List<String> dropdownvalues)
    {
        dischargecarlform.IverifyusershouldbeabletoselectanyoptionsfromfollowingdropdownfromtheWhodisagreesdropdownunderRecommendationonDischargesection(j,dropdownvalues);
    }
    
    @Then ("^I verify that Care Type for the Actual Care Setting should include the following$")
    public void I_verify_that_Care_Type_for_the_Actual_Care_Setting_should_include_the_following()
    {
    	dischargecarlform.IverifythatCareTypefortheActualCareSettingshouldincludethefollowing();
    }
}
