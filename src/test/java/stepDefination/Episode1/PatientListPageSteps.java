package stepDefination.Episode1;

import com.remedy.episode1.PatientsListPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 5/22/16.
 */
public class PatientListPageSteps extends DriverScript {

    PatientsListPage patientsList = new PatientsListPage(driver);


    @Then("^I should see \"([^\"]*)\" on the patient list page$")
    public void iShouldSeeOnThePatientListPage(String text) throws Throwable {

        patientsList.iverifyPatientListPageheader(text);
    }
    
    @When("^I click on \"([^\"]*)\" in the left navigator present on the episode dashboard page$")
    public void i_click_on_in_the_left_navigator_present_on_the_episode_dashboard_page(String text) throws Throwable {
    	 patientsList.iClickOnTheLeftNavigatorPresentOnTheEpisodeDashboardPage(text);
    }

    @Then("^I should see \"([^\"]*)\" in the Patients dropdown menu$")
    public void i_should_see_in_the_Patients_dropdown_menu(String text) throws Throwable {
    	 patientsList.iShouldSeeInThePatientsDropdownMenu(text);
    }

    @When("^I click on \"([^\"]*)\" in the Patients dropdown menu$")
    public void i_click_on_in_the_Patients_dropdown_menu(String text) throws Throwable {
    	patientsList.iClickOnInThePatientsDropdownMenu(text);
    }


    @Then("^I click on Pin to dashboard in \"([^\"]*)\" to pin the filter to dashboard$")
    public void i_click_on_Pin_to_dashboard_in_to_pin_the_filter_to_dashboard(String text) throws Throwable {
    	patientsList.iClickOnPinToDashboardInToPinTheFilterToDashboard(text);
    }

    @Then("^I click on Unpin from dashboard in \"([^\"]*)\" to unpin the filter from dashboard$")
    public void i_click_on_Unpin_from_dashboard_in_to_unpin_the_filter_from_dashboard(String text) throws Throwable {
    	patientsList.iClickOnUnpinFromDashboardInToPinTheFilterToDashboard(text);
    }
    
    @Then("^I click on Pin to bookmarks in \"([^\"]*)\" to pin the filter to dashboard$")
    public void i_click_on_Pin_to_bookmarks_in_to_pin_the_filter_to_dashboard(String text) throws Throwable {
    	patientsList.iClickOnPinToBookmarksInToPinTheFilterToDashboard(text);
    }

    @Then("^I click on Unpin from bookmarks in \"([^\"]*)\" to unpin the filter from dashboard$")
    public void i_click_on_Unpin_from_bookmarks_in_to_unpin_the_filter_from_dashboard(String text) throws Throwable {
    	patientsList.iClickOnUnpinFromBookmarksInToUnpinTheFilterToDashboard(text);
    }

    @When("^I click on Add Patient button present on the ec(\\d+) patients page$")
    public void i_click_on_Add_Patient_button_present_on_the_ec_patients_page(int ecVersion) throws Throwable {
        patientsList.iClickOnAddPatientButtonPresentOnTheEcPatientsPage(ecVersion);
    }
              

    @Then("^I click on Load filter in \"([^\"]*)\" to load the patient list present on the patients dropdown$")
    public void i_click_on_Load_filter_in_to_load_the_patient_list_present_on_the_patients_dropdown(String text) throws Throwable {
    	patientsList.iClickOnLoadFilterInToLoadThePatientListPresentOnThePatientsDropdown(text);
    }

    @Then("^I should see \"([^\"]*)\" present on the patient list filter page present on the patient list page$")
    public void i_should_see_present_on_the_patient_list_filter_page_present_on_the_patient_list_page(String text) throws Throwable {
    	patientsList.iShouldSeePresentOnThePatientListFilterPagePresentOnThePatientListPage(text);
    }

    @Then("^I should see patient list count info present on the patient list page$")
    public void i_should_see_patient_list_count_info_present_on_the_patient_list_page() throws Throwable {
    	patientsList.iShouldSeePatientListCountInfoPresentOnThePatientListPage();
    }

    @Then("^I verify export button is present on the patient list page$")
    public void i_verify_export_button_is_present_on_the_patient_list_page() throws Throwable {
    	patientsList.iVerifyExportButtonIsPresentOnThePatientListPage();
    }

