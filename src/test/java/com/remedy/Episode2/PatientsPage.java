package com.remedy.Episode2;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by ashish.ranjan on 24-11-2016.
 */
public class PatientsPage extends BaseClass{

    public PatientsPage(WebDriver driver){
        super(driver);
    }

    public void iVerifyTabInFilterBarOnPatientsPage(String elementText){
        verifyTextForElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+elementText+"')]]]")), elementText);
    }

    public void iClickTabInFilterBarOnPatientsPage(String elementTextXpath){
        clickElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+elementTextXpath+"')]]]")));
    }

    public void iVerifyViewSectionOnPatientsPage(String elementText) {
        verifyTextForElement(driver.findElement(By.xpath("//span[text()='View:']")), elementText);
    }

    public void iVerifyViewAsActiveViewOnPatientsPage(By element) {
        verifyElementAttributeContainsValue(driver.findElement(element),"class","active");
    }

    public void iVerifyToHaveViewOptionOnPatientsPage(By element , String viewOptions) {
        verifyElementAttributeContainsValue(driver.findElement(element),"ng-click", viewOptions);
    }

    public void iClickViewOnPatientsPage(String viewElement) {
        clickElement(driver.findElement(By.cssSelector(viewElement)));
    }

    public void iEnterInPatientSearchFieldOnPatientsPage(String patientName){
        iFillInText(driver.findElement(By.xpath("//div[@placeholder='Search Name']/div/input")), patientName);
    }

    public void iVerifyPatientSearchedResultContainsTextOnPatientPage(String patientNameText){
        verifyTextForElementFromListByXpath("//div[@class='card-header-content']/div/h3", patientNameText);
    }

    public void iVerifySeeAsPlaceholderForSearchOnPatientPage(String elementText) {
        verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("i.valentino-icon-search ~ input")), "placeholder", elementText);
    }

    public void iVerifyElementPresentOnPatientPage(By byLocator){
         isElementVisible(driver.findElement(byLocator));
    }

    public void iVerifyElementTextPresentOnPatientPage(By byLocator, String elementText){
         verifyTextForElement(driver.findElement(byLocator), elementText);
    }

    public void iVerifyCountOFPatientCardsArePresentOnPatientsPage(int Count){
        verifyElementCount(".row.cards-mode.isotope>div", Count);
    }

    public void iClickOnWorkistFilterOptionsOnPatientsPage(String worklistOption){
        clickElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+worklistOption+"')]]]")));
    }

    public void iVerifyWorklistSubBarOptionsPresentOnPatientsPage(String worklistSubbar){
        isElementVisible(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+worklistSubbar+"')]]]")));
    }
    
    public void iClickOnFilterButtonPresentOnPatientPage(){
    	clickElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'Filters')]]]")));
    }
    
    public void iVerifyDateRangeIsSelectedAsDefaultFilterUnderFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//span[text()='Date Range']")));
    }
    
    public void iVerifyCareSettingIsSelectedAsDefaultFilterUnderFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//span[text()='Care Setting']")));
    }
    
    public void iVerifyInitiatorIsSelectedAsDefaultFilterUnderFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//span[text()='Initiator']")));
    }
    
    public void iClickOnFiltersButtonPresentOnFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("div.row-controls>a")));
    }
    
    public void iVerifyAdmitReasonFilterIsDisplayedUnderListofFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Admit Reason')]")));
    }
    
    public void iVerifyAnchorDischargeFacilityFilterIsDisplayedUnderListofFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Anchor Discharge Facility')]")));
    }
    
    public void iVerifyAnchorFacilityFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Anchor Facility')]")));
    }
    
    public void iVerifyCarePlanFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Care Plan')]")));
    }
    
    public void iVerifyCareSettingFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Care Setting')]")));
    }
    
    public void iVerifyCooperationMetricFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Cooperation Metric')]")));
    }
    
    public void iVerifyCurrentFacilityFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Current Facility')]")));
    }
    
    public void iVerifyDailyReportFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Daily Report')]")));
    }
    
    public void iVerifyDateRangeFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Date Range')]")));
    }
    
    public void iVerifyDRGTypeFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'DRG Type')]")));
    }
    
    public void iVerifyEligibilityFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Eligibility')]")));
    }
    
    public void iVerifyEpisodeDRGFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Episode DRG')]")));
    }
    
    public void iVerifyEpisodeStatusFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Episode Status')]")));
    }
    
    public void iVerifyFirstNameFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'First Name')]")));
    }
    
    public void iVerifyGenderFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Gender')]")));
    }
    
    public void iVerifyInitiatorFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Initiator')]")));
    }
    
    public void iVerifyInpatientLocationFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Inpatient Location')]")));
    }
    
    public void iVerifyLastNameFilterIsDisplayedUnderListOfFilterOptions(){
    	isElementVisible(driver.findElement(By.xpath("//ul[@class='list-unstyled']/li[contains(text(),'Last Name')]")));

    }
    
    public void iClickOnAdmitReasonFilterPresentOnFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(1)")));
    }
    
    public void i_type_in_the_search_field_on_patients_page(String admitReason){
    	iFillInText(driver.findElement(By.cssSelector("[name='admit-reason']")), admitReason);
    }
    
    public void iVerifyTheTotalNumberOfPatientsPresentOnThePatientsPage(){
    	isElementVisible(driver.findElement(By.cssSelector(".controls-bar.ng-scope>div>strong")));
    }
    
    public void iClickOnDoneButtonPresentOnTheFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("button[class='btn btn-primary'][ng-click='closeFilters()']")));
    }
    
    public void iClickOnAnchorDischargeFacilityFilterPresentOnTheFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(2)")));
    }
    
    public void iClickOnAnchorDischargeFacilityDropdownToSelectTheFaciltyOnTheFilterPage(){
    	clickElement(driver.findElement(By.cssSelector(".form-control.dropdown-look")));
    }
    
    public void iTypeInTheSearchFieldToSearchTheAnchorDischargeFacilty(String Facility){
    	iFillInText(driver.findElement(By.cssSelector("input[placeholder='Name or Group*']")), Facility);
    }
    
    public void iSelectStamfordHospitalCheckboxPresentInTheFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("li.checkbox-item:nth-child(1)>div:nth-child(2)>label[for*='anchor-discharge-facility']")));
    }
    
    public void iClickOnAnchorFacilityFilterPresentInTheFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("div.filters-list>ul>li:nth-child(3)")));
    }
    
    public void iClickOnAnchorFacilityDropdownToSelectTheFaciltyOnTheFilterPage(){
    	clickElement(driver.findElement(By.cssSelector(".form-control.dropdown-look")));
    }
    
    public void iTypeInTheSearchFieldToSearchTheAnchorFacilty(String facility){
    	iFillInText(driver.findElement(By.cssSelector("input[placeholder='Name or Group*']")), facility);
    }
    
    public void iSelectStamfordHospitalCheckboxAsAnchorFacilityPresentInTheFilterPage(){
    	clickElement(driver.findElement(By.cssSelector("li.checkbox-item>div.checkbox>input[id*='anchor-facility']")));

    }
}
