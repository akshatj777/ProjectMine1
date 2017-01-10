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

    @Then("^I should see \"([^\"]*)\" in the Episode Data Issues Patient ID report page header$")
    public void i_should_see_in_the_Episode_Data_Issues_Patient_ID_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyEpisodeDataIssuesPatientIDReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the SNF LOS Detail Post Acute Care report page header$")
    public void i_should_see_in_the_SNF_LOS_Detail_Post_Acute_Care_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifySNFLOSDetailPostAcuteCareReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the Physician Performance Physician report page header$")
    public void i_should_see_in_the_Physician_Performance_Physician_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyPhysicianPerformancePhysicianReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the CARL NSOC report page header$")
    public void i_should_see_in_the_CARL_NSOC_report_page_header(String headedText) throws Throwable {
        reportHomePage.iVerifyCARLNSOCReportPageHeader(headedText);
    }

    @Then("^I should see \"([^\"]*)\" in the Readmissions Readmission report page header$")
    public void i_should_see_in_the_Readmissions_Readmission_report_page_header(String headedText) throws Throwable {
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

    @Then("^I click on \"([^\"]*)\" report text for Physician Reports$")
    public void i_click_on_report_text_for_Physician_Reports(String text) throws Throwable {
    	reportHomePage.iClickOnReportTextForPhysicianReports(text);
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
}
