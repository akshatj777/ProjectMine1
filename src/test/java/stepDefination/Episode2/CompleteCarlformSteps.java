package stepDefination.Episode2;

import com.remedy.Episode2.CompleteCarlform;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;

public class CompleteCarlformSteps extends DriverScript {

	CompleteCarlform completecarl = new CompleteCarlform(driver);

	@Then("^I verify CARL buttons appears on the patient summary$")
	public void I_verify_CARL_buttons_appears_on_the_patient_summary() throws Throwable {
		completecarl.IverifyCARLbuttonsappearsonthepatientsummary();
	}

	@Then("^I close the patient summary Page$")
	public void I_close_the_patient_summary_Page() throws Throwable {
		completecarl.IclosethepatientsummaryPage();
	}

	@Then("^I verify CARL button is appearing on the patient card or not$")
	public void I_verify_CARL_button_is_appearing_on_the_patient_card_or_not() throws Throwable {
		completecarl.IverifyCARLbuttonisappearingonthepatientcardornot();
	}

	@Then("^I select the button to delete the transition$")
	public void I_select_on_the_button_to_delete_the_transition() throws Throwable {
		completecarl.Iselectonthebuttontodeletethetransition();
	}

	@Then("^I click on the button to delete the transition$")
	public void I_click_on_the_button_to_delete_the_transition() throws Throwable {
		completecarl.Iclickonthebuttontodeletethetransition();
	}

	@Then("^I click on Ok to delete the transition$")
	public void I_click_on_Ok_to_delete_the_transition() throws Throwable {
		completecarl.IclickonOktodeletethetransition();
	}

	@Then("^I Verify that Clicking on Complete CARL button Carl form should appear as a takeover page$")
	public void I_Verify_that_Clicking_on_Complete_CARL_button_Carl_form_should_appear_as_a_takeover_page() throws Throwable {
		completecarl.IVerifythatClickingonCompleteCARLbuttonCarlformshouldappearasatakeoverpage();
	}

	@Then("I Verify that Carl form should appear with White bar with Patient Name \"([^\"]*)\" \"([^\"]*)\" and x icon on the page$")
	public void I_Verify_that_Carl_form_should_appear_with_White_bar_with_Patient_Name_Last_First_name_and_x_icon_on_the_page(String lastname, String firstname) throws Throwable {
		completecarl.IVerifythatCarlformshouldappearwithWhitebarwithPatientNameLastFirstnameandxicononthepage(lastname,firstname);
	}

	@Then("^I Verify that Carl form should appear with ([^\"]*) link$")
	public void I_Verify_Links_Under_CarlForm_CaregiverSection(String link) throws Throwable {
		completecarl.IVerifyLinksUnderCarlFormCaregiverSection(link);
	}

	@Then("^I Verify that Carl form should appear Left navigator displaying four sections$")
	public void I_Verify_that_Carl_form_should_appear_Left_navigator_displaying_four_sections() throws Throwable {
		completecarl.IVerifythatCarlformshouldappearLeftnavigatordisplayingfoursections();
	}

	@Then("^I verify that ([^\"]*) should appear on takeover page$")
	public void I_Verify_CapableCaregiver_question(String question) throws Throwable {
		completecarl.IVerifyThatDoesthePatientHaveACapableCaregiverShouldAppearOnTakeoverPage(question);
	}

	@Then("^I verfiy that ([^\"]*) option is present under Does the patient have a capable caregiver$")
	public void I_Verify_that_option_present_below_CapableCaregiver_question(String option) throws Throwable {
		completecarl.IVerifythatOptionsShouldbePresentBelowCapableCaregiverQuestion(option);
	}

	@Then("^I click on ([^\"]*) option under Does the patient have a capable caregiver$")
	public void I_ClickOn_Option_Under_DoesThePatientHaveACapableCaregiver_question(String text) throws Throwable {
		completecarl.IClickOnOptionsUnderDoesThePatientHaveACapableCaregiverQuestioin(text);
	}

	@Then("^I verify that Care Network Member drop down should appear under Choose Caregiver section in Caregiver on takeover page$")
	public void I_Verify_That_CareNetworkMember_DropDown_Should_Appear_Under_ChooseCaregiverSection() throws Throwable {
		completecarl.IVerifyThatCareNetworkMemberDropDwonAppearsUnderChooseCaregiverSection();
	}

	@And("^I verify Select should appear in Care Network Member dropdwon placeholder$")
	public void I_Verify_Select_PlaceholderText_In_CareNetworkMember_DropDwon_UnderChooseCaregiver() throws Throwable {
		completecarl.IVerifyPlaceholderTextiCarenNetworkMemberDropDwonUnderChooseCaregiver();
	}

