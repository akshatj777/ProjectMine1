package stepDefination.Episode2;

import com.remedy.Episode2.CompleteCarlform;

import com.remedy.Episode2.PatientClinicalDocuments;

import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class CompleteCarlformSteps extends DriverScript{

	CompleteCarlform completecarl=new CompleteCarlform(driver);
	
	@Then ("^I verify CARL buttons appears on the patient summary$")
	public void I_verify_CARL_buttons_appears_on_the_patient_summary()
	{
		completecarl.IverifyCARLbuttonsappearsonthepatientsummary();
	//button[contains(text(),'Complete CARL')]
	}
	@Then ("^I close the patient summary Page$")
	public void I_close_the_patient_summary_Page()
	{
		completecarl.IclosethepatientsummaryPage();
	}
	
	@Then ("^I verify CARL button is appearing on the patient card or not$")
	public void I_verify_CARL_button_is_appearing_on_the_patient_card_or_not()
	{
		completecarl.IverifyCARLbuttonisappearingonthepatientcardornot();
	}
	

		@Then ("^I select the button to delete the transition$")
	public void I_select_on_the_button_to_delete_the_transition()
	{
		completecarl.Iselectonthebuttontodeletethetransition();
	}
	
	
	 @Then ("^I click on the button to delete the transition$")
	public void  I_click_on_the_button_to_delete_the_transition()
	{
		 completecarl.Iclickonthebuttontodeletethetransition();
	}
	 
	 @Then ("^I click on Ok to delete the transition$")
	 public void  I_click_on_Ok_to_delete_the_transition()
	 {
		 completecarl.IclickonOktodeletethetransition();
	 }
	 
	 @Then ("^I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page$")
	 public void I_Verify_that_Clicking_on_Complete_CARL_button_Carl_form_should_appear_as_a_takeover_page()
	 {
		 completecarl.IVerifythatClickingonCompleteCARLbuttonCarlformshouldappearasatakeoverpage();
	 }
			 
	 @Then("I Verify that Carl form should appear with White bar with Patient Name \"([^\"]*)\" \"([^\"]*)\" and x icon on the page$")
	 public void I_Verify_that_Carl_form_should_appear_with_White_bar_with_Patient_Name_Last_First_name_and_x_icon_on_the_page(String lastname,String firstname)
	 {
		 completecarl.IVerifythatCarlformshouldappearwithWhitebarwithPatientNameLastFirstnameandxicononthepage(lastname,firstname);
	 }
	 
	 @Then ("^I Verify that Carl form should appear with ([^\"]*) link$")
	 public void I_Verify_Links_Under_CarlForm_CaregiverSection(String link)
	 {
		 completecarl.IVerifyLinksUnderCarlFormCaregiverSection(link);
	 }
	 
	 
	 @Then ("^I Verify that Carl form should appear Left navigator displaying four sections$")
	 public void I_Verify_that_Carl_form_should_appear_Left_navigator_displaying_four_sections()
	 {
		 completecarl.IVerifythatCarlformshouldappearLeftnavigatordisplayingfoursections();	
	 }

	 @Then ("^I verify that ([^\"]*) should appear on takeover page$")
	 public void I_Verify_CapableCaregiver_question(String question)
	 {
		 completecarl.IVerifyThatDoesthePatientHaveACapableCaregiverShouldAppearOnTakeoverPage(question);
	 }
	 
	 @Then ("^I verfiy that ([^\"]*) option is present under Does the patient have a capable caregiver$")
	 public void I_Verify_that_option_present_below_CapableCaregiver_question(String option)
	 {
		 completecarl.IVerifythatOptionsShouldbePresentBelowCapableCaregiverQuestion(option);
	 }
	 
	 @Then ("^I click on ([^\"]*) option under Does the patient have a capable caregiver$")
	 public void I_ClickOn_Option_Under_DoesThePatientHaveACapableCaregiver_question(String text)
	 {
		 completecarl.IClickOnOptionsUnderDoesThePatientHaveACapableCaregiverQuestioin(text);
	 }
	 
	 @Then ("^I verify that Care Network Member drop down should appear under Choose Caregiver section in Caregiver on takeover page$")
	 public void I_Verify_That_CareNetworkMember_DropDown_Should_Appear_Under_ChooseCaregiverSection()
	 {
		 completecarl.IVerifyThatCareNetworkMemberDropDwonAppearsUnderChooseCaregiverSection();
	 }
	 
	 @Then ("^I verify that Add Caregiver link should appear under Choose Caregiver section in Caregiver on takeover page$")
	 public void I_Verify_That_AddCaregiverLink_Should_Appear_Under_ChooseCaregiverSection()
	 {
		 completecarl.IVerifyAddCaregiverLinkAppearsUnderChooseCaregiverSection();
	 }
	 
	 @Then ("^I verify that Care Network Member drop down should not appear under Choose Caregiver$")
	 public void I_Verify_That_CareNetworkMember_DropDown_Should_Not_Appear_Under_ChooseCaregiverSection()
	 {
		 completecarl.IVerifyThatCareNetworkMemberDropDwonDoesNotAppearUnderChooseCaregiverSection();
	 }
	 
	 @Then ("^I verify that Add Caregiver link should not appear under Choose Caregiver$")
	 public void I_Verify_That_AddCaregiverLink_Should_Not_Appear_Under_ChooseCaregiverSection()
	 {
		 completecarl.IVerifyAddCaregiverLinkDeosNotAppearUnderChooseCaregiverSection();
	 }
	 
	 @Then ("^I hover on i icon present on ([^\"]*) on TakeOver page$")
	 public void I_hover_on_icon_present_on_TakeOver_page(String icon)
	 {
		 completecarl.IHoverOn_i_IconOnTakeOverPage(icon);
	 }	 
	 
	 @Then ("^I Verify the text hovering i icon on caregiver$")
	 public void I_Verify_the_text_hovering_icon_on_caregiver()
	 {
		 completecarl.IVerifyTheTextHoverOnCaregiver();
	 }
	 
	 @Then ("^I Click on ([^\"]*) on takeover page$")
	 public void I_Click_on_Anticipated_Discharge_Needs_on_takeover_page(String text)
	 {
		 completecarl.IClickOnAnticpatedDischargeNeeds(text);
	 }
	 
	 @Then ("^I Click on ([^\"]*) on Anticipated Discharge Needs page$")
	 public void I_Click_on_Physical_therapy_on_Anticipated_Discharge_Needs_page(String text)
	 {
		 completecarl.IClickOnAnticpatedDischargeNeeds(text);
	 }
	 
	 @Then ("^I Verify the text hovering i icon on Patients Restoration Potential$")
	 public void I_Verify_the_text_hovering_icon_on_Patients_Restoration_Potential()
	 {
		 completecarl.IVerifyTheTextHoverOnPatientsRestorationPotential();   
	 }
	 
	 @Then("^I click on ([^\"]*) on navigation bar on patient summary page$")
	 public void I_click_on_CareTeam_onNavigationBar_On_PatientSummaryPage(String text)
	 {
		 completecarl.IClickOnCareTeamOnNavBarOnPatientSummaryPage(text);
	 }
	 
	 @And("^I click on setting icon to remove the patient under Care Team$")
	 public void I_Click_On_Setting_Icon_To_RemovePatient_Under_CareTeam()
	 {
		 completecarl.IClickOnSettingIconToRemovePatientUnderCareTeam();
	 }
	 
	 @And("^I click On Remove to delete the patient$")
	 public void I_Click_On_Remove_to_delete_the_patient()
	 {
		 completecarl.IClickOnRemoveToDeleteThePatient();
	 }
	 
	 @And("^I click on OK button to delete the patient$")
	 public void I_Click_On_OK_button_To_Delete_ThePatient()
	 {
		 completecarl.IClickOnOkToDeleteThePatient();
	 }
	 
	 @And("^I click on Add Caregiver link under Choose Caregiver$")
	 public void I_Click_On_Add_Caregiver_link_Under_ChooseCaregiver()
	 {
		 completecarl.IClickOnAddCaregiverLinkUnderChooseCaregiver();
	 }
	 
	 @Then("^I Enter FirstName and LastName on Add Caregiver form$")
	 public void I_Enter_FirstName_and_LastName_On_AddCaregiverForm()
	 {
		 completecarl.IEnterFisrtAndLastNameOnCarlFormAddCaregiver();
	 }
	 
	 @Then("^I click on Create button to add Caregiver$")
	 public void I_Click_On_CreateButton_To_AddCaregiver()
	 {
		 completecarl.IClickCreateButtonToAddCaregiver();
	 }
	 
	 @Then("^I click on close button in dropdown under Choose Caregiver$")
	 public void I_Click_On_Close_Button_In_dropdown_Under_Choose_Caregiver()
	 {
		 completecarl.IClickOnCloseButtonInDropdownUnderChooseCaregiver();
	 }
	 
	 @Then("^I click on Anticipated Discharge Needs on side menu option$")
	 public void I_ClickOn_AnticipatedDischargeNeeds_On_SideMenuOption()
	 {
		 completecarl.IClickOnAnticipatedDischargeNeedsOnSideMenuOption();
	 }
	 
}
	 
	 
	

