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

    @Then("^I should see Filters button present on patients page$")
    public void i_should_see_filter_button_present_on_patient_page() throws Throwable {
        patientsPage.iVerifyElementTextPresentOnPatientPage(By.xpath("//button[span[span[contains(text(),'Filters')]]]"),"Filter");
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
        patientsPage.iVerifyElementTextPresentOnPatientPage(By.xpath("//strong[@class='sort-select-label']"),"Sort by:");
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

    @When("^I type \"([^\"]*)\" in the search field to search the Anchor Discharge Facilty$")
    public void i_type_in_the_search_field_to_search_the_Anchor_Discharge_Facilty(String Facility) throws Throwable {
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
    
    @When("^I type \"([^\"]*)\" in the search field to search the Anchor Facility$")
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
    	patientsPage.iVerifyExpandButtonIsPresentInThePatientCardHeaderOnPatientPage();
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
}
