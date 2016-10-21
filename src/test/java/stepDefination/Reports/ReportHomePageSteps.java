package stepDefination.Reports;

import com.remedy.Reports.ReportHomePage;
import com.remedy.resources.DriverScript;
import cucumber.api.java.en.And;

/**
 * Created by salam on 5/10/16.
 */
public class ReportHomePageSteps extends DriverScript {

    ReportHomePage reportHomePage = new ReportHomePage(driver);

    @And("^I should see Reports Tile text as \"([^\"]*)\"$")
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
    public void iShouldSeeReportsTheReportsHeaderPage(String headerText) throws Throwable {
        reportHomePage.iVerifyReportsPageHeaderText(headerText);
    }

    @And("^I switch to performance reports iframe$")
    public void iShouSeeReportsTheReportsHeaderPage(String headerText) throws Throwable {
        reportHomePage.iSwitchToReportsPageFrameWithXpath("//iframe[@class='embedded-iframe']");
    }

    @And("^I should see performance reports column Tile text as \"([^\"]*)\"$")
    public void iShouldSeePerformanceReportsColumnTileTextAs(String tile) throws Throwable {
        reportHomePage.iVerifyReportsTextForOverallProgramReports(tile);
    }

    @And("^I click on field-panel-icon button$")
    public void iClickFieldPaneliconButton() throws Throwable {
        reportHomePage.iClickReportFieldPanelIconButton();
    }
}