    @Then("^I click on the export button present on the patient list page$")
    public void i_click_on_the_export_button_present_on_the_patient_list_page() throws Throwable {
    	patientsList.iClickOnTheExportButtonPresentOnThePatientListPage();
    }

    @Then("^I click on the select all option present on the export list page$")
    public void i_click_on_the_select_all_option_present_on_the_export_list_page() throws Throwable {
    	patientsList.iClickOnTheSelectAllOptionPresentOnTheExportListPage();
    }
    
    @Then("^I click on the download file button present on the export list page$")
    public void i_click_on_the_download_file_button_present_on_the_export_list_page() throws Throwable {
    	patientsList.iClickOnTheDownloadFileButtonPresentOnTheExportListPage();
    }
    
    @Then("^I verify \"([^\"]*)\" on export list$")
    public void i_verify_header_on_the_export_list_page(String text) throws Throwable {
    	patientsList.iVerifyHeaderOnEportListPage(text);
    }

    @Then("^I click on the cancel button present on the export list page$")
    public void i_click_on_the_cancel_button_present_on_the_export_list_page() throws Throwable {
    	patientsList.iClickOnTheCancelButtonPresentOnTheExportListPage();
    }
    
    @Then("^I click on \"([^\"]*)\" present in the Patients dropdown menu$")
    public void i_click_on_present_in_the_Patients_dropdown_menu(String text) throws Throwable {
    	patientsList.iClickOnPresentInThePatientsDropdownMenu(text);
    }

    @Then("^I should see \"([^\"]*)\" filter tab present on the patients page$")
    public void i_should_see_filter_tab_present_on_the_patients_page(String filtertab) throws Throwable {
    	patientsList.iShouldSeeFilterTabPresentOnThePatientListPage(filtertab);
    }

    @Then("^I click on care setting dropdown present on the patient page$")
    public void i_click_on_care_setting_dropdown_present_on_the_patient_page() throws Throwable {
    	patientsList.iClickOnCareSettingDropdownPresentOnThePatientPage();
    }

    @Then("^I select hospital inpatient option present on the care setting dropdown$")
    public void i_select_hospital_inpatient_option_present_on_the_care_setting_dropdown() throws Throwable {
    	patientsList.iSelectHospitalInpatientOptionPresentOnTheCareSettingDropdown();
    }

    @Then("^I select hospital observation option present on the care setting dropdown$")
    public void i_select_hospital_observation_option_present_on_the_care_setting_dropdown() throws Throwable {
    	patientsList.iSelectHospitalObservationOptionPresentOnTheCareSettingDropdown();
    }

    @Then("^I click on search button present on the patients page$")
    public void i_click_on_search_button_present_on_the_patients_page() throws Throwable {
    	patientsList.iClickOnSearchButtonPresentOnThePatientsPage();
    }

    @Then("^I click on save as button present on the patient page$")
    public void i_click_on_save_as_button_present_on_the_patient_page() throws Throwable {
    	patientsList.iClickOnSaveAsButtonPresentOnThePatientPage();
    }

    @Then("^I enter ([^\"]*) the filter name on the text box present on the new filter modal$")
    public void i_enter_the_filter_name_on_the_text_box_present_on_the_new_filter_modal(String filter) throws Throwable {
    	patientsList.iEnterTheFilterNameOnTheTextBoxPresentOnTheNewFilterModal(filter);
    }

    @Then("^I click on submit button present on the new filter modal$")
    public void i_click_on_submit_button_present_on_the_new_filter_modal() throws Throwable {
    	patientsList.iClickOnSubmitButtonPresentOnTheNewFilterModal();
    }
    
    @Then("^I should see ([^\"]*) present on the custom filter list$")
    public void i_should_see_present_on_the_custom_filter_list(String filter) throws Throwable {
    	patientsList.iShouldSeePresentOnTheCustomFilterList(filter);
    }
    
    @Then("^I enter ([^\"]*) in the patient search box present on the patient page$")
    public void i_enter_in_the_patient_search_box_present_on_the_patient_page(String patientName) throws Throwable {
    	patientsList.iEnterThePatientSearchBoxPresentOnThePatientPage(patientName);
    }
    
