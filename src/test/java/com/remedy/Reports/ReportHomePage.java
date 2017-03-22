package com.remedy.Reports;

import com.remedy.baseClass.BaseClass;
import cucumber.api.DataTable;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.util.List;
import java.util.Random;

/**
 * Created by salam on 5/6/16.
 */
public class ReportHomePage extends BaseClass {

    public ReportHomePage(WebDriver driver){

        super(driver);
    }

    public void iVerifyReportsTextforTiles(String text){
        delay();
        verifyTextForElementfromList(".dropdown-tile-label.ng-binding", text);
    }
    
    public void iVerifyReportsTextNotPresent(String text){
        delay();
        verifyTextNotPresentForElementFromList(".dropdown-tile-label.ng-binding", text);
    }

    public void iClickOnReportTileWithText(String tile){
        //  clickElement(driver.findElement(By.cssSelector(tile)));
        selectElementByDesc(".dropdown-tile-label.ng-binding", tile);
        delay();
    }

    public void iVerifyReportsTextForReportsTextName(String reportsTextName, String text){
        //delay();
        verifyTextForElementFromListByXpath("//div[label[text()='"+reportsTextName+"']]/following-sibling::div/a", text);
    }

    public void iClickOnReportTextForOverallProgramReportTile(String tile){
        selectElementByTextDescByXpath("//div[label[text()='Overall Program']]/following-sibling::div/a", tile);
        longDelay();
    }

    public void iVerifyReportsPageHeaderText(String tile){
        //longDelay();
        verifyTextForElement(driver.findElement(By.xpath("//h5[@class='ng-binding' and text()='Report']")), tile);
    }

    public void iSwitchToReportsPageFrameWithXpath(String frameXpath){
        longDelay();
        swithToFrame(frameXpath);
    }

    public void iVerifyPerformanceReportsColumnsTitleText(String text){
        delay();
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", text);
    }

    public void iClickReportFieldPanelIconButton(){

        clickElement(driver.findElement(By.xpath(".//div[@class='field-panel-icon']")));
    }
    
    public void iClickReportFieldLayoutIconButton(){

        clickElement(driver.findElement(By.xpath(".//div[@class='field-layout-icon']")));
    }

    public void iMoveToElementToPerform(String toElementLocator){
        moveToTheElement(driver.findElement(By.xpath(toElementLocator)));
    }

    public void iMoveToElementAndPerformRightClick(String moveToElementLocator){
        moveToTheElementAndRightClick(driver.findElement(By.xpath(moveToElementLocator)));
    }

    public void iChooseOptionsFromFilterWithXpath(String toLocator){
        //longDelay();
        clickElement(driver.findElement(By.xpath(toLocator)));
    }

