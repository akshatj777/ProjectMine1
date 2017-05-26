package stepDefination.Episode2;

import com.remedy.Episode2.DischargeCarlForm;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.Then;

public class DischargeCarlFormSteps extends DriverScript {
	DischargeCarlForm dischargecarlform = new DischargeCarlForm(driver);
	
	@Then("^I verify \"([^\"])*\" appears on Discharge section of carl form$")
	public void I_Verify_Subtitle_Field_Appears_under_on_Discharge_section(String text) throws Throwable {
	    dischargecarlform.IVerifySubtitleUnderDischargeSectionOnDishargeTabOfTheCarlForm(text);
	}
	
	@Then("^I verify \"([^\"]*)\" field under Next Site of Care on Discharge section$")
	public void I_Verify_Recommendation_Field_under_on_Discharge_section(String text) throws Throwable {
	    dischargecarlform.IVerifyRecommendationUnderDischargeSectionOnDishargeTabOfTheCarlForm(text);
	}

	@Then("^I verify \"([^\"]*)\" subform field under CARL Recommendation on Discharge section$")
	public void I_Verify_SUbform_Field_Under_CARL_Recommendation_On_Discharge_Section(String subForm) throws Throwable {
		dischargecarlform.IVerifySubFormFieldUnderCARLRecommendationOnDischargeSectionOnCarlForm(subForm);	
	}

	@Then("^I click on \"([^\"]*)\" subform dropdown under CARL Recommendation on Discharge section$")
	public void I_Click_On_Subform_Dropdown_Under_CARL_Recommendation_On_Discharge_Section(String text) throws Throwable {
		dischargecarlform.IClickOnSubFormDropDownUnderCARLRecommendationOnDischargeSectionOnCarlForm(text);	
	}

	@Then("^I select \"([^\"]*)\" in subform dropdown for \"([^\"]*)\" on Discharge section$")
	public void I_Select_Option_In_Subform_Dropdown_For_On_Discharge_Section(String dropdown, String subForm) throws Throwable {
	    dischargecarlform.ISelectOptionFromSubFormDropDownUnderCARLRecommendationOnDischargeSectionOnCarlForm(dropdown, subForm);
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
	
	
}