	@Then("^I click on Care Network Members dropdown under Choose Caregiver$")
	public void I_Click_On_CareNetworkMembers_Dropdown() throws Throwable {
		completecarl.IClickOnCareNetworkMembersDropdownUnderChooseCaregiver();
	}

	@Then("^I select \"([^\"]*)\" associated Caregiver from the dropdown$")
	public void I_Select_User_Associated_To_Caregiver_From_The_Dropdown(String name) throws Throwable {
		completecarl.ISelectTheAssociatedCaregiverFromTheDropdown(name);
	}

	@Then("^I verify the \"([^\"]*)\" is populated in Care Network Member dropdown$")
	public void I_Verify_Selected_User_Appears_On_Dropdown_CareNetworkMember(String name) throws Throwable {
		completecarl.IVerifySelectedUserAppearsOnTheDropdownInCareNetworkMembers(name);
	}

	@Then("^I verify the \"([^\"]*)\" on caregiver information card$")
	public void I_Verify_Username_Appears_On_CaregiverInformation_Card(String name) throws Throwable {
		completecarl.IVerifyNameOnCaregiverInformationCard(name);
	}

	@Then("^I verify \"([^\"]*)\" on caregiver information card$")
	public void I_Verify_Email_Appears_On_CaregiverInformation_Card(String email) throws Throwable {
		completecarl.IVerifyEmailOnCaregiverInformationCard(email);
	}

	@Then("^I verify \"([^\"]*)\" number on caregiver information card$")
	public void I_Verify_PhoneNumber_Appears_On_CaregiverInformation_Card(String phone) throws Throwable {
		completecarl.IVerifyPhoneOnCaregiverInformationCard(phone);
	}

	@Then("^I verify that Add Caregiver link should appear under Choose Caregiver section in Caregiver on takeover page$")
	public void I_Verify_That_AddCaregiverLink_Should_Appear_Under_ChooseCaregiverSection() throws Throwable {
		completecarl.IVerifyAddCaregiverLinkAppearsUnderChooseCaregiverSection();
	}

	@Then("^I verify that Care Network Member drop down should not appear under Choose Caregiver$")
	public void I_Verify_That_CareNetworkMember_DropDown_Should_Not_Appear_Under_ChooseCaregiverSection() throws Throwable {
		completecarl.IVerifyThatCareNetworkMemberDropDwonDoesNotAppearUnderChooseCaregiverSection();
	}

	@Then("^I verify that Add Caregiver link should not appear under Choose Caregiver$")
	public void I_Verify_That_AddCaregiverLink_Should_Not_Appear_Under_ChooseCaregiverSection() throws Throwable {
		completecarl.IVerifyAddCaregiverLinkDeosNotAppearUnderChooseCaregiverSection();
	}

	@Then("^I hover on i icon present on ([^\"]*) on TakeOver page$")
	public void I_hover_on_icon_present_on_TakeOver_page(String icon) throws Throwable {
		completecarl.IHoverOn_i_IconOnTakeOverPage(icon);
	}

	@Then("^I Verify the text hovering i icon on caregiver$")
	public void I_Verify_the_text_hovering_icon_on_caregiver() throws Throwable {
		completecarl.IVerifyTheTextHoverOnCaregiver();
	}

	@Then("^I Click on ([^\"]*) on takeover page$")
	public void I_Click_on_Anticipated_Discharge_Needs_on_takeover_page(String text) throws Throwable {
		completecarl.IClickOnAnticpatedDischargeNeeds(text);
	}

	@Then("^I Click on ([^\"]*) on Anticipated Discharge Needs page$")
	public void I_Click_on_Physical_therapy_on_Anticipated_Discharge_Needs_page(String text) throws Throwable {
		completecarl.IClickOnAnticpatedDischargeNeeds(text);
	}

	@Then("^I Verify the text hovering i icon on Patients Restoration Potential$")
	public void I_Verify_the_text_hovering_icon_on_Patients_Restoration_Potential() throws Throwable {
		completecarl.IVerifyTheTextHoverOnPatientsRestorationPotential();
	}

	@Then("^I click on ([^\"]*) on navigation bar on patient summary page$")
	public void I_click_on_CareTeam_onNavigationBar_On_PatientSummaryPage(String text) throws Throwable {
		completecarl.IClickOnCareTeamOnNavBarOnPatientSummaryPage(text);
	}

	@And("^I click on setting icon to remove the patient under Care Team$")
	public void I_Click_On_Setting_Icon_To_RemovePatient_Under_CareTeam() throws Throwable {
		completecarl.IClickOnSettingIconToRemovePatientUnderCareTeam();
	}

	@And("^I click On Remove to delete the patient$")
	public void I_Click_On_Remove_to_delete_the_patient() throws Throwable {
		completecarl.IClickOnRemoveToDeleteThePatient();
	}

