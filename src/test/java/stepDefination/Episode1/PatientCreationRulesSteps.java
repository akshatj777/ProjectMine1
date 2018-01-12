package stepDefination.Episode1;

import com.remedy.episode1.PatientCreationRules;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class PatientCreationRulesSteps extends DriverScript {
	PatientCreationRules patientrules=new PatientCreationRules(driver);
	
	@Then("^I click on new button$")
	public void i_click_on_new_button_on_the_page() throws Throwable{
		patientrules.iClickOnNewButtonOnPatientRulesPage();
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the patient creation rule$")
	public void i_wait_untill_i_see_on_the_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@Then("^I fill in Name with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_enter_in_the_name_field_in_the_new_patient_creation_rule(String text) throws Throwable{
		patientrules.iEnterNameInNewPatientCreationRule(text);
	}
	
	@And("^I fill in Field with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_fill_in_field_with_on_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iFillInFieldWithOnPatientRuleCreationPage(text);
	}
	
	@And("^I fill in Value with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_fill_in_value_with_on_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iFillInValueWithOnPatientRuleCreationPage(text);
	}
	
	@And("^I fill in Priority with \"([^\"]*)\" on the new patient rule creation page$")
	public void i_fill_in_priority_with_on_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iFillInPriorityWithOnPatientRuleCreationPage(text);
	}
	
	@And("^I press \"([^\"]*)\" on the new patient rule creation page$")
	public void i_press_On_the_new_patient_rule_creation_page(String text) throws Throwable{
		patientrules.iClickOnSaveButtonOnPatientRuleCreationPage(text);
	}
	
	@And("^I will wait to see \"(.*)\"$")
	public void i_will_wait_to_see(String text) throws Throwable{
		patientrules.iWillWaitToSeeNewlyCreatedRule(text);
	}
	
	@And("I should see \"([^\"]*)\" label on \"([^\"]*)\" page")
	public void i_should_see_label_on_page(String text,String page) throws Throwable{
		patientrules.iVerifyLabelTextOnNewCreationPage(text, page);
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the Facility Free Text Mapping$")
	public void i_wait_untill_i_see_on_the_Facility_Free_Text_mapping(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@When("^I select HL7 Admit facility on New Facility Free Text Mapping page with \"([^\"]*)\"$")
	public void i_select_HL7_Admit_facility_on_New_Facility_Free_Text_Mapping_page_with(String text) throws Throwable{
		patientrules.iSelectAdmiTFacilityOnFreeTextMappingPage(text);
	}
	
	@And("^I select \"([^\"]*)\" from \"([^\"]*)\"$")
	public void i_select_from(String select,String text) throws Throwable{
		patientrules.iSelectFrom(select, text);
	}
	
	@And("^I fill in \"([^\"]*)\" with \"([^\"]*)\"$")
	public void i_fill_in_with(String selector,String text) throws Throwable{
		patientrules.iFillTextWith(selector, text);
	}
	
	@And("I select mapped discharge facility on New Facility Free Text Mapping page with \"([^\"]*)\"")
	public void i_select_mapped_discharge_facility_on_New_Facility_Free_Text_Mapping_page_with(String text) throws Throwable{
		patientrules.iSelectMappedDischargeFacility(text);
	}
	
	@And("^I press \"([^\"]*)\" on the new facility free text mapping page$")
	public void i_press_On_the_new_facility_free_text_mapping_page(String text) throws Throwable{
		patientrules.iClickOnSaveButtonOnPatientRuleCreationPage(text);
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the user creation page$")
	@Then("^I wait untill \"([^\"]*)\" text is appearing on the user list page$")
	public void i_wait_untill_i_see_on_the_user_creation_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@And("^I fill in \"([^\"]*)\" with \"([^\"]*)\" on register user page$")
	public void i_fill_in_with_on_register_user_page(String locator,String text) throws Throwable{
		patientrules.iFillInTextOnRegisterAUserPage(locator, text);
	}
	
	@And("^I fill in user email with \"([^\"]*)\" on register user page$")
	public void i_fill_in_user_email_with_on_registered_user_page(String text) throws Throwable{
		patientrules.iFillInUserEmailOnRegisterUserPage(text);
	}
	
	@And("^I fill in Password with \"([^\"]*)\" on registeres user page$")
	public void i_fill_in_password_with_on_registeres_user_page(String text) throws Throwable{
		patientrules.iFillInPasswordOnRegisterUserPage(text);
	}
	
	@And("^I fill in Confirm Password with \"([^\"]*)\" on register user page$")
	public void i_fill_in_confirm_password_with_on_registeres_user_page(String text) throws Throwable{
		patientrules.iFillInConfirmPasswordOnRegisterUserPage(text);
	}
	
	@And("^I press \"([^\"]*)\" on the register user page$")
	@Then("^I press \"([^\"]*)\" on the register clinician page$")
	public void i_press_on_register_user_page(String text) throws Throwable{
		patientrules.iClickOnSaveButtonOnPatientRuleCreationPage(text);
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the new clinician creation page$")
	public void i_wait_untill_i_see_on_the_new_clinician_creation_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@And("^I fill in \"([^\"]*)\" with \"([^\"]*)\" on register clinician page$")
	public void i_fill_in_with_on_register_clinician_page(String locator,String text) throws Throwable{
		patientrules.iFillFieldsOnRegisterClinicianPage(locator, text);
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the new facility creation page$")
	public void i_wait_untill_i_see_on_the_new_facility_creation_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@And("^I fill in \"([^\"]*)\" with \"([^\"]*)\" on facility creation page$")
	public void i_fill_in_with_on_facility_creation_page(String locator,String text) throws Throwable{
		patientrules.iFillFieldsOnFacilityCreationPage(locator, text);
	}
	
	@Then("^I press \"([^\"]*)\" on the facility creation page$")
	public void i_press_on_the_facility_creation_page(String text) throws Throwable{
		patientrules.iClickOnSaveButtonOnPatientRuleCreationPage(text);
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on the new exclusions lists page$")
	public void i_wait_untill_i_see_on_the_new_exclusions_lists_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@And("^I fill in \"([^\"]*)\" with \"([^\"]*)\" on new exclusion lists page$")
	public void i_fill_in_with_on_new_exclusion_lists_page(String locator,String text) throws Throwable{
		patientrules.iFillFieldsOnNewExclusionsListsPage(locator, text);
	}
	
	@Then("^I press \"([^\"]*)\" on new exclusion lists page$")
	public void i_press_on_new_exclusions_lists_page(String text) throws Throwable{
		patientrules.iClickOnSaveButtonOnPatientRuleCreationPage(text);
	}
	
	@And("^I fill in \"([^\"]*)\" with \"([^\"]*)\" on new episode page$")
	public void i_fill_in_with_on_new_episode_page(String locator,String text) throws Throwable{
		patientrules.iFillFieldsOnNewEpisodesPage(locator, text);
	}
	
	@Then("press save button on New Episode page$")
	public void press_save_button() throws Throwable{
		patientrules.iClickOnSaveButtonOnNewEpisodePage();
	}
	
	@And("^I will wait to see \"([^\"]*)\" on new episode creation page$")
	public void i_will_wait_to_see_on_new_episode_creation_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@And("^I will wait to see \"([^\"]*)\" on route acl page$")
	public void i_will_wait_to_see_on_route_acl_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@Then("^I verify \"([^\"]*)\" list is appearing on the route acl page$")
	public void i_verify_list_is_appearing_on_the_route_acl_page(String text) throws Throwable{
		patientrules.iVerifyRouteAClList(text);
	}
	
	@And("^I will wait to see \"([^\"]*)\" on alerts page$")
	public void i_will_wait_to_see_on_alerts_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@Then("^I verify \"([^\"]*)\" list is appearing on the alert template page$")
	public void i_verify_list_is_appearing_on_the_alert_template_page(String text) throws Throwable{
		patientrules.iVerifyAlertTemplateList(text);
	}
	
	@And("^I will wait to see \"([^\"]*)\" on patient tags list page$")
	public void i_will_wait_to_see_on_patient_tags_list_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@Then("^I verify \"([^\"]*)\" list is appearing on patient tags list page$")
	public void i_verify_list_is_appearing_on_patient_tags_list_page(String text) throws Throwable{
		patientrules.iVerifyPatientTagsList(text);
	}
	
	@And("^I will wait to see \"([^\"]*)\" on care plan page$")
	public void i_will_wait_to_see_on_care_plan_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@And("^I should see \"([^\"]*)\" button on care plan page$")
	public void i_should_see_button_on_care_plan_page(String text) throws Throwable{
		patientrules.iVerifyAddNewCarePlanButton(text);
	}
	
	@When("^I click on \"([^\"]*)\" button on care plan page$")
	public void i_click_on_button_on_care_plan_page(String text) throws Throwable{
		patientrules.iClickOnButtonOnCarePlanButton(text);
	}
	
	@And("^I will wait to see \"([^\"]*)\" on new care plan window$")
	public void i_will_wait_to_see_on_new_care_plan_window(String text) throws Throwable{
		patientrules.iWaitUntillISeeCarePlanFormWindow(text);
	}
	
	@When("^I fill the \"([^\"]*)\" with \"([^\"]*)\" on care plan form$")
	public void i_fill_the_with_on_care_plan_form(String locator,String text) throws Throwable{
		patientrules.iFillNameUnderCarePlanForm(locator, text);
	}
	
	@And("^I select \"([^\"]*)\" from \"([^\"]*)\" on care plan form$")
	public void i_select_from_on_care_plan_form(String select,String text) throws Throwable{
		patientrules.iSelectFrom(select, text);
	}
	
	@When("^I fill \"([^\"]*)\" with \"([^\"]*)\" on care plan form$")
	public void i_fill_with_on_care_plan_form(String locator,String text) throws Throwable{
		patientrules.iFillNameUnderCarePlanForm(locator, text);
	}
	
	@Then("^I press Submit button on the care plan form$")
	public void i_press_submit_button_on_the_care_plan_form() throws Throwable{
		patientrules.iClickOnSubmitOnCarePlanForm();
	}
	
	@And("^I wait to see \"(.*)\"$")
	public void i_wait_to_see(String text) throws Throwable{
		patientrules.IwaitToSeeThePopUp(text);
	}
	
	@And("^I wait untill \"([^\"]*)\" text is appearing on facilities page$")
	public void i_wait_untill_i_see_on_facilities_page(String text) throws Throwable{
		patientrules.iWaitUntillISeeElement(text);
	}
	
	@Then("^I enter \"([^\"]*)\" in the \"([^\"]*)\" textbox$")
	public void i_enter_in_the_textbox(String text,String locator) throws Throwable{
		patientrules.iEnterTextInFacilityFilterFields(text, locator);
	}
	
	@And("^I click on filter option on the facilities under admin center$")
	public void i_click_on_filter_option_on_the_facilities_under_admin_center() throws Throwable{
		patientrules.iClickOnFilterOpationOnFacilities();
	}
	
	@Then("^I wait untill i see list of facilities after searching$")
	public void i_wait_untill_i_see_list_of_facilities_after_searching() throws Throwable{
		patientrules.iWaitToSeeListOfFacilities();
	}
	
	@And("^I click on \"([^\"]*)\" appearing beside the facility$")
	public void i_click_on_appearing_beside_the_facility(String text) throws Throwable{
		patientrules.iClickOnDRGOnFaciltiesPage(text);
	}
	
	@Then("^I wait untill i see \"([^\"]*)\" option on the drg list page under facility$")
	public void i_wait_untill_i_see_option_on_thedrg_list_page_under_facility(String text) throws Throwable{
		patientrules.iWaitUntillISeeOptionOnDRGListUnderFacilities(text);
	}
	
	@And("^I click on \"([^\"]*)\" option on the drg list page in the facility$")
	public void i_click_on_option_on_the_drg_list_page_in_the_facility(String text) throws Throwable{
		patientrules.iClickOnAddNewDRGOptionDRGListPage(text);
	}
	
	@And("^I wait untill i see add drg popup$")
	public void i_wait_untill_i_see_add_drg_popup() throws Throwable{
		patientrules.iWaitToSeeTheDRGPopup();
	}
	
	@And("^I click on searched result in the drgs$")
	public void i_click_on_searched_result_in_the_drg() throws Throwable{
		patientrules.iClickOnMatchedResultInDRGLsit();
	}
	
	@When("^I click on Add button after selecting the drg$")
	public void i_click_on_Add_button_after_selecting_the_drg() throws Throwable{
		patientrules.iClickOnAddButtonOnDRGPopUp();
	}
	
	@Then("I verify \"([^\"]*)\" is appearing in the drg list under facility")
	public void i_verify_is_appearing_in_the_drg_list_under_facility(String text) throws Throwable{
		patientrules.iVerifyDRGListInFacility(text);
	}
	
	@Then("^I verify \"([^\"]*)\" tab is highlighted on the left navigation$")
	public void i_verify_tab_is_highlighted_on_the_left_navigation(String text) throws Throwable{
		patientrules.iVerifyTabHighlightedOnLeftNavigation(text);
	}
	
	@And("^I fill \"([^\"]*)\" field with \"([^\"]*)\" on users page$")
	public void i_fill_field_with_on_users_page(String locator,String text) throws Throwable{
		patientrules.IFillFilterFieldOnUserPage(locator, text);
	}
	
	@Then("^I click on filter option on the user list page after entering data to search$")
	public void i_click_on_filter_option_on_the_user_list_page_after_entering_data_to_search() throws Throwable{
		patientrules.iClickOnFilterOptionOnUsersListAfterEnteringData();
	}
	
	@And("^I wait untill the searched results appearing on users list page$")
	public void i_wait_untill_the_searched_results_appearing_on_users_list_page() throws Throwable{
		patientrules.iWaitUntillUserListAppears();
	}
	
	@And("^I click on reset filter on admin pages$")
	public void i_click_on_reset_filter_on_admin_page() throws Throwable{
		patientrules.iClickONResetFieldOnFilters();
	}
	
	@Then("^I verify patient list filter on left navigation is highlighted$")
	public void i_verify_patient_list_filter_on_left_navigation_is_highlighted() throws Throwable{
		patientrules.iVerifyPatientsTabHighlightedOnLeftNavigation();
	}
	
	@Then("^I click on the help under the user profile icon$")
	public void i_click_on_the_help_under_the_user_profile_icon() throws Throwable{
		patientrules.iClickOnHelpOnTheEpisodeConnectPage();
	}
	
	@Then("^I verify the help page url \"([^\"]*)\"$")
	public void i_verify_the_help_page_url(String url) throws Throwable{
		patientrules.iVerifyHelpPageURL(url);
	}
	
	@Then("^I click on myprofile section under the profile icon$")
	public void i_click_on_myprofile_section_under_the_profile_icon() throws Throwable{
		patientrules.iClickOnMyProfileEpisodeConnectPage();
	}
	
	@And("^I wait untill i see \"([^\"]*)\" is appearing on the profile page$")
	public void i_wait_untill_i_see_is_appearing_on_the_profile_page(String text) throws Throwable{
		patientrules.iWaitUntillMyProfileAppears(text);
	}
	
	@Then("^I update \"([^\"]*)\" with \"([^\"]*)\" on the my profile page$")
	public void i_update_with_on_the_my_profile_page(String locator,String text) throws Throwable{
		patientrules.iFillNamesOnMyProfilePage(locator, text);
	}
	
	@And("^I click on save changes button on the my profile page$")
	public void i_click_on_submit_button_on_the_my_profile_page() throws Throwable{
		patientrules.iClickOnSaveChangesButtonOnMyProfile();
	}
	
	@And("^I verify \"([^\"]*)\" as field validation on myprofile page$")
	public void i_verify_as_field_validation_on_myprofile_page(String text) throws Throwable{
		patientrules.iVerifyValidationMessageOnMyProfilePage(text);
	}
	
	@And("^I search and select \"([^\"]*)\" Drg on care plan form$")
	public void i_search_select_drg_on_care_plan_form(String text) throws Throwable{
		patientrules.iSearchAndSelectDrgOnCarePlanForm(text);
	}
}
