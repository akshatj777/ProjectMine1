package com.remedy.Reports;

import com.remedy.baseClass.BaseClass;
import cucumber.api.DataTable;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import java.util.List;

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

    public void iVerifyFilterValueListModalText(String text){
        delay();
        verifyTextForElementfromList("#FT_valueList div", text);
    }

    public void iClickOnFilterTextFormFilterValueList(String filterText){
        clickElement(driver.findElement(By.xpath("//*[starts-with(@id,'FT_AVA') and text()='"+filterText+"']")));
    }

    public void iClickAddSelectedArrowFromFilterModal() {

        clickElement(driver.findElement(By.id("FT_select_add")));
    }

    public void iClickOkButtonFromFilterModal() {

        clickElement(driver.findElement(By.id("dlgBtnSave")));
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
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='rpt-report-header-label-0']")), text);
    }

    public void iVerifySNFLOSDetailPostAcuteCareReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='rpt-report-header-label-0']")), text);
    }

    public void iVerifyPhysicianPerformancePhysicianReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }

    public void iVerifyCARLNSOCReportPageHeader(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='RPT001ReportName']")), text);
    }

    public void iVerifyReadmissionsReadmissionReportPageHeader(String text){
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
    
    public void iClickOnReportTextForPhysicianReports(String text){
        selectElementByTextDescByXpath("//div[label[text()='Physician']]/following-sibling::div/a", text);
        longDelay();
    }
}