    @Then("^I enter patient's firstname in the patient search box on the patient page$")
    public void i_enter_patient_firstname_in_the_patient_search_box_present_on_the_patient_page() throws Throwable {
    	patientsList.iEnterPatientFirstNameSearchBoxPresentOnThePatientPage();
    }
    
    @Then("^I enter patients fullname in the patient search box on the patient page$")
    public void i_enter_patient_fullname_in_the_patient_search_box_present_on_the_patient_page() throws Throwable {
    	patientsList.iEnterPatientFullNameSearchBoxPresentOnThePatientPage();
    }
    
    @Then("^I should see patient fullname appearing on patient card on patient search$")
    public void i_should_see_patient_fullname_appearing_on_patientCard() throws Throwable {
    	patientsList.iShouldSeePatientFullnameAppearingOnPatientCard();
    }

    @Then("^I should see ([^\"]*) patient on the patient list present on the patient page$")
    public void i_should_see_patient_on_the_patient_list_present_on_the_patient_page(String patientName) throws Throwable {
    	patientsList.iShouldSeePatientOnThePatientListPresentOnThePatientPage(patientName);
    }

    @Then("^I should see clear filter button present on the patient page$")
    public void i_should_see_clear_filter_button_present_on_the_patient_page() throws Throwable {
    	patientsList.iShouldSeeClearFilterButtonPresentOnThePatientPage();
    }

    @Then("^I click on the clear filter button present on the patient page$")
    public void i_click_on_the_clear_filter_button_present_on_the_patient_page() throws Throwable {
    	patientsList.iClickOnTheClearFilterButtonPresentOnThePatientPage();
    }
    
    @Then("^I click on \"([^\"]*)\" button for \"([^\"]*)\" filter$")
    public void i_click_on_button_for_Filter(String button, String filter) throws Throwable {
    	patientsList.iClickOnButtonForFilters(button,filter);
    }
    
    @Then("^I search \"([^\"]*)\" in \"([^\"]*)\" filter$")
    public void i_search_text_in_filter(String text, String filter) throws Throwable {
    	patientsList.iSearchTextInFilter(text,filter);
    }
    
    @Then("^I click on \"([^\"]*)\" from patients list patient gear menu$")
    public void i_click_on_option_from_patients_list_patient_gear_menu(String option) throws Throwable {
    	patientsList.iClickOnOptionFromPatientslistPatientGearMenu(option);
    }
    
    @Then("^I click on Not Eligible ESRD from patients list patient gear menu$")
    public void i_click_on_NotEligibleESRD_from_patients_list_patient_gear_menu() throws Throwable {
    	patientsList.iclickonNotEligibleESRDfrompatientslistpatientgearmenu();
    }
    
    @Then("^I click on Send message from patients list patient gear menu$")
    public void i_click_SendMessage_from_patients_list_patient_gear_menu() throws Throwable {
    	patientsList.iClickOnSendMessageFromPatientslistPatientGearMenu();
    }
    
    @Then("^I verify \"([^\"]*)\" header on popup$")
    public void i_verify_header_on_popup(String text) throws Throwable {
    	patientsList.iVerifyHeaderTextOnPopUp(text);
    }
    
    @Then("^I fill in task Due Date with today date$")
    public void i_fill_in_task_dueDate_with_today_date() throws Throwable {
    	patientsList.iFillInTextDueDateWithTodayDate();
    }
    
    @Then("^I click on first patient gear menu$")
    public void i_click_on_first_patient_gear_menu() throws Throwable {
    	patientsList.iClickOnFirstPatientGearMenu();
    }
    
    @Then("^I fill in Task description with \"([^\"]*)\" for patient list$")
    public void i_fill_in_task_description_for_patient_list(String text) throws Throwable {
    	patientsList.iFillInTaskDescriptionForPatientList(text);
    }
    
    @Then("^I select the checkbox on popup for care team$")
    public void i_select_checkbox_on_popup_for_careteam() throws Throwable {
    	patientsList.iSelectCheckboxOnPopUpForCareTeam();
    }
    