	@And("^I click on OK button to delete the patient$")
	public void I_Click_On_OK_button_To_Delete_ThePatient() throws Throwable {
		completecarl.IClickOnOkToDeleteThePatient();
	}

	@And("^I click on Add Caregiver link under Choose Caregiver$")
	public void I_Click_On_Add_Caregiver_link_Under_ChooseCaregiver() throws Throwable {
		completecarl.IClickOnAddCaregiverLinkUnderChooseCaregiver();
	}

	@Then("^I verify first name is mandatory field to a create Caregiver$")
	public void I_Verify_FirstName_Is_MandatoryField_To_Create_Caregiver() throws Throwable {
		completecarl.IVerifyFirstNameIsMandatoryFieldToCreateCaregiver();
	}

	@Then("^I verify last name is mandatory field to a create Caregiver$")
	public void I_Verify_LastName_Is_MandatoryField_To_Create_Caregiver() throws Throwable {
		completecarl.IVerifyLastNameIsMandatoryFieldToCreateCaregiver();
	}

	@Then("^I verify ([^\"]*) field to create Caregiver$")
	public void I_Verify_Field_To_Create_Caregiver(String text) throws Throwable {
		completecarl.IVerifyFieldLabelToCreateCaregiver(text);
	}

	@Then("^I verify create button is enabled$")
	public void I_Verify_Create_Button_Is_Enabled() throws Throwable {
		completecarl.IVerifyCreateButtonIsEnabled();
	}

	@Then("^I verify create button is disabled$")
	public void I_Verify_Create_Button_Is_Disabled() throws Throwable {
		completecarl.IVerifyCreateButtonIsDisabled();
	}

	@Then("^I verify the label dropdown under Relationship field$")
	public void I_Verify_The_Label_Dropdown_Under_Relationship() throws Throwable {
		completecarl.IVerifyTheLabelDropdownUnderRelationship();
	}

	@Then("^I enter \"([^\"]*)\" in email field$")
	public void I_Enter_Email_To_Create_Caregiver(String email) throws Throwable {
		completecarl.IEnterEmailToCreateCaregiver(email);
	}

	@Then("^I verify ([^\"]*) option in primary phone dropdown$")
	public void I_Verify_Options_In_PrimaryPhone_Dropdown(String text) throws Throwable {
		completecarl.IVerifyOptionsInPrimaryPhoneDropdown(text);
	}

	@Then("^I verify Home should be as default option$")
	public void I_Verify_Home_Shouldbe_Default_Option() throws Throwable {
		completecarl.IVerifyHomeShouldbeDefaultOptionForPrimaryPhoneOption();
	}

	@Then("^I enter \"([^\"]*)\" in Primary Phone field$")
	public void I_Enter_PrimaryPhone_To_Create_Caregiver(String phone) throws Throwable {
		completecarl.IEnterPrimaryPhoneToCreateCaregiver(phone);
	}

	@Then("^I click on ([^\"]*) button for Additional phone number to Create Caredriver$")
	public void I_Click_On_Button_For_Additional_PhoneNumber_To_Create_Caredriver(String phone) throws Throwable {
		completecarl.IClickOnAddPhoneButtonToCreateCaregiver(phone);
	}

	@Then("^I Enter \"([^\"]*)\" and \"([^\"]*)\" on Add Caregiver form$")
	public void I_Enter_FirstName_and_LastName_On_AddCaregiverForm(String f_Name, String l_Name) throws Throwable {
		completecarl.IEnterFisrtAndLastNameOnCarlFormAddCaregiver(f_Name, l_Name);
	}

	@Then("^I click on Create button to add Caregiver$")
	public void I_Click_On_CreateButton_To_AddCaregiver() throws Throwable {
		completecarl.IClickCreateButtonToAddCaregiver();
	}

	@Then("^I click on close button in dropdown under Choose Caregiver$")
	public void I_Click_On_Close_Button_In_dropdown_Under_Choose_Caregiver() throws Throwable {
		completecarl.IClickOnCloseButtonInDropdownUnderChooseCaregiver();
	}

	@Then("^I click on Anticipated Discharge Needs on side menu option$")
	public void I_ClickOn_AnticipatedDischargeNeeds_On_SideMenuOption() throws Throwable {
		completecarl.IClickOnAnticipatedDischargeNeedsOnSideMenuOption();
	}
	
	@Then ("^I will wait to see the CARL section \"([^\"]*)\" header appears on the CARL form$")
	public void I_will_wait_to_see_the_CARL_section_header_appears_on_the_CARL_form(String text) throws Throwable {
		completecarl.IwillwaittoseetheCARLsectionheaderappearsontheCARLform();
	}
	
}
