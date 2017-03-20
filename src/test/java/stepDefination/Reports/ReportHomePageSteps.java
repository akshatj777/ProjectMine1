package stepDefination.Reports;

import com.remedy.Reports.ReportHomePage;
import com.remedy.resources.DriverScript;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.openqa.selenium.By;

import java.util.List;

/**
 * Created by salam on 5/10/16.
 */
public class ReportHomePageSteps extends DriverScript {

    ReportHomePage reportHomePage = new ReportHomePage(driver);

    @And("^I should see Reports Tile text as ([^\"]*)$")
    public void iShouldSeeReportsTileTextAs(String text) throws Throwable {
        reportHomePage.iVerifyReportsTextforTiles(text);
    }
    
    @And("^I should not see Reports Tile text as ([^\"]*)$")
    public void iShouldNotSeeReportsTileTextAs(String element) throws Throwable {
        reportHomePage.iVerifyReportsTextNotPresent(element);
    }

    @And("^I click on the Reports Tile with text \"([^\"]*)\"$")
    public void iClickReportTileWithText(String tile) throws Throwable {
        reportHomePage.iClickOnReportTileWithText(tile);
    }

    @And("^I should see \"([^\"]*)\" Reports text for \"([^\"]*)\" reports$")
    public void iShouldSeeReportsTextForOverallProgram(String tile, String reportsTextName) throws Throwable {
        reportHomePage.iVerifyReportsTextForReportsTextName(reportsTextName, tile);
    }

    @And("^I click on \"([^\"]*)\" report text for Overall Program Reports$")
    public void iClickTextForOverallProgramReports(String text) throws Throwable {
        reportHomePage.iClickOnReportTextForOverallProgramReportTile(text);
    }

    @And("^I should see \"([^\"]*)\" in the reports header page$")
    public void iShouldSeeReportsTextHeaderPage(String headerText) throws Throwable {
        reportHomePage.iVerifyReportsPageHeaderText(headerText);
    }

    @And("^I switch to reports embedded iframe$")
    public void iShouSeeReportsTheReportsHeaderPage() throws Throwable {
        reportHomePage.iSwitchToReportsPageFrameWithXpath("//iframe[@class='embedded-iframe']");
    }

    @And("^I should see performance reports column Tile text as \"([^\"]*)\"$")
    public void iShouldSeePerformanceReportsColumnTileTextAs(String tile) throws Throwable {
        reportHomePage.iVerifyPerformanceReportsColumnsTitleText(tile);
    }

    @And("^I click on field-panel-icon button$")
    public void iClickFieldPaneliconButton() throws Throwable {
        reportHomePage.iClickReportFieldPanelIconButton();
    }

    @And("I move the mouse to \"([^\"]*)\" field filter under \"([^\"]*)\" filter field$")
    public void iMoveMouseToFieldFilterUnderFilterField(String filterField, String filterTitle) throws Throwable {
        reportHomePage.iMoveToElementToPerform(".//*[@id='fieldListTree']//div[@formula='["+filterTitle+"].["+filterField+"]']");
    }

    @And("I click to \"([^\"]*)\" field filter under \"([^\"]*)\" filter field$")
    public void iClickToFieldFilterUnderFilterField(String filterField, String filterTitle) throws Throwable {
        reportHomePage.iMoveToElementAndPerformRightClick(".//*[@id='fieldListTreeContent']//div[@formula='["+filterTitle+"].["+filterField+"]']");
    }

    @And("^I choose \"([^\"]*)\" option from select options of filter field$")
    public void iChooseOptionFromSelectOptionsFilterField(String optionText) throws Throwable {
        reportHomePage.iChooseOptionsFromFilterWithXpath("//td[@id='cmdField"+optionText+"_text']");
    }

    @And("^I should see \"([^\"]*)\" in the header text of filter page$")
    public void iShouldSeeFilterOnHeaderTextFilterPage(String appliedFilter) throws Throwable {
        reportHomePage.iVerifyFilterModalHeaderText("Filter on "+appliedFilter);
    }

