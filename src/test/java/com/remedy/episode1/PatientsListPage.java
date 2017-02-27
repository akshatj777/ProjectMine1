package com.remedy.episode1;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 5/10/16.
 */
public class PatientsListPage extends BaseClass {

    public PatientsListPage(WebDriver driver){

        super(driver);
    }


    public void iverifyPatientListPageheader(String text ){

        verifyTextForElement(driver.findElement(By.cssSelector(".ec2-embed-patient-name")), text);

    }
    
    public void iClickOnTheLeftNavigatorPresentOnTheEpisodeDashboardPage(String text){
    	clickElement(driver.findElement(By.cssSelector("a#patientsListOpenClose")));
    }
    
    public void iShouldSeeInThePatientsDropdownMenu(String text){
    	isElementVisible(driver.findElement(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]")));	
    }

    public void iClickOnInThePatientsDropdownMenu(String text){
        clickElement(driver.findElement(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]")));
    }

    public void iClickOnAddPatientButtonPresentOnTheEcPatientsPage(int text){
        clickElement(driver.findElement(By.cssSelector("a#patient-add-button")));

    }

    public void iClickOnPinToDashboardInToPinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(2)>a")));
    }
    
    public void iClickOnUnpinFromDashboardInToPinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(2)>a")));
    }
    
    public void iClickOnPinToBookmarksInToPinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(3)>a")));
    }
    
    public void iClickOnUnpinFromBookmarksInToUnpinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(3)>a")));
    }
    
    public void iClickOnLoadFilterInToLoadThePatientListPresentOnThePatientsDropdown(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(1)>a")));
    }
    
    public void iShouldSeePresentOnThePatientListFilterPagePresentOnThePatientListPage(String text){
    	isElementVisible(driver.findElement(By.xpath("//h3/span[contains(text(),'"+text+"')]")));	
    }
    
    public void iShouldSeePatientListCountInfoPresentOnThePatientListPage(){
    	isElementVisible(driver.findElement(By.cssSelector("div.count_info")));	
    }
    
    public void iVerifyExportButtonIsPresentOnThePatientListPage(){
    	isElementVisible(driver.findElement(By.cssSelector("button.export-csv")));	
    }
    
    public void iClickOnTheExportButtonPresentOnThePatientListPage(){
    	clickElement(driver.findElement(By.cssSelector("button.export-csv")));
    }
    
    public void iClickOnTheSelectAllOptionPresentOnTheExportListPage(){
    	clickElement(driver.findElement(By.cssSelector("#modal-select-all")));
    }
    
    public void iClickOnTheCancelButtonPresentOnTheExportListPage(){
    	clickElement(driver.findElement(By.cssSelector("#modal-download-file-cancel")));
    }
    
    public void iClickOnPresentInThePatientsDropdownMenu(String text){
    	clickElement(driver.findElement(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]")));
    }
    
    public void iShouldSeeFilterTabPresentOnThePatientListPage(String filtertab){
    	isElementVisible(driver.findElement(By.cssSelector("button[name='"+filtertab+"']")));	
    }
    
    public void iClickOnCareSettingDropdownPresentOnThePatientPage(){
    	clickElement(driver.findElement(By.xpath("//span[text()='Care Setting']")));
    }
    
    public void iSelectHospitalInpatientOptionPresentOnTheCareSettingDropdown(){
    	clickElement(driver.findElement(By.xpath("//div[@class='dropdown-list available scroller']/label[1]/div/span")));
    }
    
    public void iSelectHospitalObservationOptionPresentOnTheCareSettingDropdown(){
    	clickElement(driver.findElement(By.xpath("//div[@class='dropdown-list available scroller']/label[2]/div/span")));
    }
    
    public void iClickOnSearchButtonPresentOnThePatientsPage(){
    	clickElement(driver.findElement(By.cssSelector("button.refreshPatientsList")));
    }
    
    public void iClickOnSaveAsButtonPresentOnThePatientPage(){
    	clickElement(driver.findElement(By.cssSelector("button.main-save-as")));
    }
    
    public void iEnterTheFilterNameOnTheTextBoxPresentOnTheNewFilterModal(String filter){
    	iFillInText(driver.findElement(By.cssSelector("input#filter_name")), filter);
    }
    
    public void iClickOnSubmitButtonPresentOnTheNewFilterModal(){
    	clickElement(driver.findElement(By.cssSelector("button#submitButton")));
    }
    
    public void iShouldSeePresentOnTheCustomFilterList(String filter){
    	isElementVisible(driver.findElement(By.cssSelector("a[data-name='"+filter+"']")));
    }
    
    public void iEnterThePatientSearchBoxPresentOnThePatientPage(String patientName){
    	iFillInText(driver.findElement(By.cssSelector("input#form_search_search")), patientName);
    }

    public void iShouldSeePatientOnThePatientListPresentOnThePatientPage(String patientName){
    	isElementVisible(driver.findElement(By.cssSelector("span.ng-scope>div:nth-child(1) div.element-title.ng-binding")));
    }
    
    public void iShouldSeeClearFilterButtonPresentOnThePatientPage(){
    	isElementVisible(driver.findElement(By.cssSelector("a#filter-clear-button")));
    }
    
    public void iClickOnTheClearFilterButtonPresentOnThePatientPage(){
    	clickElement(driver.findElement(By.cssSelector("a#filter-clear-button")));
    }
}
