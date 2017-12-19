package stepDefination.Episode2;

import com.remedy.Episode2.PatientsPage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import java.util.List;


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
        patientsPage.iVerifyViewAsActiveViewOnPatientsPage(By.cssSelector("button.valentino-icon-" + viewOption + ""));
    }

    @Then("^I should have \"([^\"]*)\" view option on patients page$")
    public void i_sould_have_view_option_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iVerifyToHaveViewOptionOnPatientsPage(By.cssSelector("button.valentino-icon-" + viewOption + ""), viewOption);
    }

    @When("^I select \"([^\"]*)\" view on patients page$")
    public void i_select_view_on_patients_page(String viewOption) throws Throwable {
        patientsPage.iClickViewOnPatientsPage("button.valentino-icon-" + viewOption + "");
    }

    @When("^I type \"([^\"]*)\" in the patient search field on patients page$")
    public void i_type_in_the_patient_search_field_on_patients_page(String patientName) throws Throwable {
        patientsPage.iEnterInPatientSearchFieldOnPatientsPage(patientName);
    }

    @Then("^I should see patient searched result contains \"([^\"]*)\" on patients page$")
    public void i_should_see_patient_searched_result_contains_on_patient_page(String patientText) throws Throwable {
        patientsPage.iVerifyPatientSearchedResultContainsTextOnPatientPage(patientText);
    }

    @Then("^I should see Filters button present on patients page$")
    public void i_should_see_filter_button_present_on_patient_page() throws Throwable {
        patientsPage.iVerifyElementTextPresentOnPatientPage(By.xpath("//button[span[span[contains(text(),'Filters')]]]"), "Filter");
    }

    @Then("^I should see \"([^\"]*)\" as placeholder for search on patients page$")
    public void i_Should_See_As_Placeholder_For_Search_On_Patient_Page(String patientText) throws Throwable {
        patientsPage.iVerifySeeAsPlaceholderForSearchOnPatientPage(patientText);
    }

    @Then("^I should see the total patient count on patient page$")
    public void i_should_see_the_total_patient_count_on_patient_page() throws Throwable {
        patientsPage.iVerifyElementPresentOnPatientPage(By.cssSelector("div.ng-scope>div>strong.ng-binding"));
    }

    @Then("^I should see Export feature present on patient page$")
    public void i_should_see_export_feature_present_on_patient_page() throws Throwable {
        patientsPage.iVerifyElementPresentOnPatientPage(By.cssSelector(".export-link>a"));
        patientsPage.iVerifyElementTextPresentOnPatientPage(By.cssSelector(".export-link>a"), "Export");
    }

    @Then("^I should see Sort by feature is present on patient page$")
    public void i_should_see_Sortby_feature_present_on_patient_page() throws Throwable {
        patientsPage.iVerifyElementTextPresentOnPatientPage(By.xpath("//strong[@class='sort-select-label']"), "Sort by:");
    }

    @Then("^I should see Refresh button is present on patient page$")
    public void i_should_see_Refresh_button_is_present() throws Throwable {
        patientsPage.iVerifyElementPresentOnPatientPage(By.cssSelector("button.btn-reload"));
    }

    @Then("^I verify Add Patient button is present on patients page$")
    public void i_verify_Add_Patient_button_is_present_on_patients_page() throws Throwable {
        patientsPage.iVerifyElementPresentOnPatientPage(By.xpath("//button[contains(text(),'Add Patient')]"));
    }

    @Then("^I verify \"([^\"]*)\" Patient Cards are present on patients page$")
    public void i_verify_Patient_Cards_are_present_on_patients_page(int Count) throws Throwable {
        patientsPage.iVerifyCountOFPatientCardsArePresentOnPatientsPage(Count);
    }

    @When("^I click on \"([^\"]*)\" worklist filter options on the patients page$")
    public void i_click_on_worklist_filter_option_on_the_patients_page(String worklistFilter) throws Throwable {
        patientsPage.iClickOnWorkistFilterOptionsOnPatientsPage(worklistFilter);
    }

    @Then("^I should verify \"([^\"]*)\" worklist sub bar option is present on patients page$")
    public void i_should_verify_worklist_sub_bar_option_on_the_patients_page(String worklistSubbar) throws Throwable {
        patientsPage.iVerifyWorklistSubBarOptionsPresentOnPatientsPage(worklistSubbar);
    }

    @Then("^I click on Done button present on the Filter Page$")
    public void i_click_on_Done_button_present_on_the_Filter_Page() throws Throwable {
        patientsPage.iClickOnDoneButtonPresentOnTheFilterPage();
    }

    @When("^I click on Anchor Discharge Facility Filter present on Filter Page$")
    public void i_click_on_Anchor_Discharge_Facility_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnAnchorDischargeFacilityFilterPresentOnTheFilterPage();
    }

    @When("^I click on Anchor Discharge Facility dropdown to select the Facilty on the Filter Page$")
    public void i_click_on_Anchor_Discharge_Facility_dropdown_to_select_the_Facilty_on_the_Filter_Page() throws Throwable {
        patientsPage.iClickOnAnchorDischargeFacilityDropdownToSelectTheFaciltyOnTheFilterPage();
    }

    @When("^I type ([^\"]*) in the search field to search the Anchor Discharge Facility$")
    public void i_type_in_the_search_field_to_search_the_Anchor_Discharge_Facilty(String Facility) throws Throwable {
        patientsPage.iTypeInTheSearchFieldToSearchTheAnchorDischargeFacilty(Facility);
    }
    
    @When("^I type ([^\"]*) in the search field to search the Current Facility$")
    public void i_type_in_the_search_field_to_search_the_current_Facilty(String Facility) throws Throwable {
        patientsPage.iTypeInTheSearchFieldToSearchTheAnchorDischargeFacilty(Facility);
    }

    @When("^I select Stamford hospital checkbox present in the Filter Page$")
    public void i_select_Stamford_hospital_checkbox_present_in_the_Filter_Page() throws Throwable {
        patientsPage.iSelectStamfordHospitalCheckboxPresentInTheFilterPage();
    }

    @When("^I click on Anchor Facility Filter present on Filter Page$")
    public void i_click_on_Anchor_Facility_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnAnchorFacilityFilterPresentInTheFilterPage();
    }

    @When("^I click on Anchor Facility dropdown to select the Facilty on the Filter Page$")
    public void i_click_on_Anchor_Facility_dropdown_to_select_the_Facilty_on_the_Filter_Page() throws Throwable {
        patientsPage.iClickOnAnchorFacilityDropdownToSelectTheFaciltyOnTheFilterPage();
    }

    @When("^I type ([^\"]*) in the search field to search the Anchor Facility$")
    public void i_type_in_the_search_field_to_search_the_Anchor_Facilty(String facility) throws Throwable {
        patientsPage.iTypeInTheSearchFieldToSearchTheAnchorFacilty(facility);
    }

    @When("^I select Stamford hospital checkbox as Anchor Facility present in the Filter Page$")
    public void i_select_Stamford_hospital_checkbox_as_Anchor_Facility_present_in_the_Filter_Page() throws Throwable {
        patientsPage.iSelectStamfordHospitalCheckboxAsAnchorFacilityPresentInTheFilterPage();
    }

    @Then("^I verify Medicare ID Filter is displayed under List of Filter Options$")
    public void i_verify_Medicare_ID_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyMedicareIDFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify Payer Filter is displayed under List of Filter Options$")
    public void i_verify_Payer_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyPayerFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify Quality Metric Filter is displayed under List of Filter Options$")
    public void i_verify_Quality_Metric_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyQualityMetricFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify Readmission Count Filter is displayed under List of Filter Options$")
    public void i_verify_Readmission_Count_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyReadmissionCountFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify Risk Assessment Filter is displayed under List of Filter Options$")
    public void i_verify_Risk_Assessment_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyRiskAssessmentFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify SSN Filter is displayed under List of Filter Options$")
    public void i_verify_SSN_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifySSNFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify Tags Filter is displayed under List of Filter Options$")
    public void i_verify_Tags_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyTagFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify Patient Name is present in the patient card header on patient page$")
    public void i_verify_Patient_Name_is_present_in_the_patient_card_header_on_patient_page() throws Throwable {
        patientsPage.iVerifyPatientNameIsPresentInThePatientCardHeaderOnPatientPage();
    }

    @Then("^I verify DOB is present on the patient card header on the patient page$")
    public void i_verify_DOB_is_present_on_the_patient_card_header_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyDOBIsPresentInThePatientCardHeaderOnPatientPage();
    }

    @Then("^I verify Age is present on the patient card header on the patient page$")
    public void i_verify_Age_is_present_on_the_patient_card_header_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyAgeIsPresentInThePatientCardHeaderOnPatientPage();
    }

    @Then("^I verify Gender is present on the patient card header on the patient page$")
    public void i_verify_Gender_is_present_on_the_patient_card_header_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyGenderIsPresentInThePatientCardHeaderOnPatientPage();
    }

    @Then("^I verify SSN is present on the patient card header on the patient page$")
    public void i_verify_SSN_is_present_on_the_patient_card_header_on_the_patient_page() throws Throwable {
        patientsPage.iVerifySSNIsPresentInThePatientCardHeaderOnPatientPage();
    }

    @Then("^I verify Expand button is present on the patient card header on the patient page$")
    public void i_verify_Expand_button_is_present_on_the_patient_card_header_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyExpandButtonIsPresentInThePatientCardHeaderOnPatientPage1();
    }

    @Then("^I verify risk status is present on the patient card on the patient page$")
    public void i_verify_risk_status_is_present_on_the_patient_card_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyRiskStatusIsPresentOnThePatientCardOnPatientPage();
    }

    @Then("^I verify current location is present on the patient card on the patient page$")
    public void i_verify_current_location_is_present_on_the_patient_card_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyCurrentLocationIsPresentOnThePatientCardOnPatientPage();
    }

    @Then("^I verify anchor facility is present on the patient card on the patient page$")
    public void i_verify_anchor_facility_is_present_on_the_patient_card_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyAnchorFacilityIsPresentOnThePatientCardOnPatientPage();
    }

    @Then("^I verify tags is present on the patient card on the patient page$")
    public void i_verify_tags_is_present_on_the_patient_card_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyTagsIsPresentOnThePatientCardOnPatientPage();
    }

    @Then("^I verify Quick Actions is present on the patient card on the patient page$")
    public void i_verify_Quick_Actions_is_present_on_the_patient_card_on_the_patient_page() throws Throwable {
        patientsPage.iVerifyQuickActionsIsPresentOnThePatientCardOnPatientPage();
    }

    @When("^I click on the Expand button on the patient card on the patient page$")
    public void i_click_on_the_Expand_button_on_the_patient_card_on_the_patient_page() throws Throwable {
        patientsPage.iClickOnTheExpandButtonOnThePatientCardOnThePatientPage();
    }

    @Then("^I verify Quick action button \\(Add Clinical Document, New Task\\) is present on the patient summary page$")
    public void i_verify_Quick_action_button_Add_Clinical_Document_New_Task_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyQuickActionButtonAddClinicalDocumentAndNewTaskIsPresentOnThePatientSummaryPage();
    }

    @Then("^I Verify Current Location is present on the patient summary page$")
    public void i_Verify_Current_Location_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyCurrentLocationIsPresentOnThePatientSummaryPage();
    }

    @Then("^I Verify Anchor Facility is present on the patient summary page$")
    public void i_Verify_Anchor_Facility_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyAnchorFacilityIsPresentOnThePatientSummaryPage();
    }

    @Then("^I Verify Account status is present on the patient summary page$")
    public void i_Verify_Account_status_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyAccountStatusIsPresentOnThePatientSummaryPage();
    }

    @Then("^I Verify MRNs is present on the patient summary page$")
    public void i_Verify_MRNs_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyMRNsIsPresentOnThePatientSummaryPage();
    }

    @Then("^I Verify Onboarding Status is present on the patient summary page$")
    public void i_Verify_Onboarding_Status_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyOnboardingStatusIsPresentOnThePatientSummaryPage();
    }

    @When("^I Click on Onboarding Status present on the patient summary page$")
    public void i_Click_on_Onboarding_Status_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iClickOnOnboardingStatusPresentOnThePatientSummaryPage();
    }

    @Then("^I Verify Recalculate is present in the Onboarding Dropdown on the patient summary page$")
    public void i_Verify_Recalculate_is_present_in_the_Onboarding_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyRecalculateIsPresentInTheOnboardingDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Low Status is present in the Onboarding Dropdown on the patient summary page$")
    public void i_Verify_Low_Status_is_present_in_the_Onboarding_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyLowStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify High Status is present in the Onboarding Dropdown on the patient summary page$")
    public void i_Verify_High_Status_is_present_in_the_Onboarding_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyHighStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Needs-Onboarding Status in the Onboarding Dropdown on the patient summary page$")
    public void i_Verify_Needs_Onboarding_Status_in_the_Onboarding_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyNeedsOnboardingStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Not-Onboarded Status is present in the Onboarding Dropdown on the patient summary page$")
    public void i_Verify_Not_Onboarded_Status_is_present_in_the_Onboarding_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyNotOnboardedStatusIsPresentInTheOnboardingDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Eligibility is present on the patient summary page$")
    public void i_Verify_Eligibility_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyEligibilityIsPresentOnThePatientSummaryPage();
    }

    @When("^I Click on Eligibility present on the patient summary page$")
    public void i_Click_on_Eligibility_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iClickOnEligibilityPresentOnThePatientSummaryPage();
    }

    @Then("^I Verify Run Service is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Run_Service_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyRunServiceIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Review Service Response is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Review_Service_Response_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyReviewServiceResponseIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Reset Payer section is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Reset_Payer_section_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyResetPayerSectionIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Eligible is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Eligible_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyEligibleIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Not Eligible is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Not_Eligible_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyNotEligibleIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Not Eligible ESRD is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Not_Eligible_ESRD_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable{
        patientsPage.iVerifyNotEligibleESRDIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Error is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Error_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyErrorIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Expired is present in the Eligibility Dropdown on the patient summary page$")
    public void i_Verify_Expired_is_present_in_the_Eligibility_Dropdown_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyExpiredIsPresentInTheEligibilityDropdownOnThePatientSummaryPage();
    }

    @Then("^I Verify Tags is present on the patient summary page$")
    public void i_Verify_Tags_is_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyTagsIsPresentOnThePatientSummaryPage();
    }

    @When("^I click on Hide Summary button present on the patient summary page$")
    public void i_click_on_Hide_Summary_button_present_on_the_patient_summary_page() throws Throwable {
        patientsPage.iClickOnHideSummaryButtonPresentOnThePatientSummaryPage();
    }

    @Then("^I verify that only Card header information is displayed on the patient summary page$")
    public void i_verify_that_only_Card_header_information_is_displayed_on_the_patient_summary_page() throws Throwable {
        patientsPage.iVerifyThatOnlyCardHeaderInformationIsDisplayedOnThePatientSummaryPage();
    }

    @Then("^I click on the gear icon present on the patient overview page\\.$")
    public void i_click_on_the_gear_icon_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnTheGearIconPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Edit button is present on the patient overview page$")
    public void i_verify_Edit_button_is_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyEditButtonIsPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Delete button is present on the patient overview page$")
    public void i_verify_Delete_button_is_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyDeleteButtonIsPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Assign button is present on the patient overview page$")
    public void i_verify_Assign_button_is_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyAssignButtonIsPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Attach Note button is present on the patient overview page$")
    public void i_verify_Attach_Note_button_is_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyAttachNoteButtonIsPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Start CARL Tool button is present on the patient overview page$")
    public void i_verify_Start_CARL_Tool_button_is_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyStartCARLToolButtonIsPresentOnThePatientOverviewPage();
    }

    @When("^I click on Edit option present under gear icon present on the transition table$")
    public void i_click_on_Edit_option_present_under_gear_icon_present_on_the_transition_table() throws Throwable {
        patientsPage.iClickOnEditOptionPresentUnderGearIconDropdownMenuPresentOnTheTransitionTable();
    }

    @Then("^I verify Transition Info is present under Transition Tab present on the patient overview page$")
    public void i_verify_Transition_Info_is_present_under_Transition_Tab_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyTransitionInfoIsPresentUnderTransitionTabPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Diagnosis and DRG is present under Transition Tab present on the patient overview page$")
    public void i_verify_Diagnosis_and_DRG_is_present_under_Transition_Tab_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyDiagnosisAndDRGIsPresentUnderTransitionTabPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Treatment Info is present under Transition Tab present on the patient overview page$")
    public void i_verify_Treatment_Info_is_present_under_Transition_Tab_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyTreatmentInfoIsPresentUnderTransitionTabPresentOnThePatientOverviewPage();
    }

    @Then("^I verify Comment is present under Transition Tab present on the patient overview page$")
    public void i_verify_Comment_is_present_under_Transition_Tab_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyCommentIsPresentUnderTransitionTabPresentOnThePatientOverviewPage();
    }

    @Then("^I verify TCRN Checklist is present under Transition Tab present on the patient overview page$")
    public void i_verify_TCRN_Checklist_is_present_under_Transition_Tab_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iVerifyTCRNChecklistIsPresentUnderTransitionTabPresentOnThePatientOverviewPage();
    }

    @When("^I click on Diagnosis and DRG tab present on the patient overview page$")
    public void i_click_on_Diagnosis_and_DRG_tab_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnDiagnosisAndDRGTabPresentOnThePatientOverviewPage();
    }

    @Then("^I verify ICD is present in the Diagnosis and DRG tab$")
    public void i_verify_ICD_is_present_in_the_Diagnosis_and_DRG_tab() throws Throwable {
        patientsPage.iVerifyICDIsPresentInTheDiagnosisAndDRGTab();
    }

    @Then("^I verify Predict DRG is present in the Diagnosis and DRG tab$")
    public void i_verify_Predict_DRG_is_present_in_the_Diagnosis_and_DRG_tab() throws Throwable {
        patientsPage.iVerifyPredictDRGIsPresentInTheDiagnosisAndDRGTab();
    }

    @Then("^I verify Add a New DRG is present in the Diagnosis and DRG tab$")
    public void i_verify_Add_a_New_DRG_is_present_in_the_Diagnosis_and_DRG_tab() throws Throwable {
        patientsPage.iVerifyAddANewDRGIsPresentInTheDiagnosisAndDRGTab();
    }

    @When("^I click on DRG Type to Add a New DRG present on the patient overview page$")
    public void i_click_on_DRG_Type_to_Add_a_New_DRG_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnDRGTypeToAddANewDRGPresentOnThePatientOverviewPage();
    }

    @Then("^I select Possible from the DRG type dropdown present on the patient overview page$")
    public void i_select_Possible_from_the_DRG_type_dropdown_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iSelectPossibleFromTheDRGTypeDropdownPresentOnThePatientOverviewPage();
    }

    @Then("^I Click on DRG dropdown menu present on the patient overview page$")
    public void i_Click_on_DRG_dropdown_menu_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnDRGDropdownMenuPresentOnThePatientOverviewPage();
    }

    @Then("^I Search DRG (\\d+) on the search box on the DRG present on the patient overview page$")
    public void i_Search_DRG_on_the_search_box_on_the_DRG_present_on_the_patient_overview_page(int DRG) throws Throwable {
        patientsPage.iSearchDRGOnTheSearchBoxOnTheDRGPresentOnThePatientOverviewPage(DRG);
    }

    @Then("^I select RESPIRATORY INFECTIONS & INFLAMATIONS from the DRG list present on the patient overview page$")
    public void i_select_RESPIRATORY_INFECTIONS_INFLAMATIONS_from_the_DRG_list_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iSelectRespiratoryInfectionsInflationsFromTheDRGListPresentOnThePatientOverviewPage();
    }
    
    @Then("^I select MAJOR JOINT REPLACE OR REATTACH OF LOWER EXTRE from the DRG list present on the patient overview page$")
    public void i_select_MAJOR_JOINT_REPLACE_OR_REATTACH_OF_LOWER_EXTRE_from_the_DRG_list_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iSelectMajorJointReplaceOrReattachOfLowerExtreFromTheDRGListPresentOnThePatientOverviewPage();
    }

    @Then("^I click on Update Transition button present on the patient overview page$")
    public void i_click_on_Update_Transition_button_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnUpdateTransitionButtonPresentOnThePatientOverviewPage();
    }
    
    @Then("^I click on Create Transition button present on the patient overview page$")
    public void i_click_on_Create_Transition_button_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnUpdateTransitionButtonPresentOnThePatientOverviewPage();
    }

    @When("^I click on Last Name present on the Filter Page$")
    public void i_click_on_Last_Name_present_on_the_Filter_Page() throws Throwable {
        patientsPage.iClickOnLastNamePresentOnTheFilterPage();
    }

    @When("^I click on export button present on the Patient Page$")
    public void i_click_on_export_button_present_on_the_Patient_Page() throws Throwable {
        patientsPage.iClickOnExportButtonPresentOnThePatientPage();
    }

    @When("^I click on Select All checkbox present on the Patient Page$")
    public void i_click_on_Select_All_checkbox_present_on_the_Patient_Page() throws Throwable {
        patientsPage.iClickOnSelectAllCheckboxPresentOnThePatientPage();
    }

    @When("^I click on Export button present on export drawer box to export the Patient List$")
    public void i_click_on_Export_button_present_on_the_Patient_Page_to_export_the_Patient_List() throws Throwable {
        patientsPage.iClickOnExportButtonPresentOnThePatientPagetoExportThePatientList();
    }

    @When("^I click on Filter button present on Patient Page$")
    public void i_click_on_Filter_button_present_on_Patient_Page() throws Throwable {
        patientsPage.iClickOnFilterButtonPresentOnPatientPage();
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

    @Then("^I verify the total number of patients present on the Patients Page$")
    public void i_verify_the_total_number_of_patients_present_on_the_Patients_Page() throws Throwable {
        patientsPage.iVerifyTheTotalNumberOfPatientsPresentOnThePatientsPage();
    }
    
    @Then("^I verify the \"([^\"]*)\" patient appears on the Patients Page$")
    public void I_verify_the_patient_appears_on_the_Patients_Page(int count) throws Throwable {
        patientsPage.IverifythepatientappearsonthePatientsPage(count);
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
        patientsPage.iVerifyCareSettingFilterIsDisplayedUnderListOfFilterOptions();
    }

    @Then("^I verify Cooperation Metric Filter Filter is displayed under List of Filter Options$")
    public void i_verify_Cooperation_Metric_Filter_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
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

    @Then("^I verify Date Range is selected as default filter under Filter options$")
    public void i_verify_Date_Range_is_selected_as_default_filter_under_Filter_options() throws Throwable {
        patientsPage.iVerifyDateRangeIsSelectedAsDefaultFilterUnderFilterOptions();
    }

    @Then("^I verify Care Setting is selected as default filter under Filter options$")
    public void i_verify_Care_Setting_is_selected_as_default_filter_under_Filter_options() throws Throwable {
        patientsPage.iVerifyCareSettingIsSelectedAsDefaultFilterUnderFilterOptions();
    }

    @Then("^I verify Initiator is selected as default filter under Filter options$")
    public void i_verify_Initiator_is_selected_as_default_filter_under_Filter_options() throws Throwable {
        patientsPage.iVerifyInitiatorIsSelectedAsDefaultFilterUnderFilterOptions();
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

    @Then("^I verify following filter is displayed under list of filter options$")
    public void i_verify_Filter_is_displayed_under_List_of_Filter_Options(List<String> filtersLinks) throws Throwable {
        for (int i = 0; i < filtersLinks.size(); i++) {
            //System.out.println(filtersLinks.get(i));
            patientsPage.iVerifyFollowingFiltersPresentOnPatientPage(filtersLinks.get(i));
        }
    }

    @When("^I click on Admit Reason Filter present on Filter Page$")
    public void i_click_on_Admit_Reason_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnAdmitReasonFilterPresentOnFilterPage();
    }

    @When("^I type ([^\"]*) in the search field on patients page$")
    public void i_type_in_the_search_field_on_patients_page(String admitReason) throws Throwable {
        patientsPage.i_type_in_the_search_field_on_patients_page(admitReason);
    }

    @When("^I click on Care Plan Filter present on Filter Page$")
    public void i_click_on_Care_Plan_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnCarePlanFilterPresentOnFilterPage();
    }

    @When("^I click on created radio button present on Filter Page$")
    public void i_click_on_created_radio_button_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnCreatedRadioButtonPresentOnFilterPage();
    }

    @Then("^I click on Inpatient checkbox under care setting present on the Filter Page$")
    public void i_click_on_Inpatient_checkbox_under_care_setting_present_on_the_Filter_Page() throws Throwable {
        patientsPage.iClickOnInpatientCheckboxUnderCareSettingPresentOnTheFilterPage();
    }

    @Then("^I verify Cooperation Metric Filter is displayed under List of Filter Options$")
    public void i_verify_Cooperation_Metric_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyCooperationMetricFilterDisplayedUnderListOfFilterOptions();
    }

    @When("^I click on Cooperation Metric Filter present on Filter Page$")
    public void i_click_on_Cooperation_Metric_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnCooperationMetricFilterPresentOnTheFilterPage();
    }

    @When("^I Click on \"([^\"]*)\" checkbox under Cooperation Metric present on the Filter Page$")
    public void i_Click_on_assigned_checkbox_under_Cooperation_Metric_present_on_the_Filter_Page(String text) throws Throwable {
        patientsPage.iClickOnAssignedCheckboxUnderCooperationMetricPresentOnTheFilterPage(text);
    }

    @When("^I click on Current Facility Filter present on Filter Page$")
    public void i_click_on_Current_Facility_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnCurrentFacilityFilterPresentOnFilterPage();
    }

    @When("^I click on Current Facility dropdown present on Filter Page$")
    public void i_click_on_Current_Facility_dropdown_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnCurrentFacilityDropdownPresentOnFilterPage();
    }

    @When("^I click on Daily Report Filter present on Filter Page$")
    public void i_click_on_Daily_Report_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnDailyReportFilterPresentOnFilterPage();
    }

    @When("^I click on Inpatient Episodes radio button present on Filter Page$")
    public void i_click_on_Inpatient_Episodes_radio_button_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnInpatientEpisodesRadioButtonPresentOnFilterPage();
    }

    @When("^I click on Date Range dropdown present on Filter Page$")
    public void i_click_on_Date_Range_dropdown_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnDateRangeDropdownPresentOnFilterPage();
    }

    @Then("^I click on (\\d+) Days present on the filter page$")
    public void i_click_on_Days_present_on_the_filter_page(int days) throws Throwable {
        patientsPage.iClickOnDaysresentPresentOnFilterPage(days);
    }

    @When("^I click on Add Patient button present on the patients page$")
    public void i_click_on_Add_Patient_button_present_on_the_patients_page() throws Throwable {
        patientsPage.iClickOnAddPatientButtonPresentOnThePatientsPage();
    }

    @Then("^I enter \"([^\"]*)\" in the first name text box present on the Add Patient page$")
    public void i_enter_in_the_first_name_text_box_present_on_the_Add_Patient_page(String firstname) throws Throwable {
        patientsPage.iEnterDetailsInTextFieldPresentOnAddPatientModal("firstName", firstname);
    }

    @Then("^I enter \"([^\"]*)\" in the last name text box present on the Add Patient page$")
    public void i_enter_in_the_last_name_text_box_present_on_the_Add_Patient_page(String lastname) throws Throwable {
        patientsPage.iEnterDetailsInTextFieldPresentOnAddPatientModal("lastName", lastname);
    }

    @Then("^I enter date of birth \"([^\"]*)\" present on the Add Patient Page$")
    public void i_enter_date_of_birth_present_on_the_Add_Patient_Page(String dateOfBirth) throws Throwable {
        patientsPage.iEnterDetailsInTextFieldPresentOnAddPatientModal("dob", dateOfBirth);
    }

    @Then("^I selected \"([^\"]*)\" from the gender drop down list present on the Add Patient page$")
    public void i_selected_from_the_gender_drop_down_list_present_on_the_Add_Patient_page(String gender) throws Throwable {
        patientsPage.iSelecteOptionFromDropdownListPresentOnTheAddPatientPage("gender", gender);
    }

    @When("^I click on Admitting Facility present on the Add Patient page$")
    public void i_click_on_Admitting_Facility_present_on_the_Add_Patient_page() throws Throwable {
        patientsPage.iClickOnAdmittingFacilityPresentOnTheAddPatientPage();
    }

    @When("^I Select \"([^\"]*)\" from the list of admitting facility present on the Add Patient page$")
    public void i_Select_from_the_list_of_admitting_facility_present_on_the_Add_Patient_page(String facility) throws Throwable {
        patientsPage.iSelectFromTheListOfAdmittingFacilityPresentOnTheAddPatientPage(facility);
    }
    
    @When("^I Select \"([^\"]*)\" from the admitting facility present on the Add Patient page$")
    public void i_Select_from_the_admitting_facility_present_on_the_Add_Patient_page(String facility) throws Throwable {
        patientsPage.iSelectFromTheAdmittingFacilityPresentOnTheAddPatientPage(facility);
    }

    @When("^I enter \"([^\"]*)\" in the Medicare ID present on the Add Patient page$")
    public void i_enter_in_the_Medicare_ID_present_on_the_Add_Patient_page(String medicareID) throws Throwable {
        patientsPage.iEnterDetailsInTextFieldPresentOnAddPatientModal("medicareId", medicareID);
    }

    @Then("^I click on the next button present on the Add Patient page$")
    public void i_click_on_the_next_button_present_on_the_Add_Patient_page() throws Throwable {
        patientsPage.iClickOnTheNextButtonPresentOnTheAddPatientPage();
    }
    
    @Then("^I click on the next button present on the Primary Care Physician Information page$")
    public void i_click_on_the_next_button_present_on_the_Primary_Care_Physician_Information_page() throws Throwable {
        patientsPage.iClickOnTheNextButtonPresentOnTheAddPatientPage();
    }

    @When("^I click on Calender button present on the Add Patient page$")
    public void i_click_on_Calender_button_present_on_the_Add_Patient_page() throws Throwable {
        patientsPage.iClickOnCalenderButtonPresentOnTheAddPatientPage();
    }
   
    @Then ("^I click on the Cancel Button on the New Transition on Add Patient page$")
    public void I_click_on_the_Cancel_Button_on_the_New_Transition_on_Add_Patient_page()
    {
    	patientsPage.IclickontheCancelButtonontheNewTransitiononAddPatientpage();
    }
    @When("^I select today's date as the admission date$")
    public void i_select_today_s_date_as_the_admission_date() throws Throwable {
        patientsPage.iSelectTodaysDateAsTheAdmissionDate();
    }

    @When("^I select \"([^\"]*)\" from admission care type drop down menu present on Add Patient page$")
    public void i_select_from_the_care_type_drop_down_menu_present_on_the_Add_Patient_page(String careType) throws Throwable {
        patientsPage.iSelectInpatientFromAdmissionCareTypeDropdownPresentOnAddPatientPage(careType);
    }

    @When("^I click on Add Transition button present on the Add Patient page$")
    public void i_click_on_Add_Transition_button_present_on_the_Add_Patient_page() throws Throwable {
        patientsPage.iClickOnAddTransitionButtonPresentOnTheAddPatientPage();
    }

    @When("^I click on Agree button present on the Attestation page$")
    public void i_click_on_Agree_button_present_on_the_Attestation_page() throws Throwable {
    	 patientsPage.iClickOnAttestationButtonPresentOnThePatientCard();
    }

    @And("^I switch to Add Patient embedded iframe$")
    public void iSwitchToAddPatientEmbeddedIframe() throws Throwable {
        patientsPage.iSwitchToAddPatientEmbeddedIframe();
    }

    @Then("^I verify \"([^\"]*)\" text is present on the add patient page$")
    public void i_verify_text_is_present_on_the_add_patient_page(String text) throws Throwable {
        patientsPage.iVerifyTextIsPresentOnTheAddPatientPage(text);
    }

    @Then("^I verify \"([^\"]*)\"  is present \"([^\"]*)\" on the transition page$")
    public void i_verify_is_present_on_the_transition_page(String text, String columnName) throws Throwable {
        patientsPage.iVerifyIsPresentOnTheTransitionPage(text, columnName);
    }

    @Then("^I verify Admit Date is present on the transition page$")
    public void i_verify_Admit_Date_is_present_on_the_transition_page() throws Throwable {
        patientsPage.iVerifyAdmitDateIsPresentOnTheTransitionPage();
    }

    @When("^I click on DRG Type Filter present on Filter Page$")
    public void i_click_on_DRG_Type_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnDRGTypeFilterPresentOnFilterPage();
    }

    @Then("^I click on possible radio button under drg type filter option$")
    public void i_click_on_possible_radio_button_under_DRG_Type_filter_option() throws Throwable {
        patientsPage.iClickOnPossibleRadioButtonUnderDRGTypeFilter();
    }

    @Then("^I verify eligibility Filter is displayed under List of Filter Options$")
    public void i_verify_eligibility_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyEligibilityFilterIsDisplayedUnderListOfFilterOptions();
    }

    @When("^I click on eligibility Filter present on Filter Page$")
    public void i_click_on_eligibility_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnEligibilityFilterPresentOnFilterPage();
    }

    @Then("^I click on eligible checkbox under eligible filter option$")
    public void i_click_on_eligibile_checkbox_under_eligible_filter_option() throws Throwable {
        patientsPage.iClickOnEligibileCheckboxUnderEligibleFilterOption();
    }

    @Then("^I verify episode DRG Filter is displayed under List of Filter Options$")
    public void i_verify_episode_DRG_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyEpisodeDRGFilterIsDisplayedUnderListOfFilterOptions();
    }

    @When("^I click on episode DRG Filter present on Filter Page$")
    public void i_click_on_episode_DRG_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnEpisodeDRGFilterPresentOnFilterPage();
    }

    @Then("^I click on drg type checkbox under filter option$")
    public void i_click_on_drg_type_checkbox_under_filter_option() throws Throwable {
        patientsPage.iClickOnDrgTypeCheckboxUnderFilterOption();
    }

    @Then("^I verify episode status Filter is displayed under List of Filter Options$")
    public void i_verify_episode_status_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyEpisodeStatusFilterIsDisplayedUnderListOfFilterOptions();
    }

    @When("^I click on episode status Filter present on Filter Page$")
    public void i_click_on_episode_status_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnEpisodeStatusFilterPresentOnFilterPage();
    }

    @Then("^I click on active checkbox under episode status filter option$")
    public void i_click_on_episode_status_checkbox_under_filter_option() throws Throwable {
        patientsPage.iClickOnEpisodeStatusCheckboxUnderFilterOption();
    }

    @Then("^I verify first name Filter is displayed under List of Filter Options$")
    public void i_verify_first_name_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyFirstNameFilterIsDisplayedUnderListOfFilterOptions();
    }

    @When("^I click on first name Filter present on Filter Page$")
    public void i_click_on_first_name_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnFirstNameFilterPresentOnFilterPage();
    }

    @Then("^I enter ([^\"]*) under first name filter$")
    public void i_enter_under_first_name_filter(String patient) throws Throwable {
        patientsPage.iEnterUnderFirstNameFilter(patient);
    }

    @Then("^I verify gender Filter is displayed under List of Filter Options$")
    public void i_verify_gender_Filter_is_displayed_under_List_of_Filter_Options() throws Throwable {
        patientsPage.iVerifyGenderFilterIsDisplayedUnderListOfFilterOptions();
    }

    @When("^I click on gender Filter present on Filter Page$")
    public void i_click_on_gender_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnGenderFilterPresentOnFilterPage();
    }

    @When("^I select the gender from the gender filter list$")
    public void i_select_the_gender_from_the_gender_filtr_list() throws Throwable {
        patientsPage.iSelectTheGenderFromTheGenderFilterList();
    }

    @When("^I click \"([^\"]*)\" initiator from filter list$")
    public void i_click_initiator_from_filter_list(String initiator) throws Throwable {
        patientsPage.iSelectInitiatorFromFilterList(initiator);
    }

    @When("^I click on inpatient location Filter present on Filter Page$")
    public void i_click_on_inpatient_location_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnInpatientLocationFilterPresentOnFilterPage();
    }

    @When("^I enter ([^\"]*) under inpatient location filter$")
    public void i_enter_under_inpatient_location_Filter(String text) throws Throwable {
        patientsPage.iEnterUnderInpatientLocationFilter(text);
    }

    @When("^I click on last name Filter present on Filter Page$")
    public void i_click_on_last_name_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnLastNamePresentOnTheFilterPage();
    }

    @Then("^I enter \"([^\"]*)\" under last name filter$")
    public void i_enter_under_last_name_filter(String patient) throws Throwable {
        patientsPage.iEnterUnderLastNameFilter(patient);
    }

    @Then("^I verify MedicareID Filter is displayed under List of Filter Options$")
    public void i_verify_medicareid_filter_is_displayed_under_list_of_filter_option() throws Throwable {
        patientsPage.iVerifyMedicareIDFilterIsDisplayedUnderListOfFilterOptions();
    }

    @When("^I click on MedicareID Filter present on Filter Page$")
    public void i_click_on_medicareid_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnMedicareidFilter();
    }

    @Then("^I enter ([^\"]*) under medicareid filter$")
    public void i_enter_under_medicareid_filter(String medicareid) throws Throwable {
        patientsPage.iEnterUnderMedicareidFilter(medicareid);
    }

    @When("^I click on Payer Filter present on Filter Page$")
    public void i_click_on_payer_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnPayerFilter();
    }

    @Then("^I enter ([^\"]*) under payer filter$")
    public void i_enter_under_payer_filter(String payer) throws Throwable {
        patientsPage.iEnterUnderPayerFilter(payer);
    }

    @When("^I click on Quality Metric Filter present on Filter Page$")
    public void i_click_on_quality_metric_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnQualityMetricFilter();
    }

    @Then("^I click on \"([^\"]*)\" checkbox under quality metric filter$")
    public void i_click_on_checkbox_under_quality_metric_filter(String text) throws Throwable {
        patientsPage.iClickOnCheckboxUnderQualityMetricFilter(text);
    }

    @When("^I click on Readmission Count Filter present on Filter Page$")
    public void i_click_on_readmission_count_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnReadmissionCountFilter();
    }

    @Then("^I enter from ([^\"]*) to ([^\"]*) under readmission filter$")
    public void i_enter_from_to_under_readmission_filter(String arg1, String arg2) throws Throwable {
        patientsPage.iEnterFromToUnderReadmissionFilter(arg1, arg2);
    }

    @When("^I click on Risk Assessment Filter present on Filter Page$")
    public void i_click_on_risk_assessment_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnRiskAssessmentFilter();
    }

    @Then("^I click on \"([^\"]*)\" checkbox under risk assessment filter$")
    public void i_click_on_checkbox_under_risk_assessment_filter(String text) throws Throwable {
        patientsPage.iClickOnCheckboxUnderRiskAssessmentFilter(text);
    }

    @When("^I click on SSN Filter present on Filter Page$")
    public void i_click_on_ssn_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnSSNFilter();
    }

    @Then("^I enter ([^\"]*) under ssn filter$")
    public void i_enter_under_ssn_filter(String ssn) throws Throwable {
        patientsPage.iEnterUnderSSNFilter(ssn);
    }

    @When("^I click on Tags Filter present on Filter Page$")
    public void i_click_on_tags_Filter_present_on_Filter_Page() throws Throwable {
        patientsPage.iClickOnTagsFilter();
    }

    @Then("^I click on \"([^\"]*)\" checkbox under tags filter$")
    public void i_click_on_checkbox_under_tags_filter(String text) throws Throwable {
        patientsPage.iClickOnCheckboxUnderTagsFilter(text);
    }


    @Then("^I verify Admit Section is present on the patient card on the inpatient page$")
    public void i_verify_admit_section_is_present_on_the_patient_card_on_the_inpatient_page() throws Throwable {
        patientsPage.iVerifyAdmitSectionIsPresentOnThePatientCard();
    }

    @Then("^I verify Inpatient Status is present on the patient card on the inpatient page$")
    public void i_verify_inpatient_status_is_present_on_the_patient_card_on_the_inpatient_page() throws Throwable {
        patientsPage.iVerifyInpatientStatusIsPresentOnThePatientCard();
    }

    @Then("^I verify Admission Reason is present on the patient card on the inpatient page$")
    public void i_verify_admission_reason_is_present_on_the_patient_card_on_the_inpatient_page() throws Throwable {
        patientsPage.iVerifyAdmissionReasonIsPresentOnThePatientCard();
    }

    @Then("^I should see search box appearing on the patients page$")
    public void i_should_see_search_box_appearing_on_the_patients_page() throws Throwable {
        patientsPage.iShouldSeeSearchBoxAppearingOnThePatientsPage();
    }

    @Then("^I enter \"([^\"]*)\" in the search box on the patients page$")
    public void i_enter_and_in_the_searchbox_on_the_patients_page(String search) throws Throwable {
        patientsPage.iEnterInIheSearchbox(search);
    }

    @Then("I verify \"([^\"]*)\" button is present for few patients on patient cards for non remedy users$")
    public void i_verify_agree_button_is_appearing_for_few_patients_on_patient_cards(String element) throws Throwable {
        patientsPage.iVerifyAgreeButtonIsAppearing(element);
    }

    @Then("I verify \"([^\"]*)\" button is not present for patients on patient cards for remedy users$")
    public void i_verify_agree_button_is_not_present_for_patients_on_patient_cards(String element) throws Throwable {
        patientsPage.iVerifyAgreeButtonIsNotPresent(element);
    }

    @Then("^I click on \"([^\"]*)\" filter tab present on the patients page$")
    public void i_click_on_filter_tab_present_on_the_patients_page(String filtertab) throws Throwable {
        patientsPage.iClickOnFilterTabPresentOnThePatientsPage(filtertab);
    }

    @Then("^I click on the patient name present on the patient list$")
    public void i_click_on_the_patient_name_present_on_the_patient_list() throws Throwable {
        patientsPage.iClickOnThePatientNamePresentOnThePatientList();
    }

    @Then("^I click on new transition button present on the patient overview page$")
    public void i_click_on_new_transition_button_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnNewTransitionButtonPresentOnThePatientOverviewPage();
    }

    @Then("^I click on the calender button present on the new tranition page$")
    public void i_click_on_the_calender_button_present_on_the_new_tranition_page() throws Throwable {
        patientsPage.iClickOnTheCalenderButtonPresentOnTheNewTranitionPage();
    }

    @Then("^I select \"([^\"]*)\" from the care setting dropdown present on the add transition page$")
    public void i_select_from_the_care_setting_dropdown_present_on_the_add_transition_page(String option) throws Throwable {
        patientsPage.iSelectFromTheCareSettingDropdownPresentOnTheAddTransitionPage(option);
    }

    @Then("^I select \"([^\"]*)\" from admission care type drop down menu present on Add transition page$")
    public void i_select_from_admission_care_type_drop_down_menu_present_on_Add_transition_page(String option) throws Throwable {
        patientsPage.iSelectFromAdmissionCareTypeDropdownPresentOnTheAddTransitionPage(option);
    }

    @When("^I click on Admitting Facility present on the Add transition page$")
    public void i_click_on_Admitting_Facility_present_on_the_Add_transition_page() throws Throwable {
        patientsPage.iClickOnAdmittingFacilityPresentOnTheAddTransitionPage();
    }

    @When("^I Select \"([^\"]*)\" from the list of admitting facility present on the Add transition page$")
    public void i_Select_from_the_list_of_admitting_facility_present_on_the_Add_transition_page(String facility) throws Throwable {
        patientsPage.iSelectFromTheListOfAdmittingFacilityPresentOnTheAddTransitionPage(facility);
    }

    @Then("^I click on edit button present on the patient overview page$")
    public void i_click_on_edit_button_present_on_the_patient_overview_page() throws Throwable {
        patientsPage.iClickOnEditButtonPresentOnThePatientOverviewPage();
    }

    @Then("^I should see \"([^\"]*)\" button is present on the Edit Episode Initiator modal$")
    public void i_should_see_button_is_present_on_the_Edit_Episode_Initiator_modal(String button) throws Throwable {
        patientsPage.iShouldSeeButtonIsPresentOnTheEditEpisodeInitiatorModal(button);
    }

    @When("^I click on the Episode Initiator dropdown present on the Edit Episode Initiator modal$")
    public void i_click_on_the_Episode_Initiator_dropdown_present_on_the_Edit_Episode_Initiator_modal() throws Throwable {
        patientsPage.iClickOnTheEpisodeInitiatorDropdownPresentOnTheEditEpisodeInitiatorModal();
    }

    @Then("^I should see \"([^\"]*)\" option is present on the Edit Episode Initiator modal$")
    public void i_should_see_option_is_present_on_the_Edit_Episode_Initiator_modal(String option) throws Throwable {
        patientsPage.iShouldSeeOptionIsPresentOnTheEditEpisodeInitiatorModal(option);
    }

    @Then("^I click on the \"([^\"]*)\" button present on the Edit Episode Initiator modal$")
    public void i_click_on_the_button_present_on_the_Edit_Episode_Initiator_modal(String button) throws Throwable {
        patientsPage.iClickOnTheButtonPresentOnTheEditEpisodeInitiatorModal(button);
    }

    @Then("^I enter ([^\"]*) in the search text box present on the patients page$")
    public void i_enter_in_the_search_text_box_present_on_the_patients_page(String firstname) throws Throwable {
        patientsPage.iEnterInTheSearchTextBoxPresentOnTheAddPatientPage(firstname);
    }

    @Then("^I verify ([^\"]*) and ([^\"]*) is displayed on the patient card$")
    public void i_verify_and_is_displayed_on_the_patient_card(String firstname, String lastname) throws Throwable {
        patientsPage.iVerifyAndIsDisplayedOnThePatientCard(firstname, lastname);
    }

    @Then("^I click on attestation button present on the patient card$")
    public void i_click_on_attestation_button_present_on_the_patient_card() throws Throwable {
        patientsPage.iClickOnAttestationButtonPresentOnThePatientCard();
    }


    @Then("^I verify patient having either ([^\"]*) first name or ([^\"]*) last name on patient page$")
    public void i_verify_patient_having_either_fname_or_lname_on_patient_page(String userFname, String userLname) throws Throwable {
        Assert.assertTrue(patientsPage.isAllCorrectPatientsReturnAfterPatientSearch(userFname, userLname));
    }

    @Then("^I should see Episode Initiator appearing under transitions table$")
    public void i_should_see_episode_initiator_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeEpisodeInitiatorAppearingUnderTransitionsPage();
    }

    @Then("^I should verify Actions symbol is appearing under transition table$")
    public void i_should_verify_is_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldVerifyIsAppearingUnderTransitionsPage();
    }

    @Then("^I should see Facility appearing under transitions table$")
    public void i_should_see_facility_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeFacilityAppearingUnderTransitionsPage();
    }

    @Then("^I should see Admit Date appearing under transitions table$")
    public void i_should_see_admit_date_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeAdmitDateAppearingUnderTransitionsPage();
    }

    @Then("^I should see Admit Reason appearing under transitions table$")
    public void i_should_see_admit_reason_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeAdmitReasonAppearingUnderTransitionsPage();
    }

    @Then("^I should see Admit Type appearing under transitions table$")
    public void i_should_see_admit_type_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeAdmitTypeAppearingUnderTransitionsPage();
    }

    @Then("^I should see Discharge Date appearing under transitions table$")
    public void i_should_see_discharge_date_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeDischargeDateAppearingUnderTransitionsPage();
    }

    @Then("^I should see Discharge Location appearing under transitions table$")
    public void i_should_see_discharge_location_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeDischargeLocationAppearingUnderTransitionsPage();
    }

    @Then("^I should see PAPs appearing under transitions table$")
    public void i_should_see_PAPs_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeePAPsAppearingUnderTransitionsPage();
    }

    @Then("^I should see DRGs appearing under transitions table$")
    public void i_should_see_DRGs_column_appearing_under_transitions_page() throws Throwable {
        patientsPage.iShouldSeeDRGsAppearingUnderTransitionsPage();
    }

    @Then("^I click on edit present under actions symbol$")
    public void i_click_on_edit_present_under_actions_symbol() throws Throwable {
        patientsPage.iClickOnEditPresentUnderActionsSymbol();
    }

    @Then("^I should see \"([^\"]*)\" appearing on the transition page$")
    public void i_should_see_edit_transition_appearing(String text) throws Throwable {
        patientsPage.iShouldSeeEditTranisitionOnTransitionsPage(text);
    }

    @Then("^I click on Action symbol is appearing under transition table$")
    public void i_click_on_action_symbol() throws Throwable {
        patientsPage.iClickOnActionsSymbol();
    }

    @Then("^I click on delete to delete the transition$")
    public void i_click_on_delete_to_delete_the_transition() throws Throwable {
        patientsPage.iClickOnDeleteoftransition();
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing in the maximized view on patient summary page$")
    public void i_verify_is_appearing_in_the_maximized_view_on_patient_summary_page(String text) throws Throwable {
    	patientsPage.iVerifyHideSummaryText(text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing in the minimized view on patient summary page$")
    public void i_verify_is_appearing_in_the_minimized_view_on_patient_summary_page(String text) throws Throwable {
    	patientsPage.iVerifyShowSummaryText(text);
    }
    
    @Then("^I see firstname is appearing in minimized mode on patient summary page$")
    public void i_see_firstname_is_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeFirstNameMinimizedMode();
    }
    
    @Then("^I see lastname is appearing in minimized mode on patient summary page$")
    public void i_see_lastname_is_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeLastNameMinimizedMode();
    }
    
    @Then("^I see date of birth is appearing in minimized mode on patient summary page$")
    public void i_see_date_of_birth_is_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeDateOfBirthMinimizedMode();
    }
    
    @Then("^I see age is appearing in minimized mode on patient summary page$")
    public void i_see_age_is_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeAgeMinimizedMode();
    }
    
    @Then("^I see gender is appearing in minimized mode on patient summary page$")
    public void i_see_gender_is_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeGenderMinimizedMode();
    }
    
    @Then("^I see ssn is appearing in minimized mode on patient summary page$")
    public void i_see_ssn_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeSSNMinimizedMode();
    }
    
    @Then("^I see language is appearing in minimized mode on patient summary page$")
    public void i_see_language_is_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeLanguageMinimizedMode();
    }
    
    @Then("^I see risk score is appearing in minimized mode on patient summary page$")
    public void i_see_risk_score_is_appearing_in_minimized_mode_on_patient_summary_page() throws Throwable {
    	patientsPage.iSeeRiskScoreMinimizedMode();
    }
    
    @Then("^I verify \"([^\"]*)\" message is appearing after selecting the filter to export$")
    public void i_verify_message_is_appearing_after_selecting_the_filter_to_export(String text) throws Throwable {
    	patientsPage.iVerifyTextAfterSelectingFilterToExport(text);
    }

    @Then("^I verify ([^\"]*) is appearing under selected filters for Admit Reason$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_Admit_Reason(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Admit Reason: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Anchor Discharge Facility$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_anchor_discharge_facility(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Anchor Discharge Facility: "+text+" - Stamford (STAMFORD, CT) (HHH)");
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Anchor Facility$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_anchor_facility(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Anchor Facility: "+text+" - Stamford (STAMFORD, CT) (HHH)");
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Care Plan$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_care_plan(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Care Plan: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for care setting$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_care_setting(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Care Setting: (Hospital) "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Cooperation Metrics$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_cooperation_metrics(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Cooperation Metrics: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Current Facility$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_current_facility(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Current Facility: "+text+" (STAMFORD, CT) (OTHER)");
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Daily Report$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_daily_report(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Daily Report: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Date Range$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_date_range(String text) throws Throwable {
    	patientsPage.iSeeSelectedFilterText(text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for DRG Type$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_drg_type(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("DRG Type: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Eligibility$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_eligibility(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Eligibility: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Episode DRG$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_episode_drg(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Episode DRG: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Episode Status$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_episode_status(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Episode Status: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for First Name$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_First_Name(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("First Name: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Gender$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_gender(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Gender: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Initiator$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_initiator(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Initiator: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Inpatient Location$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_inpatient_location(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Inpatient Location: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Last Name$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_Last_Name(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Last Name: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Medicare ID$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_medicare_id(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Medicare ID: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Payer$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_payer(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Payer: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Quality Metrics$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_quality_metrics(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Quality Metrics: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for Readmission Count$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_readmission_count(String arg1) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Readmission Count: "+arg1);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Risk Assessment$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_risk_assessment(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Risk Assessment: "+text);
    }
    
    @Then("^I verify ([^\"]*) is appearing under selected filters for SSN$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_ssn(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("SSN: "+text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under selected filters for Tags$")
    public void i_verify_filter_is_appearing_under_selected_filters_for_selected_filters_for_tags(String text) throws Throwable {
    	patientsPage.iVerifySelectedFilterText("Tags: "+text);
    }
    
    @Then("^I click on \"([^\"]*)\" button appearing on the patient card after applying filter$")
    public void i_click_agree_button_on_patient_card_after_applying_filter(String button) throws Throwable {
    	patientsPage.iClickOnAgreeAfterApplyingFilter(button);
    }

    @Then("^I click on \"([^\"]*)\" worklist under \"([^\"]*)\" worklist on episode home page$")
    public void i_click_on_worklist_under_worklist_On_episode_home_page(String sworklist,String mworklist) throws Throwable {
        patientsPage.iClickOnWorklistOnEpisodeHomePage(sworklist, mworklist);
    }

    @Then ("^I click on the Impatient Tab on Patient page$")
    public void I_click_on_the_Impatient_Tab_on_Patient_page() throws Throwable {
    	patientsPage.IclickontheImpatientTabonPatientpage();
    }

    @Then("^I verify ([^\"]*) is appearing on patient card on patient home page$")
    public void i_verify_admit_reason_is_appearing_on_patient_card_on_patient_home_page(String admitreason) throws Throwable {
    	patientsPage.iSeeAdmitReasonFilterOnPatientCard(admitreason);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient summary page of patient$")
    public void i_verify_admit_reason_is_appearing_on_the_patient_summary_page_of_patient(String admitreason) throws Throwable {
    	patientsPage.iSeeAdmitReasonFilterOnPatientSummaryPage(admitreason);
    }
    
    @Then("^I Verify \"([^\"]*)\" value is containing \"([^\"]*)\" under patient summary page$")
    public void i_verify_anchor_facility_value_is_containing_under_patient_summary_page(String text,String facility) throws Throwable {
    	patientsPage.iVerifyAnchorFacilityFilterOnPatientSummary(text, facility);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing on patient card under \"([^\"]*)\" on patient home page$")
    public void i_verify_is_appearing_on_patient_card_under_on_patient_home_page(String text,String facility) throws Throwable {
    	patientsPage.IVerifyAnchorFaciltyOnPatientCard(text, facility);
    }
    
    @Then("^I click on \"([^\"]*)\" tab appearing under patient summary page to verify care plan created$")
    public void i_click_on_tab_appearing_under_patient_summary_page_to_verify_care_paln_created(String careplan) throws Throwable {
    	patientsPage.IClickOnCarePlanOnPatientSummary(careplan);
    }
    
    @Then("^I click on \"([^\"]*)\" tab appearing under patient summary page to verify medicareid$")
    public void i_click_on_tab_appearing_under_patient_summary_page_to_verify_medicareid(String medicareid) throws Throwable {
    	patientsPage.IClickOnPatientDetailsOnPatientSummary(medicareid);
    }
    
    @Then("^I verify care plan is appearing inside care plan tab on patient summary page$")
    public void i_verify_care_plan_is_appearing_inside_care_plan_tab_on_patient_summary_page() throws Throwable {
    	patientsPage.iVerifyCarePlanOnPatientSummary();
    }
    
    @Then("^I switch to ec2 patient summary iframe$")
    public void i_switch_to_ec2_patient_summary_careplan_iframe() throws Throwable {
    	patientsPage.iSwitchtoEc2PatientSummaryCarePlan("//iframe[@class='not-showing ng-scope']");
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under admit type column under patient summary transitions$")
    public void i_verify_is_appearing_under_admit_type_column_under_patient_summary_transitions(String text) throws Throwable {
    	patientsPage.iVerifyInpatientForCareSeting(text);
    }
    
    @Then("^I click on forms tab under careplan on patient summary page$")
    public void i_click_on_forms_tab_under_careplan_on_patient_summary_page() throws Throwable {
    	patientsPage.iClickOnFormsUnderCarePlan();
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing in forms under careplan on patient summary page$")
    public void i_verify_is_appearing_in_forms_under_careplan_on_patient_summary_page(String text) throws Throwable {
    	patientsPage.iVerifyassignedInFormsUnderCarePlan(text);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under facility column under patient summary transitions$")
    public void i_verify_is_appearing_under_facility_column_under_patient_summary_transitions(String facility) throws Throwable {
    	patientsPage.iVerifyFacilityColumnUnderTransitions(facility);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under drg status column under transitions on patient summary page$")
    public void i_verify_is_appearing_under_drg_status_column_under_transitions_on_patient_summary_page(String text) throws Throwable {
    	patientsPage.iVerifyDrgStatusInPatientSummary(text);
    }
    
    @When("^I switch to iframe of patient eligibility on patient summary page$")
    public void i_switch_to_iframe_of_patient_eligibility_on_patient_summary_page() throws Throwable {
    	patientsPage.iSwitchtoEligibilityFrameOnPatuentSummaryPage("//iframe[@id='iFrameEC2PatientEligibility']");
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing in eligibility dropdown on patient summary page$")
    public void i_verify_is_appearing_in_eligibility_dropdown_on_patient_summary_page(String eligibility) throws Throwable {
    	patientsPage.iVerifyEligibilityStatusOnPatientSummary(eligibility);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under episode drg column under transitions on patient summary page$")
    public void i_verify_is_appearing_under_episode_drg_column_under_transitions_on_patienT_summary_page(String text) throws Throwable {
    	patientsPage.iVerifyTextEpisodeDrgOnPatientSummaryPage(text);
    }
    
    @Then("^I search with ([^\"]*) in the episode drg searchbox$")
    public void i_search_with_in_the_episode_drg_searchbox(String drgid) throws Throwable {
    	patientsPage.iSearchWithDrgIdInEpisodeDrg(drgid);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient cards on the patient list page$")
    public void i_verify_firstname_is_appearing_on_the_patient_cards_on_the_patient_list_page(String firstname) throws Throwable {
    	patientsPage.iVerifyFirstNameOnPatientCardsOnPatientListPage(firstname);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient cards on the patient list page for lastname$")
    public void i_verify_lastname_is_appearing_on_the_patient_cards_on_the_patient_list_page(String lastname) throws Throwable {
    	patientsPage.iVerifyLastNameOnPatientCardsOnPatientListPage(lastname);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient summary page$")
    public void i_verify_is_appearing_on_the_patient_summary_page(String fname) throws Throwable {
    	patientsPage.iVerifyFirstNameOnPatientSummaryPage(", "+fname);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient summary page for lastname$")
    public void i_verify_lastname_is_appearing_on_the_patient_summary_page(String lname) throws Throwable {
    	patientsPage.iVerifyLastNameOnPatientSummaryPage(lname);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing on the patient cards on the patients home page$")
    public void i_verify_is_appearing_on_the_patient_cards_on_the_patients_home_page(String gender) throws Throwable {
    	patientsPage.iVerifyGenderOnPatientCards(gender);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing on the patient summary page$")
    public void i_verify_gender_is_appearing_on_the_patient_summary_page(String gender) throws Throwable {
    	patientsPage.iVerifyGenderOnPatientSumamry(gender);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under initiator on the patient summary page$")
    public void i_verify_is_appearing_under_initiator_on_the_patient_summary_page(String initiator) throws Throwable {
    	patientsPage.iVerifyInitiatorOnPatientSummary(initiator);
    }
    
    @Then("^I verify \"([^\"]*)\" initiator is appearing on the patient card on patient list home page$")
    public void i_verify_initiator_is_appearing_on_the_patient_card_on_patient_list_home_page(String initiator) throws Throwable {
    	patientsPage.iVerifyInitiatorOnPatientCard(initiator);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient summary page to verify medicareid$")
    public void i_verify_is_appearing_on_the_patient_summary_page_to_verify_medicareid(String medicareid) throws Throwable {
    	patientsPage.iVerifyMemberIdOnPatientSummaryPage(medicareid);
    }
    
    @Then ("^I click on the Patient Details tab on the patient summary page$")
    public void I_click_on_the_Patient_Details_tab_on_the_patient_summary_page() throws Throwable {
    	patientsPage.IclickonthePatientDetailstabonthepatientsummarypage();
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient summary page to verify ssn$")
    public void i_verify_is_appearing_on_the_patient_summary_page_to_verify_ssn(String ssn) throws Throwable {
    	patientsPage.iVerifySsnOnPatientSummaryPage(ssn);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient card readmission count$")
    public void i_verify_is_appearing_on_the_patient_card_readmission_count(String count) throws Throwable {
    	patientsPage.iVerifyReadmissionCountOnPatientCard(count);
    }
    
    @Then("^I verify \"([^\"]*)\" label is appearing on the patient card beside readmission count$")
    public void i_verify_label_is_appearing_on_the_patient_card_beside_readmission_count(String text) throws Throwable {
    	patientsPage.iVerifyReadmissionTextOnPatientCard(text);
    }
    
    @Then("^I verify ([^\"]*) is appearing on the patient summary page for readmission count$")
    public void i_verify_is_appearing_on_the_patient_summary_page_for_readmission_count(String count) throws Throwable {
    	patientsPage.iVerifyReadmissionCountOnPatientCard(count);
    }
    
    @Then("^I verify \"([^\"]*)\" label is appearing on the patient summary page beside readmission count$")
    public void i_verify_label_is_appearing_on_the_patient_summary_page_beside_readmission_count(String text) throws Throwable {
    	patientsPage.iVerifyReadmissionTextOnPatientCard(text);
    }
    
    @Then("^I verify \"([^\"]*)\" risk status is appearing on the patient summary page$")
    public void i_verify_risk_status_is_appearing_on_the_patient_summary_page(String text) throws Throwable {
    	patientsPage.iVerifyRiskStatusOnPatientSummary(text);
    }
    
    @Then("^I swich to patient tags iframe on patient summary page$")
    public void i_switch_to_patient_tags_iframe_on_patient_summary_page() throws Throwable {
    	patientsPage.iSitchtoPatientTagsIframe("//iframe[@id='iFrameEC2PatientTags']");
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing on patient summary page below tags$")
    public void i_verify_is_appearing_on_patient_summary_page_below_tags(String tags) throws Throwable {
    	patientsPage.iVerifyPatientTags(tags);
    }
   
    @Then ("^I click on the \"([^\"]*)\" tab appearing under care plan frame on patient summary page$")
    public void I_click_on_the_notes_tab_appearing_under_care_plan_frame_on_patient_summary_page() throws Throwable {
    	patientsPage.Iclickonthenotestabappearingundercareplanframeonpatientsummarypage();
    }
   
    @Then ("^I verify the notes created in the episode1 should not appear in the notes section in care plan in episode2$")
    public void I_verify_the_notes_created_in_the_episode1_should_not_appear_in_the_notes_section_in_care_plan_in_episode2() throws Throwable {
    	patientsPage.Iverifythenotescreatedintheepisode1shouldnotappearinthenotessectionincareplaninepisode2();
    }
    
    }