    @Then("^I should see \"([^\"]*)\" in the filter value list$")
    public void i_should_see_in_the_filter_value_list(String filterText) throws Throwable {
        reportHomePage.iVerifyFilterValueListModalText(filterText);
    }

    @And("^I click on \"([^\"]*)\" in the filter value list$")
    public void i_click_on_in_the_filter_value_list(String filterText) throws Throwable {
         reportHomePage.iClickOnFilterTextFormFilterValueList(filterText);
    }

    @And("^I click on add selected in the filter modal$")
    public void i_click_on_add_selected_in_the_filter_modal() throws Throwable {
        reportHomePage.iClickAddSelectedArrowFromFilterModal();
    }

    @And("^I click on ok button from filter$")
    public void i_click_on_ok_button_from_filter() throws Throwable {
        reportHomePage.iClickOkButtonFromFilterModal();
    }

    @And("^I click on cancel button from filter$")
    public void i_click_on_cancel_button_from_filter() throws Throwable {
        reportHomePage.iClickCancelButtonFromFilterModal();
    }

    @And("^I click on close reports cross icon on report page$")
    public void i_click_on_close_report_cross_icon_report_page() throws Throwable {
        reportHomePage.iClickOnCloseReportsCrossLink();
    }

    @Then("^I should see following Reports text for Overall Program reports$")
    public void i_should_see_following_Reports_text_for_Overall_Program_reports(List<String> reportLinks) throws Throwable {
         for (int i=0; i<reportLinks.size(); i++) {
            //System.out.println(reportLinks.get(i));
            reportHomePage.iVerifyFollowingReportsTextsForReportsTile("Overall Program", reportLinks.get(i));
        }
    }

    @Then("^I should see \"([^\"]*)\" result in \"([^\"]*)\" field column for \"([^\"]*)\" filter field$")
    public void i_should_see_result_in_field_column_for_filter_field(String text, String filterCol, String filterOption) throws Throwable {
        reportHomePage.iVerifyFilterResultInColumnFieldForReportFilterField(text, filterCol, filterOption);
    }

    @Then("^I should see following Reports text for Dashboards reports$")
    public void i_should_see_following_Reports_text_for_Dashboards_reports(List<String> reportLinks) throws Throwable {
        for (int i=0; i<reportLinks.size(); i++) {
            //System.out.println(reportLinks.get(i));
            reportHomePage.iVerifyFollowingReportsTextsForReportsTile("Dashboards", reportLinks.get(i));
        }
    }

    @Then("^I should see following Reports text for Patient ID reports$")
    public void i_should_see_following_Reports_text_for_Patient_ID_reports(List<String> reportLinks) throws Throwable {
        for (int i=0; i<reportLinks.size(); i++) {
            //System.out.println(reportLinks.get(i));
            reportHomePage.iVerifyFollowingReportsTextsForReportsTile("Patient ID", reportLinks.get(i));
        }
    }

    @Then("^I should see following Reports text for Post Acute Care reports$")
    public void i_should_see_following_Reports_text_for_Post_Acute_Care_reports(List<String> reportLinks) throws Throwable {
        for (int i=0; i<reportLinks.size(); i++) {
            reportHomePage.iVerifyFollowingReportsTextsForReportsTile("Post Acute Care", reportLinks.get(i));
        }
    }

    @Then("^I should see following Reports text for Physician reports$")
    public void i_should_see_following_Reports_text_for_Physician_reports(List<String> reportLinks) throws Throwable {
        for (int i=0; i<reportLinks.size(); i++) {
            reportHomePage.iVerifyFollowingReportsTextsForReportsTile("Physician", reportLinks.get(i));
        }
    }

    @Then("^I should see following Reports text for Readmissions reports$")
    public void i_should_see_following_Reports_text_for_Readmissions_reports(List<String> reportLinks) throws Throwable {
        for (int i=0; i<reportLinks.size(); i++) {
            reportHomePage.iVerifyFollowingReportsTextsForReportsTile("Readmissions", reportLinks.get(i));
        }
    }

