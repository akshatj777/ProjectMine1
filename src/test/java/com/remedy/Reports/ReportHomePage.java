package com.remedy.Reports;

import com.remedy.baseClass.BaseClass;

import cucumber.api.DataTable;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * Created by salam on 5/6/16.
 */
public class ReportHomePage extends BaseClass {
	
	WebDriverWait wait = new WebDriverWait(driver, 60);

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
        delay();
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

    public void iMoveToElementAndPerformRightClick(String filterField, String filterTitle){
    	clickElement(driver.findElement(By.xpath(".//*[@id='fieldListTreeContent']//div[@formula='["+filterTitle+"].["+filterField+"]']")));
    	delay();
    	clickElement(driver.findElement(By.xpath(".//*[@id='fieldListTreeContent']//div[@formula='["+filterTitle+"].["+filterField+"]']/div")));
		//moveToTheElementAndRightClick(driver.findElement(By.xpath(moveToElementLocator)));
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
    
    public void iClickOnReportsTabOnReportsPage() {
        //delay();
        clickElement(driver.findElement(By.xpath("//div[@href='#/']")));
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

    public void iVerifyInpatientEpisodeClearingIssuesPatientIDReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }
    
    public void iVerifyEpisodeDRGIssuesReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }

    public void iVerifySNFLOSDetailPostAcuteCareReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='rpt-report-header-label-0']")), text);
    }

    public void iVerifyPhysicianPerformancePhysicianReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }

    public void iVerifyCARLNSOCReportPageHeader(String text){
        verifyTextForElementWithMultipleSpaces(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
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
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.xpath("//div[label[text()='Readmissions']]/following-sibling::div/a"));
    	js.executeScript("arguments[0].scrollIntoView(true);",element);
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
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.xpath("//div[label[text()='Post Acute Care']]/following-sibling::div/a"));
    	js.executeScript("arguments[0].scrollIntoView(true);",element);
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
    	selectElementByTextDescByXpath("//div[label[text()='Next Site of Care']]/following-sibling::div/a", text);
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
    
    public void iShouldSeeEpisodeDRGIssuesReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }

    public void iShouldSeeEpisodeWithDRGIssueReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }

    public void iShouldSeeReadmissionsReportsColumnTileTextAs(String tile){
        verifyAttributeForElementFromListByXpath("//table[@class='ZONE_rowAttributes rowLabelHeaders']/tbody/tr/td", "title", tile);
    }
    
    public void iVerifyTextUnderProgramOverviewReport(String text){
        verifyTextForElement(driver.findElement(By.xpath("//button[text()='"+text+"']")), text);
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
    	delay();
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
    	longDelay();
    	iWillWaitToSee(By.xpath("//button[@name='render_dataSourceSelector'][text()='"+text+"']"));
    	clickElement(driver.findElement(By.xpath("//button[@name='render_dataSourceSelector'][text()='"+text+"']")));
        delay();
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
    	//iWillWaitToSee(By.xpath("//*[@id='"+export+"ExportObj']/div"));
     	clickElement(driver.findElement(By.xpath("//*[@id='"+export+"ExportObj']/div")));
    	longDelay();
    }
    
    public void iVerifyAppearingClickingExport(String text,String Graph){
    	iWillWaitToSee(By.xpath("//div[@class='popupComponent exportOptions south ui-draggable']/div[text()='"+text+"']"));
    	verifyTextForElement(driver.findElement(By.xpath("//div[@class='popupComponent exportOptions south ui-draggable']/div[text()='"+text+"']")), text);
    }
    
    public void iClickOnOptionUnderExportSymbol(String text,String Graph){
    	clickElement(driver.findElement(By.xpath("//div[@class='popupComponent exportOptions south ui-draggable']/div[text()='"+text+"']")));
    	delay();
    }
    
    public void iVerifyUnderExportOptions(String text,String Grpah){
    	iWillWaitToSee(By.xpath("//div[@class='exportChartPopupButtons']/div[text()='"+text+"']"));
    	verifyTextForElement(driver.findElement(By.xpath("//div[@class='exportChartPopupButtons']/div[text()='"+text+"']")), text);
    }
    
    public void iClickOnExportOption(String text,String Graph){
    	iWillWaitToSee(By.xpath("//div[@class='exportChartPopupButtons']/div[text()='"+text+"']"));
    	clickElement(driver.findElement(By.xpath("//div[@class='exportChartPopupButtons']/div[text()='"+text+"']")));
    }
    
    public void iVerifyGraphUnderExportOptionsPopUp(){
    	iWillWaitToSee(By.xpath("//div[@class='exportChartImageDiv']/img"));
    	isElementVisible(driver.findElement(By.xpath("//div[@class='exportChartImageDiv']/img")));
    }
    
    public void iCloseTheExportOptionsPopUp(){
    	iWillWaitToSee(By.xpath("//*[@id='fancybox-close']"));
    	clickElement(driver.findElement(By.xpath("//*[@id='fancybox-close']")));
    	longDelay();
    }
    
    public void iClickOnXLSCSVOptionUnderExportSymbol(String text,String Graph){
    	iWillWaitToSee(By.xpath("//div[@class='popupComponent exportOptions ui-draggable south']/div[text()='"+text+"']"));
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
    	Assert.assertEquals(ReportURL, "https://cdn-qa.remedypartners.com/reports/index.html#/reports/dashboards/program-overview" );
    }
    
    public void iSelectFilterInFilterOptions(String text){
    	clickElement(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-root-header.all-selected")));
    	clickElement(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-root-selection-label")));
    	//clickElement(driver.findElement(By.cssSelector(".filter-btn-apply.dirty")));
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
    
    public void iClickOnFiltersCountLabel(){
    	clickElement(driver.findElement(By.cssSelector("#RPT001FilterCountLabel")));
    }
    
    public void iVerifyPreselectedModelFilter(String text){
    	isElementVisible(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='["+text+"].["+text+"]']/span")));
    }
    
    public void iSeeModelFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Model].[Model]']/span")),text);
    }
    
    public void iSeeParticipantIDFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Episode Initiator].[Participant ID]']/span")),text);
    }
    public void iSeePostAcuteCategoryFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath("//div[@formula='[Post Acute Category.Post Acute Type].[Post Acute Category]']/span")),text);
    }
    
    public void iSeeBPIDFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Episode Initiator].[BPID]']/span")),text);
    }
    
    public void iSeeBundleCodeFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Bundle].[Bundle Code]']/span")),text);
    }
    
    public void iSeeDashboardAnchorCCNFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Dashboard - Anchor Facility].[CCN]']/span")),text);
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
    
    public void iClickOnEpisodeNumberUnderEpisodesColumnofSpendingClaimsReport(){
    	JavascriptExecutor js = ((JavascriptExecutor) driver);
    	WebElement element = driver.findElement(By.cssSelector("a[href*='javascript:drill(0,164)']"));
    	js.executeScript("arguments[0].scrollIntoView(true);",element);
    	clickElement(driver.findElement(By.cssSelector("a[href*='javascript:drill(0,164)']")));
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
    	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("#progressTooltipDiv")));
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
    
    public void iSelectRadioButtonOfSelectFromList() {
        clickElement(driver.findElement(By.xpath("//div[@data-dojo-attach-point='typePicklistContainer']/input")));
    }

    public void iClickOnAnchorAdmissionMonth(String month){
    	clickElement(driver.findElement(By.xpath(".//*[@id='FT_"+month+"_TIME']")));
    }
    
    public void iShouldNotSeeReportName(String report){
    	verifyTextNotPresentForElementFromList(".ng-binding.ng-scope", report);
    }
    
    public void iSelectFromListOnFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("#FT_filterTypeSelect")));
    }
    
    public void iClickOnNPRAGraphPoint(String npra){
    	String nprapath=".//*[@id='"+npra+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][5]/*[name()='g']/*[name()='g'][3]/*[name()='circle'][1]";
    	clickElement(driver.findElement(By.xpath(nprapath)));
    }
    
    public void iVerifyInTheNewWindowAfterClickingOnGraph(String text){
    	delay();
    	iWillWaitToSee(By.xpath("//*[@id='RPT001ReportName']"));
    	verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }
    
    public void iClickOnGrpahPointForPostAcuteUtilization(String text){
    	delay();
    	String path=".//*[@id='"+text+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][6]/*[name()='g']/*[name()='g']/*[name()='g'][3]/*[name()='circle'][1]";
    	iWillWaitToSee(By.xpath(path));
    	clickElement(driver.findElement(By.xpath(path)));
    	delay();
    }
    
    public void iClickOnPostAcuteUtilizationGraphPoint(String text){
    	String path=".//*[@id='"+text+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][6]/*[name()='g']/*[name()='g']/*[name()='g'][3]/*[name()='circle'][1]";
    	clickElement(driver.findElement(By.xpath(path)));
    }
    
    public void iClickOnOtherGraphPostAcuteUtilizationGraphPoint(String text){
    	String path=".//*[@id='"+text+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][6]/*[name()='g']/*[name()='g']/*[name()='g'][3]/*[name()='circle'][1]";
    	clickElement(driver.findElement(By.xpath(path)));
    }
    
    public void iClickOnGrpahPointForSNFLengthOfStay(String text){
    	String path=".//*[@id='"+text+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][6]/*[name()='g']/*[name()='g']/*[name()='g'][3]/*[name()='circle'][1]";
    	clickElement(driver.findElement(By.xpath(path)));
    }
    
    public void iClickOnGrpahPointForReadmissions(String text){
    	String path=".//*[@id='"+text+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][6]/*[name()='g']/*[name()='g'][3]/*[name()='circle'][1]";
    	clickElement(driver.findElement(By.xpath(path)));
    }
    
    public void iClickOnGrpahPointForHome(String text){
    	String path=".//*[@id='"+text+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][6]/*[name()='g']/*[name()='g']/*[name()='g'][3]/*[name()='circle'][3]";
    	clickElement(driver.findElement(By.xpath(path)));
    }
    
    public void iClickOnGrpahPointForreadmitperepisodeunderReadmissions(String text){
    	String path=".//*[@id='"+text+"ChartObjprotovis']//*[name()='svg']/*[name()='g']/*[name()='g']/*[name()='g']/*[name()='g'][6]/*[name()='g']/*[name()='g'][3]/*[name()='circle'][2]";
    	clickElement(driver.findElement(By.xpath(path)));
    }
    
    public void iEnterAnchorAdmissionQuarterInSearchField(String text){
    	iFillInText(driver.findElement(By.cssSelector("#FT_searchText")), text);
    }
    
    public void iClickOnFindButtonAfterEnteringAnchorAdmissionQuarter(){
    	clickElement(driver.findElement(By.cssSelector("#FT_searchBy")));
    }
    
    public void iVerifyAnchorAdmissionYearPreSelectedFilter(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@class='filterItem'][@formula='[Anchor Begin Date].[Anchor Admission Year]']/span")),text);
    }
    
    public void iClickOnFacilityFilterUnderFilterOptions(String facility){
    	delay();
    	iWillWaitToSee(By.cssSelector("#"+facility+"FilterObj .filter-root-header.all-selected"));
    	clickElement(driver.findElement(By.cssSelector("#"+facility+"FilterObj .filter-root-header.all-selected")));
    }
    
    public void iUncheckAllOptionForFacilityFilter(String text){
    	clickElement(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-root-selection-label")));
    }
    
    public void iSelectFaciltyFromFacilityFilterUnderProgramOverviewReport(String text){
    	iWillWaitToSee(By.xpath("//div[@id='facilityFilterObj']//div[@title='"+text+"']"));
    	clickElement(driver.findElement(By.xpath("//div[@id='facilityFilterObj']//div[@title='"+text+"']")));
    }
    
    public void iClickOnApplyButtonUnderFaciltyFilterOptions(){
    	clickElement(driver.findElement(By.cssSelector(".filter-btn-apply.dirty")));
    	delay();
    }
    
    public void iClickOnTableViewOptionUnderViewFilter(String text){
    	delay();
    	clickElement(driver.findElement(By.xpath("//button[text()='"+text+"']")));
    	delay();
    }
    
    public void iVerifyClaimsandeEcTextUnderOverallProgram(String text){
    	iWillWaitToSee(By.cssSelector("#episodesTitleClaimsECObj"));
    	verifyTextForElement(driver.findElement(By.cssSelector("#episodesTitleClaimsECObj")),text);
    }
    
    public void iShouldSeeEcandClaimsDatawithColorForEpisodesColumnUnderOverallProgram(String color){
    	isElementVisible(driver.findElement(By.xpath("//table[@id='episodesNPRATableClaimsECObjTable']//tbody/tr/td/font[@color='"+color+"']")));
    }
    
    public void iVerifyClaimsandEcTextUnderPostAcuteUtilization(String text){
    	verifyTextForElement(driver.findElement(By.cssSelector("#utilizationTitleClaimsECObj")),text);
    }
    
    public void iShouldSeeEcandClaimsDatawithColorForEpisodesColumnUnderPostAcuteUtilization(String color){
    	isElementVisible(driver.findElement(By.xpath("//table[@id='utilizationTableClaimsECObjTable']//tbody/tr/td/font[@color='"+color+"']")));
    }
    
    public void iVerifyClaimsandEcTextUnderSnfLengthOfStay(String text){
    	verifyTextForElement(driver.findElement(By.cssSelector("#daysSNFTitleClaimsECObj")),text);
    }
    
    public void iShouldSeeEcandClaimsDatawithColorForEpisodesColumnUnderSnfLengthOfStay(String color){
    	isElementVisible(driver.findElement(By.xpath("//table[@id='daysSNFClaimsECTableObjTable']//tbody/tr/td/font[@color='"+color+"']")));
    }
    
    public void iVerifyClaimsandEcTextUnderReadmissions(String text){
    	verifyTextForElement(driver.findElement(By.cssSelector("#readmitionsTitleClaimsECObj")),text);
    }
    
    public void iShouldSeeEcandClaimsDatawithColorForEpisodesColumnUnderReadmissions(String color){
    	isElementVisible(driver.findElement(By.xpath("//table[@id='readmitionsClaimsECTableObjTable']//tbody/tr/td/font[@color='"+color+"']")));
    }
    
    public void iVerifyDOBColumnValueFormat(String text) throws ParseException{
        String DOB=getTextForElement(driver.findElement(By.xpath("(//*[@class='pivotTableRowLabelSection']//*[@formula='["+text+"].[DOB]']/div)[1]")));
    	validateDateFormat(DOB);
    }
    
    public void validateDateFormat(String dateToValdate) throws ParseException {
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	    formatter.setLenient(false);
	    Date parsedDate = null;
	    parsedDate = formatter.parse(dateToValdate);
    }
    
    public void iEnterInTheSearchFieldForFilters(String dob){
    	iFillInText(driver.findElement(By.cssSelector("#searchField")), dob);
    }    

    public void iVerifyDateRangeFilterInFilterOptions(String range){
    	verifyTextForElementWithMultipleSpaces(driver.findElement(By.cssSelector(".range-display>span")),range);
    }
    
    public void iClickOnYearTextBoxInsideDateRangeFilter(String year){
    	clickElement(driver.findElement(By.cssSelector(".precision-button-label")));
    	clickElement(driver.findElement(By.xpath("//tbody[@class='calendar-body']//td/div[normalize-space(.) = '"+year+"']")));
    }
    
    public void iClickOnParticiapntFieldFilterUnderFilterOptions(String participant,String text){
    	clickElement(driver.findElement(By.xpath("//div[@class='filter-item-label'][text()='"+participant+"']")));
    }
    
    public void iVerifyParticipantFieldAfterApplyingFilter(String participant,String text) {
    	verifyTextForElementWithMultipleSpaces(driver.findElement(By.cssSelector("#"+text+"FilterObj .selectorValue")),participant);
    }
    
    public void iClickOnApplyButtonForFilterInFilterOptions(){
    	clickElement(driver.findElement(By.cssSelector(".filter-btn-apply.dirty")));
    }
    
    public void iEnterTheValueInSearchField(String part,String text){
    	iFillInText(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-filter-input")), part);
    }
    
    public void iClickOnAppearingFacilityAfterSearching(String text) {
    	clickElement(driver.findElement(By.xpath("//div[@id='facilityFilterObj']//div[@title='"+text+"']")));
    }
    
    public void iClickOnFilterUnderFilterOptions(String text){
    	clickElement(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-root-header-label")));
    }
    
    public void iWaitforTheReportsEmbeddedIframeToLoad(){
    	iWillWaitToSee(By.xpath("//iframe[@class='embedded-iframe ng-scope']"));
    }
    
    public void iWillWaitToSeeReportNameInsideIframe(String reportname){
    	iWillWaitToSee(By.xpath("//*[@id='RPT001ReportName'][text()='"+reportname+"']"));
    	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("#progressTooltipDiv")));
    }
    
    public void iWaitToseeTile(String tile){
    	iWillWaitToSee(By.xpath("//p[text()='"+tile+"']"));
    }
    
    public void iWaitToSeeUnderReportsTileText(String report){
    	iWillWaitToSee(By.xpath("//label[@class='dropdown-tile-label ng-binding'][text()='"+report+"']"));
    }
    
    public void iWaitForElementsToLoadInNewWindow(){
    	iWillWaitToSee(By.cssSelector(".x-grid3-header-inner"));
    }
    
    public void iWaitUntillRefreshButtonDisappeared(){
    	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("#progressTooltipDiv")));
    }
    
    public void iWaitUntillLoadingIconDisappears(){
    	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector(".img.blockUIDefaultImg")));
    }
    
    public void iWaitToSeeOverallProgramUnderDashboardReport(String text){
    	iWillWaitToSee(By.xpath("//button[text()='"+text+"']"));
    	delay();
    }
    
    public void iWillWaitToSeeReportNameAfterClickingGraph(String reportname){
    	iWillWaitToSee(By.xpath("//*[@id='RPT001ReportName'][text()='"+reportname+"']"));
    }
    
    public void iWaitUntillLoadingMessageDisappearsIndideFrameInReports(){
    	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("#pageLoadingMessage")));
    }
    
    public void iClickOnAnchorFacilityTextFromFilterValueListSingleQuotes(String filterText){
        clickElement(driver.findElement(By.xpath("//*[starts-with(@id,'FT_AVA') and text()=\""+filterText+"\"]")));
    }
    
    public void iClickOnSelectColumnInNewWindowAfterClikingDrillThrough(String text){
    	clickElement(driver.findElement(By.xpath("//a[text()='"+text+"']")));
    }
    
    public void iVerifyTitleOnPopupAfterClickingSelectColumns(String text){
    	verifyTextForElement(driver.findElement(By.xpath("//td[text()='"+text+"']")),text);
    }
    
    public void iClickOnCheckBoxInEpisodeDrillThroughPopUp(String text,String type){
    	clickElement(driver.findElement(By.xpath("//div[@formula='["+type+"].["+text+"]']/input")));
    }
    
    public void iEnterValueInTextBoxUnderSelectDrillThroughColumns(String text){
    	iFillInText(driver.findElement(By.cssSelector("#searchFieldDrill")), text);
    }
    
    public void iVerifyTextUnderPhysicianDashboardReport(String text){
        verifyTextForElement(driver.findElement(By.cssSelector("#tableTitleObj")), text);
    }
    
    public void iClickOnFirstNameUnderAttributedPhysicianColumn(){
    	clickElement(driver.findElement(By.cssSelector("#performanceTableObjTable>tbody>tr:first-child>td:first-child")));
    }
    
    public void iWillWaitToSeeAfterClickingAttributedPhysicianName(String text){
    	iWillWaitToSee(By.xpath("//div[contains(text(),'"+text+"')]"));
    }
    
    public void iVerifyScorecardsUnderPerformanceScoreCardDashboard(){
    	isElementVisible(driver.findElement(By.cssSelector("#topKPIRow>div")));
    }
    
    public void iVerifyScorecardUnderPerformanceScorecard(String text){
    	isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'"+text+"')]/ancestor::div[@class='templateRow']")));
    }
    
    public void iVerifyInitiallyTop100PhysiciansLoaded(String text){
    	isElementVisible(driver.findElement(By.xpath("//*[@id='performanceTableObjTable_info'][contains(text(),'"+text+"')]")));
    }
    
    public void iVerifyPhysicianCountUnderAttributedPhysicians(int count){
    	verifyElementCount(("td.column0.string"), count);
    }
    
    public void iVerifyDiffernetCountButtonsOnDashboardPhyisician(String text){
    	verifyTextForElementFromListByXpath("//button[@name='render_phyRangeSelectorButton']", text);
    }
    
    public void iVerifyPaginationIsPresentAboveOnDashboardPhysicianPage(){
    	isElementVisible(driver.findElement(By.cssSelector("#performanceTableObjTable_paginate")));
    }
    
    public void iVerifyTabsAppearingUnderPaginationOnAbovePagination(String text){
    	verifyTextForElementfromList(".paginate_button", text);
    }
    
    public void iVerifyPaginationIsPresentBottomOnDashboardPhysicianPage(){
    	isElementVisible(driver.findElement(By.cssSelector(".col-sm-7>div")));
    }
    
    public void iVerifyTabsAppearingUnderPaginationOnBelowPagination(String text){
    	verifyTextForElementfromList(".col-sm-7>div>a", text);
    }
    
    public void iVerifyOneToHundreadAbovePhysicians(String text){
    	verifyTextForElement(driver.findElement(By.cssSelector("#performanceTableObjTable_info")),text);
    }
    
    public void iVerifyOneToHundreadBelowPhysicians(String text){
    	verifyTextForElement(driver.findElement(By.xpath("(//div[@class='dataTables_info'])[2]")),text);
    }
    
    public void iVerifyFilternameAppearingInScorecardPage(String text){
    	verifyTextForElementFromListByXpath("//div[@class='filter-title']", text);
    }
    
    public void iVerifyFilterBoxAppearingInScorecardPage(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#"+text+"FilterObj .filter-root-header.all-selected")));
    }
    
    public void iVerifySpotlightColorBesideAttributedPhysicians(String text){
    	isElementVisible(driver.findElement(By.cssSelector(".circle."+text+"")));
    }
    
    public void iShouldVerifySpotlightsNotAppearingOnPhysicianDashboard(){
    	isElementNotPresentOnPage(".circle.green");
    }
    
    public void iShouldVerifySymbolInTheColumn(String symbol,String text){
    	isElementVisible(driver.findElement(By.xpath("//table[thead[tr[th[text()='"+text+"']]]] //td[contains(text(),'"+symbol+"')]")));
    }
    
    public void iVerifyTableIsAppearingAfterSelectingTableUnderPhysicianDashboardReport(String text){
    	isElementVisible(driver.findElement(By.xpath(".//*[@id='"+text+"TableObjTable']")));
    }
    
    public void iVerifySectionUnderPerformanceScorecardDashboard(String text){
    	iVerifyTextFromListOfElement(By.cssSelector(".groupTitlePhy"),text);
    }
    
    public void iVerifyTop5PerformanceTableOnPerformanceScorecardDashbaord(String text){
    	isElementVisible(driver.findElement(By.cssSelector("#key"+text+"TableObjTable")));
    }
    
    public void iVerifyBarContainersUnderPostAcuteCareDischargeDisposition(){
    	isElementVisible(driver.findElement(By.cssSelector(".dataBarContainer>svg")));
    }
    
    public void iClickOnKpiBoxOnPerformanceScoreCardForDrillThrough(String text){
    	clickElement(driver.findElement(By.xpath("//div[div[contains(text(),'"+text+"')]]")));
    }
    
    public void iClickOnTop5TableUnderPerformanceScorecardDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("#key"+text+"TableObjTable>tbody>tr:nth-child(1)")));
    }
    
    public void iClickOnBarGraphUnderPostAcuteDischargeDispositionSection(){
    	clickElement(driver.findElement(By.cssSelector("#postAcuteTableObjTable>tbody>tr:nth-child(1)")));
    }
    
    public void iVerifyActualValueInKpiBox(String text){
    	isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'"+text+"')]/following-sibling::div[@class='value']")));
    }
    
    public void iVerifyAdjustedValueInKpiBox(String text){
    	isElementVisible(driver.findElement(By.xpath("//div[div[contains(text(),'"+text+"')]] //div[starts-with(@class,'var')]")));
    }
    
    public void iVerifyColumnUnderTop5PerformanceTable(String column,String text){
    	verifyTextForElement(driver.findElement(By.xpath("//table[@id='key"+text+"TableObjTable']//th[contains(text(),'"+column+"')]")),column);
    }
    
    public void iVerifySymbolOnKPIBox(String symbol,String kpibox){
    	isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'"+kpibox+"')]/following-sibling::div[contains(text(),'"+symbol+"')]")));
    }
    
    public void iVerifySymbolForAdjustedValueOnKPIBox(String symbol,String kpibox){
    	isElementVisible(driver.findElement(By.xpath("//div[div[contains(text(),'"+kpibox+"')]] //div[starts-with(@class,'var')][contains(text(),'"+symbol+"')]")));
    }
    
    public void iVerifySymbolAppearingUnderAvgEpisodeCostInBundleTable(String symbol,String text){
    	isElementVisible(driver.findElement(By.xpath("//table[@id='key"+text+"TableObjTable']/tbody/tr/td[contains(text(),'"+symbol+"')]")));
    }
    
    public void iVerifyAttributedPhysicianColumnValuesCenterAlligned(){
    	VerifyElementCssProperty(By.cssSelector("#performanceTableObjTable>tbody>tr>td.column0"),"text-align");
    }
    
    public void iVerifyEpisodesColumnValuesCenterAlligned(){
    	VerifyElementCssProperty(By.cssSelector("#performanceTableObjTable>tbody>tr>td.column1"),"text-align");
    }
    
    public void iVerifyAvgEpisodeCostValuesCenterAlligned(){
    	VerifyElementCssProperty(By.cssSelector("#performanceTableObjTable>tbody>tr>td.column2"),"text-align");
    }
    
    public void iVerifyDischToSnfValuesCenterAlligned(){
    	VerifyElementCssProperty(By.cssSelector("#performanceTableObjTable>tbody>tr>td.column5"),"text-align");
    }
    
    public void iVerifySnfDaysValuesCenterAlligned(){
    	VerifyElementCssProperty(By.cssSelector("#performanceTableObjTable>tbody>tr>td.column8"),"text-align");
    }
    
    public void iVerifyEpsWithReadmitValuesCenterAlligned(){
    	VerifyElementCssProperty(By.cssSelector("#performanceTableObjTable>tbody>tr>td.column11"),"text-align");
    }
    
    public void iVerifyKPIBoxesValuesCenterAlligned(){
    	VerifyElementCssProperty(By.cssSelector(".value"),"text-align");
    }
    
    public void iVerifyEpsiodeVolumeColumnUnderPerformanceTable(String text){
    	VerifyElementCssProperty(By.cssSelector("#key"+text+"TableObjTable>tbody>tr>td.column1"),"text-align");
    }
    
    public void iVerifyAvgEpisodeCostColumnUnderPerformanceTable(String text){
    	VerifyElementCssProperty(By.cssSelector("#key"+text+"TableObjTable>tbody>tr>td.column2"),"text-align");
    }
    
    public  void iVerifyAvgTargetPriceColumnUnderPerformanceTable(String text){
    	VerifyElementCssProperty(By.cssSelector("#key"+text+"TableObjTable>tbody>tr>td.column3"),"text-align");
    }
    
    public void iVerifyAdjustedHistoricButtonOnPhysicianDashboardReport(){
    	isElementVisible(driver.findElement(By.xpath("//button[@name='render_benchmarkSelector']")));
    }
    
    public void iVerifyClaimsUnderDataSourceUnderPhysicianReport(String text){
    	isElementVisible(driver.findElement(By.xpath("//button[text()='"+text+"']")));
    }
    
    public void iVerifyFilterFieldAfterSearching(String text){
    	verifyTextForElement(driver.findElement(By.xpath("//div[@class='field measure dojoDndItem uncommon']")),text);
    }
    
    public void iVerifyInAvailableFieldsAfterSearchingUnderNextSiteOfCareSummary(String text){
    	verifyTextForElementFromListByXpath("//div[@class='field attribute dojoDndItem uncommon']",text);
    }
    
    public void IClickOnCloseToClearTextBox(){
    	clickElement(driver.findElement(By.cssSelector("#clearSearchField")));
    }
    
    public void iVerifyTextNotAppearingInDefaultMeasure(String text){
    	verifyTextNotPresentForElementFromList("div[type='measure']>div:nth-child(1)",text);
    }
    
    public void iShouldNotSeeUnderSearchedMeasuresResults(String text){
    	verifyTextNotPresentForElementFromList("#GROUP0DIV>div",text);
    }
    
    public void iVerifyHeaderNameCenterAlligned(String text){
    	VerifyElementCssProperty(By.xpath("//th[text()='"+text+"']"),"text-align");
    }
    
    public void iShouldNotSeeElementInTheFilterValueList(String text){
    	verifyTextNotPresentForElementFromList("#FT_valueList div",text);
    }
    
    public void iShouldSeeColumnAfterClickingAddToReport(String text){
    	isElementVisible(driver.findElement(By.xpath("//td[@title='"+text+"']")));
    }
    
    public void iVerifyRowsNameUnderDRG(String text){
    	verifyTextForElementFromListByXpath("//td[@class='inner'][@formula='[DRG].[DRG]']",text);
    }
    
    public void iClickOnEpisodeNumberUnderEpisodesColumnofNextSiteOfCareSummaryReport(){
    	clickElement(driver.findElement(By.cssSelector("a[href*='javascript:drill(0,3)']")));
    }
    
    public void iClickOnEpisodeNumberUnderEpisodesColumnofInitialSNFLengthOfStaySummaryReport(){
    	clickElement(driver.findElement(By.cssSelector("a[href*='javascript:drill(0,2)']")));
    }
    
    public void iVerifyCheckboxIsCheckedForDrillThrough(String text,String type){
    	if ( driver.findElement(By.xpath("//div[@formula='["+type+"].["+text+"]']/input")).isSelected())
    	{
    		clickElement(driver.findElement(By.id("dlgBtnSave")));
    	}
    }
    
    public void iSeeAnchorPostAcuteAdmissionYearFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@formula='[Anchor Post Acute Admit Date].[Anchor Post Acute Admission Year]']/span")),text);
    }
    
    public void iSeeIsAnchorAdmissionFilterPreselected(String text){
    	verifyTextForElement(driver.findElement(By.xpath(".//div[@formula='[isAnchorAdmission].[isAnchorAdmission]']/span")),text);
    }
    
    public void iVerifyReportTextNotPresent(String text){
        delay();
        verifyTextNotPresentForElementFromList("a.ng-binding.ng-scope", text);
    }
    
    public void iClickOnNumberOfEpisodesColumnUnderNsocModel3Report(){
    	clickElement(driver.findElement(By.cssSelector("a[href*='javascript:drill(0,0)']")));
    }
}