package stepDefination.Reports;

import com.remedy.Reports.ReportHomePage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
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

    @And("^I should see \"([^\"]*)\" Reports text for Overall Program$")
    public void iShouldSeeReportsTextForOverallProgram(String tile) throws Throwable {
        reportHomePage.iVerifyReportsTextForOverallProgramReports(tile);
    }

    @And("^I click on \"([^\"]*)\" report text for Overall Program Reports$")
    public void iClickTextForOverallProgramReports(String text) throws Throwable {
        reportHomePage.iClickOnReportTextForOverallProgramReportTile(text);
    }

    @And("^I should see \"([^\"]*)\" in the reports header page$")
    public void iShouldSeeReportsTextHeaderPage(String headerText) throws Throwable {
        reportHomePage.iVerifyReportsPageHeaderText(headerText);
    }

    @And("^I switch to performance reports iframe$")
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
        reportHomePage.iMoveToElementAndPerformClick(".//*[@id='fieldListTree']//div[@formula='["+filterTitle+"].["+filterField+"]']/div");
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

    @Then("^I should see following Reports text for Overall Program$")
    public void i_should_see_following_Reports_text_for_Overall_Program(List<String> reportLinks) throws Throwable {
         for (int i=0; i<reportLinks.size(); i++) {
            //System.out.println(reportLinks.get(i));
            reportHomePage.iVerifyReportsTextForOverallProgramReports(reportLinks.get(i));
        }

    }
}