    @Then("^I should see following Reports text for NSoC reports$")
    public void i_should_see_following_Reports_text_for_NSoC_reports(List<String> reportLinks) throws Throwable {
        for (int i=0; i<reportLinks.size(); i++) {
            reportHomePage.iVerifyFollowingReportsTextsForReportsTile("NSoC", reportLinks.get(i));
        }
    }

    @And("^I click on \"([^\"]*)\" reports text for \"([^\"]*)\" report tile$")
    public void i_click_on_reports_text_for_report_tile(String tile, String reportsTextName) throws Throwable {
        reportHomePage.iClickOnReportsTextForReportsTextName(reportsTextName, tile);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Operations Dashboard report page header$")
    public void i_should_see_in_the_Operations_Dashboard_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyOperationsDashboardReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the Performance Overall Program report page header$")
    public void i_should_see_in_the_Performance_Overall_Program_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyPerformanceOverallProgramReportPageHeader(headedText);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Patient ID report page header$")
    public void i_should_see_in_the_patient_id_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyPerformanceOverallProgramReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the Episode Data Issues Patient ID report page header$")
    public void i_should_see_in_the_Episode_Data_Issues_Patient_ID_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyEpisodeDataIssuesPatientIDReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the SNF LOS Detail Post Acute Care report page header$")
    public void i_should_see_in_the_SNF_LOS_Detail_Post_Acute_Care_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifySNFLOSDetailPostAcuteCareReportPageHeader(headedText);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Post Acute Care report page header$")
    public void i_should_see_in_the_Post_Acute_Care_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyPostAccuteCareReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the Physician Performance Physician report page header$")
    public void i_should_see_in_the_Physician_Performance_Physician_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyPhysicianPerformancePhysicianReportPageHeader(headedText);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Physician Volume Physician report page header$")
    public void i_should_see_in_the_Physician_Volume_Physician_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyPhysicianPerformancePhysicianReportPageHeader(headedText);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Physician Spending Physician report page header$")
    public void i_should_see_in_the_Physician_Spending_Physician_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyPhysicianPerformancePhysicianReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the CARL NSOC report page header$")
    public void i_should_see_in_the_CARL_NSOC_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyCARLNSOCReportPageHeader(headedText);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Next Site of Care Detail NSOC report page header$")
    public void i_should_see_in_the_Next_Site_of_Care_Detail_NSOC_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyNextSiteOfCareDetailNSOCReportPageHeader(headedText);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Next Site of Care Summary NSOC report page header$")
    public void i_should_see_in_the_Next_Site_of_Care_Summary_NSOC_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyCARLNSOCReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the Readmissions Readmission report page header$")
    public void i_should_see_in_the_Readmissions_Readmission_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyReadmissionsReadmissionReportPageHeader(headedText);
    }
    
