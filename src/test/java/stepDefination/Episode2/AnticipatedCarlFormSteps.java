package stepDefination.Episode2;

import com.remedy.Episode2.AnticipatedCarlForm;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class AnticipatedCarlFormSteps extends DriverScript {
	
	AnticipatedCarlForm anticipatedcarlform = new AnticipatedCarlForm(driver);
	
	@Then("^I verify \"([^\"]*)\" should appear on Anticipated Discharge Needs section$")
	public void I_Verify_SubTitleShould_Appear_On_AnticipatedDischargeNeeds_Section(String text) {
		anticipatedcarlform.IVerifySubTittleOnAnticipatedDischargeNeedsSection(text);
	}
	
	@Then("^I verify \"([^\"]*)\" checkbox appears under Therapies Needed on Anticipated Discharge Needs section$")
	public void I_Verify_CheckBox_Appear_Under_TherapiesNeeded_On_AnticipatedDischargeNeeds_Section(String text) {
		anticipatedcarlform.IVerifyTheCheckBoxOptionsForTherapiesNeededOnAnticipatedDischargeNeedsSection(text);
	}
	
	@Then("^I verify \"([^\"]*)\" checkbox appears under Transition of Care Needs on Anticipated Discharge Needs section$")
	public void I_Verify_CheckBox_Appear_Under_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds_Section(String text) {
		anticipatedcarlform.IVerifyTheCheckBoxOptionsForTransitionOfCareNeedsOnAnticipatedDischargeNeedsSection(text);
	}
	
	@Then("^I click \"([^\"]*)\" checkbox under Therapies Needed on Anticipated Discharge Needs section$")
	public void I_Click_CheckBox_For_TherapiesNeeded_On_AnticipatedDischargeNeedsSection(String checkbox){
		anticipatedcarlform.IClickOnCheckBoxUnderTherapiesNeededOnAnticipatedDischargeNeedsSection(checkbox);
	}
	
	@Then("^I verify \"([^\"]*)\" checkbox is clickable$")
	public void I_Verify_Enabled_CheckBox_For_TherapiesNeeded_On_AnticipatedDischargeNeedsSection(String checkbox){
		anticipatedcarlform.IVerifyTheEnabledCheckboxForTherapiesNeededOnAnticipatedDischargeNeedsSection(checkbox);
	}
	
	@Then("^I verify \"([^\"]*)\" checkbox is not clickable$")
	public void I_Verify_Disabled_CheckBox_For_TherapiesNeeded_On_AnticipatedDischargeNeedsSection(String checkbox){
		anticipatedcarlform.IVerifyTheDisabledCheckboxForTherapiesNeededOnAnticipatedDischargeNeedsSection(checkbox);
	}
	
	@Then("^I verify Patients Restoration Potential section on selecting PhysicalTherapy$")
	public void I_Verify_PatientsRstorationPotential_Section_On_Selecting_PhysicalTherapy(){
		anticipatedcarlform.IVerifyPatientsRestorationPotentialSectionOnSelectingPhysicalTherapy();
	}
	
	@Then("^I verify \"([^\"]*)\" text in place holder of Physical Therapy dropdown on Patients Restoration Potential$")
	public void I_Verify_Select_Text_In_PlaceHolder_Of_PhysicalTherapy_DropDown_On_PatientsRestorationPotential(String text){
		anticipatedcarlform.IVerifyTheSelectTextInPlaceHolderOfPhysicalTherapyDropDownOnAnticipatedDischargeNeeds(text);
	}
	
	@Then("^I click on Physical Therapy dropdown on Patients Restoration Potential$")
	public void I_Click_On_PhysicalTherapy_DropDown_On_PatientsRestorationPotential(){
		anticipatedcarlform.IClickOnPhysicalTherapyDropDownOnPatientRestorationPotentialSection();
	}
	
	@Then("^I verify \"([^\"]*)\" option in Physical Therapy dropdown on Anticipated Discharge Needs$")
	public void I_Verify_Options_In_PhysicalTherapy_DropDown_On_AnticipatedDischargeNeeds(String text){
		anticipatedcarlform.IVerifyTheOtionsInPhysicalTherapyDropDownOnAnticipatedDischargeNeeds(text);
	}
	
	@Then("^I select \"([^\"]*)\" in Physical Therapy dropdown on Anticipated Discharge Needs$")
	public void I_Select_Option_In_PhysicalTherapy_DropDown_On_AnticipatedDischargeNeeds(String text){
		anticipatedcarlform.ISelectTheOptionInPhysicalTherapyDropDownOnAnticipatedDischargeNeeds(text);
	}
	
	@Then("^I verify \"([^\"]*)\" is selected in Physical Therapy place holder on Anticipated Discharge Needs$")
	public void I_Verify_Option_Selected_I_nPhysicalTherapy_PlaceHolder_On_AnticipatedDischargeNeeds(String text){
		anticipatedcarlform.IVerifyOptionSelectedInPhysicalTherapyPlaceHolderOnAnticipatedDischargeNeeds(text);
	}
	
	@Then("^I select \"([^\"]*)\" checkbox for Transition of Care Needs on Anticipated Discharge Needs$")
	public void I_Select_Option_In_Checkbox_For_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String text){
		anticipatedcarlform.ISelectTheCheckBoxOptionUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(text);
	}
	
	@Then("^I uncheck \"([^\"]*)\" checkbox for Transition of Care Needs on Anticipated Discharge Needs$")
	public void I_UnCheck_Option_In_Checkbox_For_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String text){
		anticipatedcarlform.IUnCheckTheCheckBoxOptionUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(text);
	}
	
	@Then("^I verify upon select \"([^\"]*)\" checkbox sub field section appears for Transition of Care Needs$")
	public void I_Verify_Upon_Select_Checkbox_SubFieldSection_Appears_Under_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String text){
		anticipatedcarlform.IVeriyUponSelectTheCheckBoxOptionSubFieldSectionAppearUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(text);
	}
	
	@Then("^I verify on selecting \"([^\"]*)\" requierd field \"([^\"]*)\" appears for Transition of Care Needs$")
	public void I_Verify_Text_For_RequiredField_Upon_Selecting_Checkbox_Under_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String text, String label){
		anticipatedcarlform.IVeriyTextForRequiredFieldUponSelectingCheckBoxUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(text, label);
	}
	
	@Then("^I verify \"([^\"]*)\" radio option appears under \"([^\"]*)\" for Transition Care Needs$")
	public void I_Verify_Radio_Option_Appears_Field_Upon_Selecting_Checkbox_Under_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String radio, String text){
		anticipatedcarlform.IVeriyRadioOptionsUponSelectingCheckBoxUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(radio, text);
	}
	
	@Then("^I click \"([^\"]*)\" radio option under \"([^\"]*)\" for Transition Care Needs$")
	public void I_Click_Radio_Option_After_Selecting_Checkbox_Under_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String radio, String text){
		anticipatedcarlform.IClickRadioOptionAfterSelectingCheckBoxUnderTransitionOfCareNeedsOnAnticipatedDischargeNeeds(radio, text);
	}
	
	@Then("^I verify \"([^\"]*)\" radio option is checked under \"([^\"]*)\" for Transition Care Needs$")
	public void I_Verify_Checked_Radio_Option_UnderCheckbox_For_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String radio, String text){
		anticipatedcarlform.IVerifyCheckedRadioOptionUnderSelectedCheckBoxForTransitionOfCareNeedsOnAnticipatedDischargeNeeds(radio, text);
	}
	
	@Then("^I verify \"([^\"]*)\" radio option is not checked under \"([^\"]*)\" for Transition Care Needs$")
	public void I_Verify_UnChecked_Radio_Option_UnderCheckbox_For_TransitionOfCareNeeds_On_AnticipatedDischargeNeeds(String radio, String text){
		anticipatedcarlform.IVerifyUnCheckedRadioOptionUnderSelectedCheckBoxForTransitionOfCareNeedsOnAnticipatedDischargeNeeds(radio, text);
	}
	
}