    public void iVerifyFilterModalHeaderText(String text){
        //delay();
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='dialogTitleBar']/table/tbody/tr/td[1]")), text);
    }
    
    public void iVerifyFilterTitleHeaderText(String text){
        verifyTextForElement(driver.findElement(By.xpath(".//span[@class='dijitDialogTitle']")), text);
    }

    public void iVerifyFilterValueListModalText(String text){
        delay();
        verifyTextForElementfromList("#FT_valueList div", text);
    }
    
    public void iSeeFilterValueListText(String text){
        delay();
        verifyTextForElementfromList("#dijit_form_MultiSelect_0>option", text);
    }

    public void iClickOnFilterTextFormFilterValueList(String filterText){
        clickElement(driver.findElement(By.xpath("//*[starts-with(@id,'FT_AVA') and text()='"+filterText+"']")));
    }
    
    public void iSelectFilterTextFormFilterValueList(String filterText){
        clickElement(driver.findElement(By.xpath("//div[@class='filterDialogPicklistContainer'] //option[text()='"+filterText+"']")));
    }

    public void iClickAddSelectedArrowFromFilterModal() {

        clickElement(driver.findElement(By.id("FT_select_add")));
    }
    
    public void iClickSelectedFromFilterModal(String text) {

        clickElement(driver.findElement(By.xpath("//img[@title='"+text+"']")));
    }

    public void iClickOkButtonFromFilterModal() {

        clickElement(driver.findElement(By.id("dlgBtnSave")));
    }
    
    public void iClickButtonFromFilterModalToSelectField(String text) {

        clickElement(driver.findElement(By.xpath(".//table[@class='button-panel'] //button[text()='"+text+"']")));
    }

    public void iClickCancelButtonFromFilterModal() {

        clickElement(driver.findElement(By.id("dlgBtnCancel")));
    }

    public void iClickOnCloseReportsCrossLink() {
        //delay();
        clickElement(driver.findElement(By.xpath("//a[@href='#/reports']")));
    }

    public void iVerifyFilterResultInColumnFieldForReportFilterField(String text, String filterCol, String filterOption){
        verifyTextForElementFromListByXpath("//*[@class='pivotTableRowLabelSection']//*[@formula='["+filterOption+"].["+filterCol+"]']/div", text);
    }

    public void iVerifyFollowingReportsTextsForReportsTile(String reportsTextName, String text){
        //delay();
        verifyTextForElementFromListByXpath("//div[label[text()='"+reportsTextName+"']]/following-sibling::div/a", text);
    }

    public void iClickOnReportsTextForReportsTextName(String reportsTextName, String reportTile){
        selectElementByTextDescByXpath("//div[label[text()='"+reportsTextName+"']]/following-sibling::div/a", reportTile);
        longDelay();
    }

    public void iVerifyOperationsDashboardReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='dashboardTitle']")), text);
    }

    public void iVerifyPerformanceOverallProgramReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }

    public void iVerifyEpisodeDataIssuesPatientIDReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//td[text()='Episode Data Issues']")), text);
    }

    public void iVerifySNFLOSDetailPostAcuteCareReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='rpt-report-header-label-0']")), text);
    }

    public void iVerifyPhysicianPerformancePhysicianReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }

    public void iVerifyCARLNSOCReportPageHeader(String text){
        verifyTextForElementWithMultipleSpaces(driver.findElement(By.xpath("//td[text()='Next Site of Care Detail                                           Click on Prompts at top to select Participant']")), text);
    }
    
    public void iVerifyNextSiteOfCareDetailNSOCReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath(".//*[@id='rpt-report-header-label-0']")), text);
    }

    public void iVerifyReadmissionsReadmissionReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }
    
    public void iVerifyPostAccuteCareReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }

    public void iVerifyHeaderTitleForColumnOperationsDashboardReport(String elementColumn, String elementText){
        verifyTextForElement(driver.findElement(By.id(elementColumn)), elementText);
    }

    public void iChooseOptionsFromFilterOperationsDashboardReport(String filterType,String filterOptions){
        clickElement(driver.findElement(By.xpath("//div[@id='"+filterType+"']//span[text()='All']")));
        delay();
        clickElement(driver.findElement(By.xpath("//li[text()='"+filterOptions+"']")));
    }


    public void iEnterAsTheValueOnTheTextboxInTheFilterModal(String value){
    	iFillInText(driver.findElement(By.cssSelector("input#FT_condOp1")), value);
    }

    //TODO - make function as parameter
    public void iClickOnRangeFilterDropdownAndSelectedLessThanRangeInTheFilterModal(){
    	clickElement(driver.findElement(By.cssSelector("#FT_condOp")));
    	selectDropdownVisibleElement("#FT_condOp", "Less Than");
    }

    public void iClickOnForTheInTheFilterValueList(String month, String year){
    	clickElement(driver.findElement(By.cssSelector("[id='FT_AVA_[Anchor Begin Date].["+year+"].[2014Q1].["+month+"]']")));
    }

    public void iClickOnReportTextForReadmissionsReports(String text){
        selectElementByTextDescByXpath("//div[label[text()='Readmissions']]/following-sibling::div/a", text);
    }

    public void iShouldSeeReadmissionReportsColumnTileTextAs(String text) {
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", text);
    }

    public void iClickOnReportTextForPhysicianReports(String text){
        selectElementByTextDescByXpath("//div[label[text()='Physician']]/following-sibling::div/a", text);
    }

    public void iShouldSeeVolumeReportsColumnTileTextAs(String text) {
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", text);
    }

    public void iClickOnReportTextForPostAcuteCareReportsTile(String text){
    	selectElementByTextDescByXpath("//div[label[text()='Post Acute Care']]/following-sibling::div/a", text);
    }

    public void iShouldSeePostAcuteCareClaimsReportsColumnTileTextAs(String tile) {
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }

    public void iShouldSeeSnfPerformanceReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }

    public void iShouldSeeSpendingReportsColumnTileTextAs(String text) {
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", text);
    }
    
    public void iShouldSeeInitialSNFLengthOfStaySummaryReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }
    
    public void iShouldSeeNextSiteOfCareDetailReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath(".//tr[@id='column-dnd-target']/td", "title", tile);
    }
    
    public void iShouldSeeNextSiteOfCareReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }
    
    public void iClickOnReportTextForNSoCReports(String text){
    	selectElementByTextDescByXpath("//div[label[text()='NSoC']]/following-sibling::div/a", text);
    }
    
    public void iSelectFromTheDropdownListOnTheFilterPage(String range){
    	selectDropdownVisibleElement("#FT_rangeOp", range);
    }
    
    public void iShouldSeeNextSiteOfCareSummaryReportsColumnTileTextAs(String tile){
    	delay();
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }

    public void iClickOnReportTextForPatientIDReports(String text){
        selectElementByTextDescByXpath("//div[label[text()='Patient ID']]/following-sibling::div/a", text);
    }

    public void iShouldSeeEpisodeAvgDayToDRGReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }

    public void iShouldSeeEpisodeWithDRGIssueReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }

    public void iShouldSeeReadmissionsReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }
    
    public void iVerifyTextUnderProgramOverviewReport(String text){
        verifyTextForElement(driver.findElement(By.cssSelector("#topchartsTitleObj")), text);
    }
    
    public void iShouldSeeUnderOverallProgram(String text){
    	isElementVisible(driver.findElement(By.xpath("//div[text()='"+text+"']")));
    }
    
    public void iVerifyTextProgramOverviewReport(String text){
        verifyTextForElement(driver.findElement(By.xpath("//button[text()='"+text+"']")), text);
    }
    
    public void iVerifySkilledNursingGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#SNFChartObjprotovis")));
    }
    
    public void iVerifyLongTermAcuteGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#LTCHChartObjprotovis")));
    }
    
    public void iVerifyInpatientRehabGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#IRFChartObjprotovis")));
    }
    
    public void iVerifyHomeHealthGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#HHAChartObjprotovis")));
    }
    
    public void iVerifyHomeGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#homeChartObjprotovis")));
    }
    
    public void iVerifyOtherGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#otherChartObjprotovis")));
    }
    
    public void iVerifyInitialSnfLengthOfStayGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#initialSNFChartObjprotovis")));
    }
    
    public void iVerifySnfDaysGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#daysSNFChartObjprotovis")));
    }
    
    public void iVerifyEpisodesWReadmitGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#episodesReadmitsChartObjprotovis")));
    }
    
    public void iVerifyReadmitsPerEpisodeGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#readmitsEpisodesChartObjprotovis")));
    }
    
    public void iVerifyEpisodesGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#episodesChartObjprotovis")));
    }
    
    public void iVerifyNpraGraphUnderReport(){
    	isElementVisible(driver.findElement(By.cssSelector("#NPRAChartObjprotovis")));
    }
    
    public void iVerifyFilterOptions(String text){
    	verifyTextForElement(driver.findElement(By.cssSelector("#filterTitleObj")), text);
    }
    
    public void iVerifyParticipantFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#participantFilterObj")));
    }
    
    public void iClickOnProgramOverviewReports(String text) throws Throwable{
    	clickElement(driver.findElement(By.xpath("//button[text()='"+text+"']")));
    }
    
    public void iAgainClickOnPostAcuteUtilization() throws Throwable {
    	clickElement(driver.findElement(By.xpath("//*[@id='utilizationTitleButtonObj']/button")));
    }
    
    public void iAgainClickOnSNFLengthOfStay() throws Throwable {
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.xpath("//*[@id='SNFTitleButtonObj']/button"));  
    	js.executeScript("arguments[0].scrollIntoView(true);", element);
    	clickElement(driver.findElement(By.xpath("//*[@id='SNFTitleButtonObj']/button")));
    }
    
    public void iAgainClickOnReadmissions() throws Throwable {
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.xpath("//*[@id='readmissionsTitleButtonObj']/button"));  
    	js.executeScript("arguments[0].scrollIntoView(true);", element);
    	clickElement(driver.findElement(By.xpath("//*[@id='readmissionsTitleButtonObj']/button")));
    }
    
    public void iVerifyDateRangeFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#newDateRangeObj")));
    }
    
    public void iVerifyEpisodeInitiatorFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#initiatorFilterObj")));
    }
    
    public void iVerifyFacilityFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#facilityFilterObj")));
    }
    
    public void iVerifyBundleFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#bundleFilterObj")));
    }
    
    public void iVerifyBundleRiskFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#bundleRiskFilterObj")));
    }
    
    public void iVerifyViewFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#viewSelectorRow")));
    }
    
    public void iVerifyDataSourceFilter(){
    	isElementVisible(driver.findElement(By.cssSelector("#dataSourceRow")));
    }
    
    public void iClickOnTableOptionForViewFilter(String text) throws Throwable {
    	clickElement(driver.findElement(By.xpath("//button[@name='render_viewSelector'][text()='"+text+"']")));
    }
    
    public void iSelectEpisodeConnectRadioButton(String text) throws Throwable {
    	clickElement(driver.findElement(By.xpath("//button[@name='render_dataSourceSelector'][text()='"+text+"']")));
    }
    
    public void iSeeOverallProgramReport(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#episodesNPRATable"+text+"ObjTable")));
    }
    
    public void iSeeClaimsReportForPostAcuteUtlization(){
    	isElementVisible(driver.findElement(By.cssSelector("#utilizationTableObjTable")));
    }
    
    public void iSeeClaimsReportForSNFLengthofStay(){
    	isElementVisible(driver.findElement(By.cssSelector("#daysSNFTableObjTable")));
    }
    
    public void iSeeClaimsReportForReadmissions(){
    	isElementVisible(driver.findElement(By.cssSelector("#readmitionsTableObjTable")));
    }
    
    public void iSeePostAcuteUtilizationReport(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#utilizationTable"+text+"ObjTable")));
    }
    
    public void iSeeSNFLengthofStayReport(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#daysSNFTable"+text+"ObjTable")));
    }
    
    public void iSeeReadmissionsReport(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#readmitionsTable"+text+"ObjTable")));
    }
    
    public void iClickOnSkilledNursingZoom(String text){
    	clickElement(driver.findElement(By.xpath("//*[@id='SFNChartButtonObj']/button")));
    }
    
    public void iClickOnInpatientRehabZoom(String text){
    	clickElement(driver.findElement(By.xpath("//*[@id='IRFChartButtonObj']/button")));
    }
    
    public void iClickOnLongTermAcuteCareZoom(String text){
    	clickElement(driver.findElement(By.xpath("//*[@id='LTCHChartButtonObj']/button")));
    }
    
    public void iClickOnHomeHealthZoom(String text){
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.xpath("//*[@id='HHAChartButtonObj']/button"));
    	js.executeScript("arguments[0].scrollIntoView(true);",element);
    	clickElement(driver.findElement(By.xpath("//*[@id='HHAChartButtonObj']/button")));
    }
    
    public void iClickOnHomeZoom(String text){
    	clickElement(driver.findElement(By.xpath("//*[@id='homeChartButtonObj']/button")));
    }
    
    public void iClickOnOtherZoom(String text){
    	clickElement(driver.findElement(By.xpath("//*[@id='otherChartButtonObj']/button")));
    }
    
    public void iVerifyZoomOutText(String text,String graph){
    	verifyTextForElement(driver.findElement(By.xpath("//button[text()='"+text+"']")), text);
    }
    
    public void iClickOnExportSymbol(String export){
    	clickElement(driver.findElement(By.xpath("//*[@id='"+export+"ExportObj']/div")));
    }
    
    public void iVerifyAppearingClickingExport(String text,String Graph){
    	verifyTextForElement(driver.findElement(By.xpath("//div[@class='popupComponent exportOptions south ui-draggable']/div[text()='"+text+"']")), text);
    }
    
    public void iClickOnOptionUnderExportSymbol(String text,String Graph){
    	clickElement(driver.findElement(By.xpath("//div[@class='popupComponent exportOptions south ui-draggable']/div[text()='"+text+"']")));
    }
    
    public void iVerifyUnderExportOptions(String text,String Grpah){
    	verifyTextForElement(driver.findElement(By.xpath("//div[@class='exportChartPopupButtons']/div[text()='"+text+"']")), text);
    }
    
    public void iClickOnExportOption(String text,String Graph){
    	clickElement(driver.findElement(By.xpath("//div[@class='exportChartPopupButtons']/div[text()='"+text+"']")));
    }
    
    public void iVerifyGraphUnderExportOptionsPopUp(){
    	isElementVisible(driver.findElement(By.xpath("//div[@class='exportChartImageDiv']/img")));
    }
    
    public void iCloseTheExportOptionsPopUp(){
    	clickElement(driver.findElement(By.xpath("//*[@id='fancybox-close']")));
    }
    
    public void iClickOnXLSCSVOptionUnderExportSymbol(String text,String Graph){
    	clickElement(driver.findElement(By.xpath("//div[@class='popupComponent exportOptions ui-draggable south']/div[text()='"+text+"']")));
    }
    
    public void iShouldSeeAppearingClickingExport(String text,String Graph){
    	verifyTextForElement(driver.findElement(By.xpath("//div[@class='popupComponent exportOptions ui-draggable south']/div[text()='"+text+"']")), text);
    }
    
    public void iScrollPageToBottom(String text){
    	JavascriptExecutor js = ((JavascriptExecutor)driver);
    	js.executeScript("scroll(0, "+text+")");
    }
    
    public void iClickOnAdjustHistoricButton(String text){
    	clickElement(driver.findElement(By.xpath("//button[text()='"+text+"']")));
    }
    
    public void IVerifyURLAfterClickingAdjustedHistoricButton(){
    	String ReportURL = driver.getCurrentUrl();
    	Assert.assertEquals(ReportURL, "https://cdn-qa.remedypartners.com/reports/index.html#/reports/dashboards/program-overview?url=pentaho%2Fapi%2Frepos%2F%253Apublic%253ACtoolsDashboards%253Arelease%253AProgramOverview.wcdf%2FgeneratedContent" );
    }
    
    public void iSelectFilterInFilterOptions(String text){
    	clickElement(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-root-header.all-selected")));
    	clickElement(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-root-selection-label")));
    	clickElement(driver.findElement(By.cssSelector(".filter-btn-apply.dirty")));
    }
    
    public void iClickOnDateRangeFilter(){
    	clickElement(driver.findElement(By.cssSelector(".range-display")));
    }
    
    public void ISelectStartDateRangeDates(){
    	clickElement(driver.findElement(By.cssSelector(".start-calendar-dialog>div")));
    }
    
    public void ISelectEndDateRangeDates(){
    	clickElement(driver.findElement(By.cssSelector(".end-calendar-dialog>div")));
    }
    
    public void iSelectMonthInDateRange(String month,String range){
    	clickElement(driver.findElement(By.xpath("//div[text()='"+month+"']")));
    }
    
    public void iClickOnApplyButtonForDateRangeFilter(){
    	clickElement(driver.findElement(By.cssSelector(".apply-button")));
    }
    
    public void iClickOnEndMonthDate(String enddate){
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.xpath("//div[text()='"+enddate+"']"));
    	js.executeScript("arguments[0].scrollIntoView(true);",element);
    	clickElement(driver.findElement(By.xpath("//div[text()='"+enddate+"']")));
    }
    
    public void iClickOnShowAllFiltersIcon(){
    	clickElement(driver.findElement(By.xpath(".//div[@class='pentaho-filterbutton']")));
    }
    
    public void iVerifyPreselectedModelFilter(String text){
    	//verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Model].[Model]']/span")), model);
    	isElementVisible(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='["+text+"].["+text+"]']/span")));
    }
    
    public void iSeeModelFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Model].[Model]']/span")),text);
    }
    
    public void iSeeAnchorMonthFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Anchor Month].[Anchor Month]']/span")),text);
    }
    
    public void iSeeUnderMeasuresField(String text,String field){
    	verifyTextForElement(driver.findElement(By.xpath(".//*[@class='gem-label'][text()='"+text+"']")),text);
    }
    
    public void iSeeUnderLevelTimeField(String text,String field){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@id='fieldListTreeContent'] //div[text()='"+text+"']")),text);
    }
    
    public void iSeeUnderNSOCLevelTimeField(String text,String field){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@id='fieldListTreeContent'] //div[@title='"+text+"']")),text);
    }
    
    public void iClickOnFirstNumberUnderEpisodesColumn(){
    	clickElement(driver.findElement(By.cssSelector("a[href*='javascript:drill(0,2)']")));
    }
    
    public void iClickOnEpisodesColumnNumberForEpisodewithDRGIssues(){
    	clickElement(driver.findElement(By.cssSelector("a[href*='javascript:drill(0,1)']")));
    }
    
    public void iShouldVerifyInEpisodesTable(String text){
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.xpath(".//tr[@class='x-grid3-hd-row']/td/div[text()='"+text+"']"));
    	js.executeScript("arguments[0].scrollIntoView(true);",element);
    	verifyTextForElement(driver.findElement(By.xpath(".//tr[@class='x-grid3-hd-row']/td/div[text()='"+text+"']")),text);
    }
    
    public void iRemoveDeefaultFilters(String field,String title){
    	clickElement(driver.findElement(By.xpath(".//div[@id='filter_["+title+"].["+field+"]'] //i[@class='filterAction pentaho-deletebutton']")));
    }
    
    public void iSelectCurrentMonthInAnchorDischargeMonth(String text){
    	clickElement(driver.findElement(By.xpath(".//*[@id='FT_"+text+"_TIME']")));
    }
    
    public void iClickOnFiltersToggleButton(){
    	clickElement(driver.findElement(By.xpath("//*[@id='filterToolbarIndicator']")));
    }
    
    public void iClickOnLayoutToggleButton(){
    	clickElement(driver.findElement(By.xpath(".//*[@id='toolbar1.layoutToggle']")));
    }
    
    public void iClickOnEditToggleButton(){
    	clickElement(driver.findElement(By.xpath(".//*[@id='toolbar1.edit']")));
    }
    
    public void iSeePreselectedFilters(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//*[@class='gem-label'][text()='"+text+"']")),text);
    }
    
    public void iVerifyInitialSNFLengthOfStaySummaryReportsColumnTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_columnAttributes'] //div[text()='"+tile+"']", "title", tile);
    }
    
    public void iSelectRadioButtonOfSelectFromList(){
    	clickElement(driver.findElement(By.xpath("//div[@data-dojo-attach-point='typePicklistContainer']/input")));
    }
}