    @Then("^I should see \"([^\"]*)\" in the Readmissions Claims Readmission report page header$")
    public void i_should_see_in_the_Readmissions_claims_Readmission_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyReadmissionsReadmissionReportPageHeader(headedText);
    }

    @And("^I should see \"([^\"]*)\" header title for \"([^\"]*)\" column in Operations Dashboard report$")
    public void i_should_see_header_title_for_column_in_Operations_Dashboard_report(String titleText, String elementColumn) throws Throwable {
        reportHomePage.iVerifyHeaderTitleForColumnOperationsDashboardReport(elementColumn, titleText);
    }

    @And("^I select ([^\"]*) from \"([^\"]*)\" filter in Operations Dashboard report$")
    public void i_select_from_filter_in_Operations_Dashboard_report(String filterOptions, String filterType) throws Throwable {
        reportHomePage.iChooseOptionsFromFilterOperationsDashboardReport(filterType,filterOptions);
    }

    //TODO
    @Then("^I enter \"([^\"]*)\" as the value on the textbox in the filter modal$")
    public void i_enter_as_the_value_on_the_tetbox_in_the_filter_modal(String value) throws Throwable {
    	reportHomePage.iEnterAsTheValueOnTheTextboxInTheFilterModal(value);
    }

    @Then("^I click on range filter dropdown and selected Less Than range in the filter modal$")
    public void i_click_on_range_filter_dropdown_and_selected_Less_Than_range_in_the_filter_modal() throws Throwable {
    	reportHomePage.iClickOnRangeFilterDropdownAndSelectedLessThanRangeInTheFilterModal();
    }

    @When("^I click on \"([^\"]*)\" for the \"([^\"]*)\" in the filter value list$")
    public void i_click_on_for_the_in_the_filter_value_list(String month, String year) throws Throwable {
    	reportHomePage.iClickOnForTheInTheFilterValueList(month, year);
    }

    
    @Then("^I click on \"([^\"]*)\" report text for Readmissions Reports$")
    public void i_click_on_report_text_for_Readmissions_Reports(String text) throws Throwable {
    	reportHomePage.iClickOnReportTextForReadmissionsReports(text);
    }

    @Then("^I should see Readmission reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Readmission_reports_column_Tile_text_as(String text) throws Throwable {
        reportHomePage.iShouldSeeReadmissionReportsColumnTileTextAs(text);
    }

    @Then("^I click on \"([^\"]*)\" report text for Physician Reports$")
    public void i_click_on_report_text_for_Physician_Reports(String text) throws Throwable {
        reportHomePage.iClickOnReportTextForPhysicianReports(text);
    }

    @Then("^I should see Spending reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Spending_reports_column_Tile_text_as(String text) throws Throwable {
        reportHomePage.iShouldSeeSpendingReportsColumnTileTextAs(text);
    }

    @Then("^I should see Volume reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Volume_reports_column_Tile_text_as(String text) throws Throwable {
        reportHomePage.iShouldSeeVolumeReportsColumnTileTextAs(text);
    }

    @Then("^I click on \"([^\"]*)\" report text for Post Acute Care Reports$")
    public void i_click_on_report_text_for_Post_Acute_Care_Reports(String text) throws Throwable {
    	reportHomePage.iClickOnReportTextForPostAcuteCareReportsTile(text);
    }
    
    @Then("^I should see Post Acute Care \\(Claims\\) reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Post_Acute_Care_Claims_reports_column_Tile_text_as(String tile) throws Throwable {
    	reportHomePage.iShouldSeePostAcuteCareClaimsReportsColumnTileTextAs(tile);
    }
    
    @Then("^I should see snf performance reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_snf_performance_reports_column_Tile_text_as(String tile) throws Throwable {
        reportHomePage.iShouldSeeSnfPerformanceReportsColumnTileTextAs(tile);
    }

    @Then("^I should see SNF volume reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_SNF_volume_reports_column_Tile_text_as(String tile) throws Throwable {
    	reportHomePage.iShouldSeeSnfPerformanceReportsColumnTileTextAs(tile);
    }
    
    @Then("^I should see Initial SNF Length of Stay Summary reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Initial_SNF_Length_of_Stay_Summary_reports_column_Tile_text_as(String tile) throws Throwable {
    	reportHomePage.iShouldSeeInitialSNFLengthOfStaySummaryReportsColumnTileTextAs(tile);
    }

    @Then("^I click on \"([^\"]*)\" report text for Patient ID Reports$")
    public void i_click_on_report_text_for_Patient_ID_Reports(String text) throws Throwable {
        reportHomePage.iClickOnReportTextForPatientIDReports(text);
    }

    @Then("^I should see Episode Avg Day to DRG reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Episode_Avg_Day_to_DRG_reports_column_Tile_text_as(String tile) throws Throwable {
        reportHomePage.iShouldSeeEpisodeAvgDayToDRGReportsColumnTileTextAs(tile);
    }

    @Then("^I should see Episode with DRG issue reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Episode_with_DRG_issue_reports_column_Tile_text_as(String tile) throws Throwable {
    	reportHomePage.iShouldSeeEpisodeWithDRGIssueReportsColumnTileTextAs(tile);
    }

    @Then("^I should see Next site of care reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Next_site_of_care_reports_column_Tile_text_as(String tile) throws Throwable {
    	reportHomePage.iShouldSeeNextSiteOfCareReportsColumnTileTextAs(tile);
    }
    
    @Then("^I click on \"([^\"]*)\" report text for NSoC Reports$")
    public void i_click_on_report_text_for_NSoC_Reports(String text) throws Throwable {
    	reportHomePage.iClickOnReportTextForNSoCReports(text);
    }
    
    @When("^I select \"([^\"]*)\" from the drop down list on the filter page$")
    public void i_select_from_the_drop_down_list_on_the_filter_page(String range) throws Throwable {
    	reportHomePage.iSelectFromTheDropdownListOnTheFilterPage(range);
    }
    
    @Then("^I should see Next site of care summary reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Next_site_of_care_summary_reports_column_Tile_text_as(String tile) throws Throwable {
    	reportHomePage.iShouldSeeNextSiteOfCareSummaryReportsColumnTileTextAs(tile);
    }

    @Then("^I should see Readmissions reports column Tile text as \"([^\"]*)\"$")
    public void i_should_see_Readmissions_reports_column_Tile_text_as(String tile) throws Throwable {
        reportHomePage.iShouldSeeReadmissionsReportsColumnTileTextAs(tile);
    }
    
    @Then("^I should see \"([^\"]*)\" appearing under program overview reports$")
    public void i_should_see_appearing_under_program_overview_reports(String text) throws Throwable {
        reportHomePage.iVerifyTextUnderProgramOverviewReport(text);
    }
    
    @And("^I should see \"([^\"]*)\" under overall program$")
    public void i_Should_See_Under_Overall_Program(String text) throws Throwable {
    	reportHomePage.iShouldSeeUnderOverallProgram(text);
    }
    
    @Then("^I should see \"([^\"]*)\" under program overview reports$")
    public void i_should_see_under_program_overview_reports(String text) throws Throwable {
        reportHomePage.iVerifyTextProgramOverviewReport(text);
    }
    
    @Then("^I verify skilled nursing graph appearing under overall program report$")
    public void i_verify_skilled_nursing_graph_under_report() throws Throwable {
    	reportHomePage.iVerifySkilledNursingGraphUnderReport();
    }
    
    @Then("^I verify long term acute care graph appearing under overall program report$")
    public void i_verify_long_term_acute_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyLongTermAcuteGraphUnderReport();
    }
    
    @Then("^I verify inpatient rehab graph appearing under overall program report$")
    public void i_verify_inpatient_rehab_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyInpatientRehabGraphUnderReport();
    }
    
    @Then("^I verify home health graph appearing under overall program report$")
    public void i_verify_home_health_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyHomeHealthGraphUnderReport();
    }
    
    @Then("^I verify home graph appearing under overall program report$")
    public void i_verify_home_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyHomeGraphUnderReport();
    }
    
    @Then("^I verify other graph appearing under overall program report$")
    public void i_verify_other_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyOtherGraphUnderReport();
    }
    
    @Then("^I verify initial snf length of stay graph appearing under overall program report$")
    public void i_verify_initial_snf_length_of_stay_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyInitialSnfLengthOfStayGraphUnderReport();
    }
    
    @Then("^I verify snf days graph appearing under overall program report$")
    public void i_verify_snf_days_graph_under_report() throws Throwable {
    	reportHomePage.iVerifySnfDaysGraphUnderReport();
    }
    
    @Then("^I verify episodes w readmit graph appearing under overall program report$")
    public void i_verify_episodes_w_readmit_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyEpisodesWReadmitGraphUnderReport();
    }
    
    @Then("^I verify readmits per episode graph appearing under overall program report$")
    public void i_verify_readmits_per_episode_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyReadmitsPerEpisodeGraphUnderReport();
    }
    
    @Then("^I verify episodes graph appearing under overall program report$")
    public void i_verify_episodes_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyEpisodesGraphUnderReport();
    }
    
    @Then("^I verify npra graph appearing under overall program report$")
    public void i_verify_npra_graph_under_report() throws Throwable {
    	reportHomePage.iVerifyNpraGraphUnderReport();
    }
    
    @And("^I verify \"([^\"]*)\" is present on the left side of overall program report$")
    public void i_Verify_Is_Present_On_The_Left_Side_Of_Overall_Program_Report(String text) throws Throwable {
    	reportHomePage.iVerifyFilterOptions(text);
    }
    
    @Then("^I should see partcipant filter on the left side of overall program report$")
    public void i_should_see_participant_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyParticipantFilter();
    }
    
    @And("^I click on \"([^\"]*)\" under program overview reports$")
    public void i_click_on_under_program_overview_reports(String text) throws Throwable{
    	reportHomePage.iClickOnProgramOverviewReports(text);
    }
    
    @Then("^I again click on Post Acute Utilization under program overview reports$")
    public void i_again_click_on_post_acute_utilization() throws Throwable {
    	reportHomePage.iAgainClickOnPostAcuteUtilization();
    }
    
    @Then("^I again click on SNF Length of Stay under program overview reports$")
    public void i_again_click_on_snf_length_of_stay() throws Throwable {
    	reportHomePage.iAgainClickOnSNFLengthOfStay();
    }
    
    @Then("^I again click on Readmissions under program overview reports$")
    public void i_again_click_on_redamissions() throws Throwable {
    	reportHomePage.iAgainClickOnReadmissions();
    }
    
    @Then("^I should see daterange filter on the left side of overall program report$")
    public void i_should_see_daterange_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyDateRangeFilter();
    }
    
    @Then("^I should see episode initiator filter on the left side of overall program report$")
    public void i_should_see_episode_initiator_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyEpisodeInitiatorFilter();
    }
    
    @Then("^I should see facility filter on the left side of overall program report$")
    public void i_should_see_facility_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyFacilityFilter();
    }
    
    @Then("^I should see bundle filter on the left side of overall program report$")
    public void i_should_see_bundle_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyBundleFilter();
    }
    
    @Then("^I should see bundle risk filter on the left side of overall program report$")
    public void i_should_see_bundle_risk_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyBundleRiskFilter();
    }
    
    @Then("^I should see view filter on the left side of overall program report$")
    public void i_should_see_view_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyViewFilter();
    }
    
    @Then("^I should see data source filter on the left side of overall program report$")
    public void i_should_see_data_source_filter_on_the_left_side_of_overall_program_reort() throws Throwable {
    	reportHomePage.iVerifyDataSourceFilter();
    }
    
    @And("^I click on \"([^\"]*)\" option appearing under view filter$")
    public void i_click_on_option_appearing_under_view_filter(String text) throws Throwable{
    	reportHomePage.iClickOnTableOptionForViewFilter(text);
    }
    
    @Then("^I select \"([^\"]*)\" radio button under data source filter$")
    public void i_select_radio_button_under_data_source_filter(String text) throws Throwable {
    	reportHomePage.iSelectEpisodeConnectRadioButton(text);
    }
    
    @Then("^I should see \"([^\"]*)\" table under overall program report$")
    public void i_should_see_table_under_overall_program_report(String text) throws Throwable {
    	reportHomePage.iSeeOverallProgramReport(text);
    }
    
    @Then("^I should see claims table under post acute utilization report$")
    public void i_should_seeclaims_table_under_post_acute_utilization_report() throws Throwable {
    	reportHomePage.iSeeClaimsReportForPostAcuteUtlization();
    }
    
    @Then("^I should see claims table under SNF Length of stay report$")
    public void i_should_seeclaims_table_under_SNF_Length_of_stay_report() throws Throwable {
    	reportHomePage.iSeeClaimsReportForSNFLengthofStay();
    }
    
    @Then("^I should see claims table under Readmissions report$")
    public void i_should_seeclaims_table_under_Readmissions_report() throws Throwable {
    	reportHomePage.iSeeClaimsReportForReadmissions();
    }
    
    @Then("^I should see \"([^\"]*)\" table under post acute utilization report$")
    public void i_should_see_table_under_post_acute_utlization_report(String text) throws Throwable {
    	reportHomePage.iSeePostAcuteUtilizationReport(text);
    }
    
    @Then("^I should see \"([^\"]*)\" table under SNF length of stay report$")
    public void i_should_see_table_under_SNF_length_of_stay_report(String text) throws Throwable {
    	reportHomePage.iSeeSNFLengthofStayReport(text);
    }
    
    @Then("^I should see \"([^\"]*)\" table under readmissions report$")
    public void i_should_see_table_under_readmissions_report(String text) throws Throwable {
    	reportHomePage.iSeeReadmissionsReport(text);
    }
    
    @And("^I click on \"([^\"]*)\" button under skilled nursing graph for post accute utilization report$")
    public void i_click_on_button_under_skilled_nursing_graph_for_post_accute_utilization(String text) throws Throwable{
    	reportHomePage.iClickOnSkilledNursingZoom(text);
    }
    
    @And("^I click on \"([^\"]*)\" button under inpatient rehab graph for post accute utilization report$")
    public void i_click_on_button_under_inpatient_rehab_graph_for_post_accute_utilization(String text) throws Throwable{
    	reportHomePage.iClickOnInpatientRehabZoom(text);
    }
    
    @And("^I click on \"([^\"]*)\" button under long term acute care graph for post accute utilization report$")
    public void i_click_on_button_under_long_term_acute_care_graph_for_post_accute_utilization(String text) throws Throwable{
    	reportHomePage.iClickOnLongTermAcuteCareZoom(text);
    }
    
    @And("^I click on \"([^\"]*)\" button under home health graph for post accute utilization report$")
    public void i_click_on_button_under_home_health_graph_for_post_accute_utilization(String text) throws Throwable{
    	reportHomePage.iClickOnHomeHealthZoom(text);
    }
    
    @And("^I click on \"([^\"]*)\" button under home graph for post accute utilization report$")
    public void i_click_on_button_under_home_graph_for_post_accute_utilization(String text) throws Throwable{
    	reportHomePage.iClickOnHomeZoom(text);
    }
    
    @And("^I click on \"([^\"]*)\" button under other graph for post accute utilization report$")
    public void i_click_on_button_under_other_graph_for_post_accute_utilization(String text) throws Throwable{
    	reportHomePage.iClickOnOtherZoom(text);
    }
       
    @Then("^I verify \"([^\"]*)\" text appearing on the \"([^\"]*)\" graph$")
    public void i_verify_text_appearing_on_the_graph(String text,String graph) throws Throwable{
    	reportHomePage.iVerifyZoomOutText(text,graph);
    }
    
    @And("^I click on export symbol on \"([^\"]*)\" graph$")
    public void i_click_on_export_symbol_on_graph(String export) throws Throwable{
    	reportHomePage.iClickOnExportSymbol(export);
    }
    
    @Then("^I Verify \"([^\"]*)\" is appearing after clicking on \"([^\"]*)\" export symbol$")
    public void i_verify_is_appearing_after_clicking_on_export_symbol(String text,String Graph) throws Throwable{
    	reportHomePage.iVerifyAppearingClickingExport(text, Graph);
    }
    
    @And("^I click on \"([^\"]*)\" option under \"([^\"]*)\" export symbol$")
    public void i_click_on_option_under_export_symbol(String text,String Graph) throws Throwable{
    	reportHomePage.iClickOnOptionUnderExportSymbol(text, Graph);
    }
    
    @Then("^I verify \"([^\"]*)\" is appearing under Export Options for \"([^\"]*)\" graph$")
    public void i_verify_is_appearing_under_export_options_for_graph(String text,String Graph) throws Throwable{
    	reportHomePage.iVerifyUnderExportOptions(text, Graph);
    }
    
    @And("^I click on \"([^\"]*)\" Export Options for \"([^\"]*)\" graph$")
    public void i_click_on_export_option_for_graph(String text,String Graph) throws Throwable{
    	reportHomePage.iClickOnExportOption(text, Graph);
    }
    
    @Then("^I verify graph appearing under export options popup$")
    public void i_verify_graph_appearing_under_export_options_popup()throws Throwable{
    	reportHomePage.iVerifyGraphUnderExportOptionsPopUp();
    }
    
    @Then("^I close the export options popup$")
    public void i_close_the_export_options_popup()throws Throwable{
    	reportHomePage.iCloseTheExportOptionsPopUp();
    }
    
    @Then("^I should click on \"([^\"]*)\" option under \"([^\"]*)\" export symbol$")
    public void i_click_on_XLS_CSV_option_under_export_symbol(String text,String Graph) throws Throwable{
    	reportHomePage.iClickOnXLSCSVOptionUnderExportSymbol(text, Graph);
    }
    
    @Then("^I Should see \"([^\"]*)\" is appearing after clicking on \"([^\"]*)\" export symbol$")
    public void i_should_see_is_appearing_after_clicking_on_export_symbol(String text,String Graph) throws Throwable{
    	reportHomePage.iShouldSeeAppearingClickingExport(text, Graph);
    }
    
    @Then("^I scroll the page to bottom by \"([^\"]*)\"$")
    public void i_scroll_the_page_to_bottom(String text) throws Throwable{
    	reportHomePage.iScrollPageToBottom(text);
    }
    
    @Then("^I Click on \"([^\"]*)\" button appearing under benchmark in filter options$")
    public void i_click_on_button_appearing_under_benchmark_in_filter_option(String text) throws Throwable{
    	reportHomePage.iClickOnAdjustHistoricButton(text);
    }
    
    @And("^I verify current url is not changed after clicking on adjusted historic button$")
    public void i_verify_cuurent_url_is_not_changed_after_clicking_on_adjusted_historic_button() throws Throwable{
    	reportHomePage.IVerifyURLAfterClickingAdjustedHistoricButton();
    }
     
    @Then("^I select All option under \"([^\"]*)\" filter in the filter options$")
    public void i_select_all_option_under_filter_in_the_filter_option(String filter) throws Throwable{
    	reportHomePage.iSelectFilterInFilterOptions(filter);
    }
    
    @Then("^I click on date range filter under filter options for program overview reports$")
    public void i_click_on_date_range_filter_under_filter_options_for_program_overview_reports() throws Throwable{
    	reportHomePage.iClickOnDateRangeFilter();
    }
    
    @And("^I click on start range box to select date$")
    public void i_click_on_start_range_box_to_select_date() throws Throwable{
    	reportHomePage.ISelectStartDateRangeDates();
    }
    
    @And("^I click on end range box to select date$")
    public void i_click_on_end_range_box_to_select_date() throws Throwable{
    	reportHomePage.ISelectEndDateRangeDates();
    }
    
    @Then("^I select \"([^\"]*)\" month in the \"([^\"]*)\" date range filter$")
    public void i_select_month_in_the_date_range_filter(String month,String range) throws Throwable{
    	reportHomePage.iSelectMonthInDateRange(month, range);
    }
    
    @Then("^I click on apply button under date range filter$")
    public void i_click_on_apply_button_under_date_range_filter() throws Throwable{
    	reportHomePage.iClickOnApplyButtonForDateRangeFilter();
    }
    
    @Then("^I select End month \"([^\"]*)\" in the calendar$")
    public void i_select_end_month_in_the_calendar(String enddate) throws Throwable{
    	reportHomePage.iClickOnEndMonthDate(enddate);
    }
    
    @When("^I click on show all filters icon button$")
    public void i_click_on_show_all_filters_icon_button() throws Throwable{
    	reportHomePage.iClickOnShowAllFiltersIcon();
    }
    
    @Then("^I verify \"([^\"]*)\" filter is preselected under the filter$")
    public void i_verify_preselected_under_the_filter(String text) throws Throwable{
    	reportHomePage.iVerifyPreselectedModelFilter(text);
    }
    
    @Then("^I should see \"([^\"]*)\" is present under preselected model filter$")
    public void i_should_see_is_present_under_preselected_model_filter(String text) throws Throwable{
    	reportHomePage.iSeeModelFilterPreselected(text);
    }
    
    @Then("^I should see \"([^\"]*)\" appearing under \"([^\"]*)\" field$")
    public void i_should_see_appearing_under__filed(String text,String field) throws Throwable{
    	reportHomePage.iSeeUnderMeasuresField(text,field);
    }
}
