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
	
	@Then("^I select todays Date on Calendar Discahrge Date under subform on Discharge section$")
	public void I_Select_TodaysDate_On_Calendar_DischargeDate_Under_SubForm_On_Discharge_section() throws Throwable {
	    dischargecarlform.ISelectTodaysDateOnCalednarOnDischargeDateUnderSubFormOnDischargeSectionOnCarlForm();
	} 
	
	@Then("^I verify \"([^\"]*)\" subform field is not appearing under Recommendation on Discharge section$")
	public void I_Verify_Subform_Field_Is_Not_Appearing_Under_Recommendation_On_Discharge_Section(String subForm) throws Throwable {
		dischargecarlform.IVerifySubFormFieldNotAppearingUnderRecommendationOnDischargeSectionOnCarlForm(subForm);	
	}
}