    @Then("^I click on \"([^\"]*)\" button$")
    public void i_click_on_button_with_text(String text) throws Throwable {
    	patientsList.iClickOnButtonWithText(text);
    }
    
    @Then("^I close modal popup$")
    public void i_close_modal_popup() throws Throwable {
    	patientsList.iCloseModalPopUp();
    }
    
    @Then("^I will wait to see \"([^\"]*)\"$")
    public void i_will_wait_to_see_text(String text) throws Throwable {
    	patientsList.iWillWaitToSeeText(text);
    }
    
    @Then("^I fill \"([^\"]*)\" in \"([^\"]*)\" on Appointment form$")
    public void i_fill_text_on_appointment_form(String text, String field) throws Throwable {
    	patientsList.iFillTextOnAppointmentForm(text,field);
    }
    
    @Then("^I select \"([^\"]*)\" Appointment tye$")
    public void i_select_appointment_type(String text) throws Throwable {
    	patientsList.iSelectAppointmentType(text);
    }
    
    @Then("^I select \"([^\"]*)\" Topic from dropdown under Note$")
    public void i_select_topic_from_dropdown(String text) throws Throwable {
    	patientsList.iSelectTopicFromDropDownOnNote(text);
    }
    
    @Then("^I verify \"([^\"]*)\" onboarding status on patient list page$")
    public void i_verify_onboarding_status_on_patient_list_page(String text) throws Throwable {
    	patientsList.iVerifyOnboardingStatusOnPatientList(text);
    }
    
    @Then("^I verify \"([^\"]*)\" Eligibility on patient list page$")
    public void i_verify_eligibility_on_patient_list_page(String text) throws Throwable {
    	patientsList.iVerifyEligibilityOnPatientList(text);
    }
    
    @Then("^I should see \"([^\"]*)\" Episode Initiator on Patient list page$")
    public void i_should_see_episode_initiator_on_patient_list_page(String text) throws Throwable {
    	patientsList.iShouldSeeEpisodeInitiatorOnPatientListPage(text);
    }
    
    @Then("^I should see \"([^\"]*)\" on patient search on patient list$")
    public void i_should_see_count_on_patient_search_on_patient_list(String text) throws Throwable {
    	patientsList.iShouldSeeCountOnPatientSearchOnPatientList(text);
    }
    
    @Then("^I click on first checkbox on Clinician modal$")
    public void i_Click_On_First_Checkbox_On_Clinician_Modal() throws Throwable {
    	patientsList.iClickOnFirstCheckboxOnClinicianModal();
    }

    @Then ("^I verify the patient count is \"([^\"]*)\" than 1000 on the patient list page$")
    public void i_verify_patient_count_less_than_1000(String operand){
    	patientsList.iverifypatientcountlessthan1000(operand);
    }
   
    @When ("^I click \"([^\"]*)\" check box \"([^\"]*)\" on export list$")
    public void i_click_check_box_on_export_list(String name,String datafilter){
    	patientsList.i_click_check_box_on_export_list(name,datafilter);
    }
    
    @Then ("^I verify the file \"([^\"]*)\" downloaded is in \"([^\"]*)\" format for export$")
    public void i_verify_downloaded_file_on_export(String filename,String format){
    	patientsList.i_verify_downloaded_file_on_export(filename,format);
    }
    
    @Then ("^I should see \"([^\"]*)\" appearing under progress on patient card$")
    public void progress_on_patient_card(String value){
    	patientsList.progress_on_patient_card(value);
    }
    
    @Then ("^I should see \"([^\"]*)\" \"([^\"]*)\" appearing under current location on patient card$")
    public void location_on_patient_card(String value1,String value2){
    	patientsList.location_on_patient_card(value1,value2);
    }
    
    @Then ("^I should see \"([^\"]*)\" appearing under drg on patient card$")
    public void drg_on_patient_card(String value1){
    	patientsList.drgonpatientcard(value1);
    }
    
    @Then("^I should see \"([^\"]*)\" Anchor Facility on Patient list page$")
    public void i_should_see_Anchor_Facility_on_patient_list_page(String text1) throws Throwable {
    	patientsList.iShouldSeeAnchorFacilityOnPatientListPage(text1);
    }
}
