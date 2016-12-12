package stepDefination.Episode2;

import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by ashish.ranjan on 24-11-2016.
 */
public class PatientsPageSteps extends DriverScript {
    PatientsPage patientsPage = new PatientsPage(driver);

    @Then("^I should see \"([^\"]*)\" tab in the filter bar on patients page$")
    public void i_should_see_tab_in_the_filter_bar_on_patients_page(String filterTabText) throws Throwable {
        patientsPage.iVerifyTabInFilterBarOnPatientsPage(filterTabText);

    }

    @When("^I click on \"([^\"]*)\" tab in the filter bar on patients page$")
    public void i_click_on_tab_in_the_filter_bar_on_patients_page(String filterTabText) throws Throwable {
        patientsPage.iClickTabInFilterBarOnPatientsPage(filterTabText);
    }

    @Then("^I should see view section on patients page$")
    public void i_should_see_view_section_on_patients_page() throws Throwable {
        patientsPage.iVerifyViewSectionOnPatientsPage("View:");

    }

    @Then("^I should see \"([^\"]*)\" view as active view on patients page$")
    public void i_should_see_view_as_active_view_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iVerifyViewAsActiveViewOnPatientsPage(By.cssSelector("button.valentino-icon-"+viewOption+""));
    }

    @Then("^I should have \"([^\"]*)\" view option on patients page$")
    public void i_sould_have_view_option_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iVerifyToHaveViewOptionOnPatientsPage(By.cssSelector("button.valentino-icon-"+viewOption+""), viewOption);
    }

    @When("^I select \"([^\"]*)\" view on patients page$")
    public void i_select_view_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iClickViewOnPatientsPage("button.valentino-icon-"+viewOption+"");
    }

    @When("^I type \"([^\"]*)\" in the patient search field on patients page$")
    public void i_type_in_the_patient_search_field_on_patients_page(String patientName) throws Throwable {
        patientsPage.iEnterInPatientSearchFieldOnPatientsPage(patientName);
    }

    @Then("^I should see patient searched result contains \"([^\"]*)\" on patients page$")
    public void i_should_see_patient_searched_result_contains_on_patient_page(String patientText) throws Throwable {
        patientsPage.iVerifyPatientSearchedResultContainsTextOnPatientPage(patientText);
    }

    @Then("^I should see \"([^\"]*)\" button on patients page$")
    public void i_should_see_button_On_Patient_Page(String Filters) throws Throwable {
        patientsPage.iVerifyFilterButtonOnPatientPage(Filters);
    }

    @Then("^I should see \"([^\"]*)\" as placeholder for search on patients page$")
    public void i_Should_See_As_Placeholder_For_Search_On_Patient_Page(String patientText) throws Throwable {
        patientsPage.iVerifySeeAsPlaceholderForSearchOnPatientPage(patientText);
    }

    @Then("^I should see the total patient count on patient page$")
    public void i_should_see_the_total_patient_count_on_patient_page() throws Throwable {
        patientsPage.iVerifyTheTotalPatientCountOnPatientPage();
    }

    @Then("^I should see \"([^\"]*)\" link$")
    public void i_should_see_link(String ExportText) throws Throwable {
        patientsPage.i_should_see_link(ExportText);
    }

    @Then("^I should see \"([^\"]*)\" text is present$")
    public void i_should_see_text_is_present(String SortByText) throws Throwable {
        patientsPage.i_should_see_text_is_present(SortByText);
    }

    @Then("^I should see Refresh button is present$")
    public void i_should_see_Refresh_button_is_present() throws Throwable {
        patientsPage.i_should_see_Refresh_button_is_present();
    }

    @Then("^I verify Add Patient button is present on patients page$")
    public void i_verify_Add_Patient_button_is_present_on_patients_page() throws Throwable {
        patientsPage.iVerifyAddPatientButtonIsPresentOnPatientsPage();

    }

    @Then("^I verify Add Patient button is clickable on patients page$")
    public void i_verify_Add_Patient_button_is_clickable_on_patients_page() throws Throwable {
        patientsPage.iVerifyAddPatientButtonIsClickableOnPatientsPage();
    }

    @Then("^I verify \"([^\"]*)\" Patient Cards are present on patients page$")
    public void i_verify_Patient_Cards_are_present_on_patients_page(int Count) throws Throwable {
        patientsPage.iVerifyCountOFPatientCardsArePresentOnPatientsPage(Count);
    }

    @Then("^I verify Total number of Pages is present on patients page$")
    public void i_verify_Total_number_of_Pages_is_present_on_patients_page() throws Throwable {
        patientsPage.iVerifyTotalNumberOfPagesIsPresentOnPatientsPage();
    }


    @When("^I click on Inpatient work-list sub-bar option on the patients page$")
    public void i_click_on_Inpatient_work_list_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iClickOnInpatientWorkistSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Needs Review is present on sub-bar option on the patients page$")
    public void i_should_verify_Needs_Review_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyNeedsReviewIsPresentOnSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Confirm Predicted is present on sub-bar option on the patients page$")
    public void i_should_verify_Confirm_Predicted_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyConfirmPredictedIsPresentOnSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Inpatient Care is present on sub-bar option on the patients page$")
    public void i_should_verify_Inpatient_Care_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyInpatientCareIsPresentOnSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Readmissions is present on sub-bar option on the patients page$")
    public void i_should_verify_Readmissions_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyReadmissionsIsPresentOnSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Post-Acute onboarding is present on sub-bar option on the patients page$")
    public void i_should_verify_Post_Acute_onboarding_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyPostAcuteOnboardingIsPresentOnInpatientSubBarOptionOnThePatientsPage();
    }

    @When("^I click on Post Acute work-list sub-bar option on the patients page$")
    public void i_click_on_Post_Acute_work_list_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iClickOnPostAcuteWorkListSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Post-Acute Onboarding is present on sub-bar option on the patients page$")
    public void i_should_verify_Post_Acute_Onboarding_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyPostAcuteOnboardingIsPresentOnPostAccuteSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify readmission Discharges is present on sub-bar option on the patients page$")
    public void i_should_verify_readmission_Discharges_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyReadmissionDischargesIsPresentOnPostAccuteSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Exceeded SNF LOS is present on sub-bar option on the patients page$")
    public void i_should_verify_Exceeded_SNF_LOS_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyExceededSNFLOSIsPresentOnPostAccuteSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Post-Acute Facility is present on sub-bar option on the patients page$")
    public void i_should_verify_Post_Acute_Facility_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyPostAcuteFacilityIsPresentOnPostAccuteSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Home Health is present on sub-bar option on the patients page$")
    public void i_should_verify_Home_Health_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyHomeHealthIsPresentOnPostAccuteSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Home with Limited Services is present on sub-bar option on the patients page$")
    public void i_should_verify_Home_with_Limited_Services_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyHomeWithLimitedServicesIsPresentOnPostAccuteSubBarOptionOnThePatientsPage();
    }

    @Then("^I should verify Other is present on sub-bar option on the patients page$")
    public void i_should_verify_Other_is_present_on_sub_bar_option_on_the_patients_page() throws Throwable {
        patientsPage.iShouldVerifyOtherIsPresentOnPostAccuteSubBarOptionOnThePatientsPage();
    }
    
    @When("^I click on Filter button present on Patient Page$")
    public void i_click_on_Filter_button_present_on_Patient_Page() throws Throwable { 
        patientsPage.iClickOnFilterButtonPresentOnPatientPage();
    }

    @Then("^I verify Date Range is selected as default filter under Filter options$")
    public void i_verify_Date_Range_is_selected_as_default_filter_under_Filter_options() throws Throwable {
        patientsPage.iVerifyDateRangeIsSelectedAsDefaultFilterUnderFilterOptions();
    }

    @Then("^I verify Care Setting is selected as default filter under Filter options$")
    public void i_verify_Care_Setting_is_selected_as_default_filter_under_Filter_options() throws Throwable {     
    }

    @Then("^I verify Initiator is selected as default filter under Filter options$")
    public void i_verify_Initiator_is_selected_as_default_filter_under_Filter_options() throws Throwable {
        patientsPage.iVerifyInitiatorIsSelectedAsDefaultFilterUnderFilterOptions();
    }
    @When("^I click on Filters button present on Filter Page$")
    public void i_click_on_Filters_button_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnFiltersButtonPresentOnFilterPage();
    }

    @Then("^I verify Admit Reason Filter is displayed under List of Filter Options$")
    public void i_verify_Admit_Reason_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyAdmitReasonFilterIsDisplayedUnderListofFilterOptions();
    }
    
    @Then("^I verify Anchor Discharge Facility Filter is displayed under List of Filter Options$")
    public void i_verify_Anchor_Discharge_Facility_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyAnchorDischargeFacilityFilterIsDisplayedUnderListofFilterOptions();
    }
    
    @Then("^I verify Anchor Facility Filter is displayed under List of Filter Options$")
    public void i_verify_Anchor_Facility_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyAnchorFacilityFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Care Plan Filter is displayed under List of Filter Options$")
    public void i_verify_Care_Plan_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyCarePlanFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Care Setting Filter is displayed under List of Filter Options$")
    public void i_verify_Care_Setting_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        patientsPage.iVerifyCareSettingFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Cooperation Metric Filter is displayed under List of Filter Options$")
    public void i_verify_Cooperation_Metric_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyCooperationMetricFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Current Facility Filter is displayed under List of Filter Options$")
    public void i_verify_Current_Facility_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyCurrentFacilityFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Daily Report Filter is displayed under List of Filter Options$")
    public void i_verify_Daily_Report_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyDailyReportFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Date Range Filter is displayed under List of Filter Options$")
    public void i_verify_Date_Range_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyDateRangeFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify DRG Type Filter is displayed under List of Filter Options$")
    public void i_verify_DRG_Type_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyDRGTypeFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Eligibility Filter is displayed under List of Filter Options$")
    public void i_verify_Eligibility_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyEligibilityFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Episode DRG Filter is displayed under List of Filter Options$")
    public void i_verify_Episode_DRG_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyEpisodeDRGFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Episode Status Filter is displayed under List of Filter Options$")
    public void i_verify_Episode_Status_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyEpisodeStatusFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify First Name Filter is displayed under List of Filter Options$")
    public void i_verify_First_Name_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyFirstNameFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Gender Filter is displayed under List of Filter Options$")
    public void i_verify_Gender_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyGenderFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Initiator Filter is displayed under List of Filter Options$")
    public void i_verify_Initiator_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyInitiatorFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Inpatient Location Filter is displayed under List of Filter Options$")
    public void i_verify_Inpatient_Location_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyInpatientLocationFilterIsDisplayedUnderListOfFilterOptions();
    }
    
    @Then("^I verify Last Name Filter is displayed under List of Filter Options$")
    public void i_verify_Last_Name_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
    	patientsPage.iVerifyLastNameFilterIsDisplayedUnderListOfFilterOptions();
    }
}
