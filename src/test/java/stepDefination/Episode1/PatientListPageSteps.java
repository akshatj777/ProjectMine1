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

    @Then("^I click on the cancel button present on the export list page$")
    public void i_click_on_the_cancel_button_present_on_the_export_list_page() throws Throwable {
    	patientsList.iClickOnTheCancelButtonPresentOnTheExportListPage();
    }
//    this
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
}
