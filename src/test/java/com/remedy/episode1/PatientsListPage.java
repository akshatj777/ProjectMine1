package com.remedy.episode1;

import java.io.File;

import org.apache.commons.lang.StringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import com.remedy.Episode2.DischargeCarlForm;
import com.remedy.baseClass.BaseClass;

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
    	iWillWaitToSee(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]"));
    	isElementVisible(driver.findElement(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]")));	
    }

    public void iClickOnInThePatientsDropdownMenu(String text){
        iWillWaitToSee(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]"));
    	clickElement(driver.findElement(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]")));
    }

    public void iClickOnAddPatientButtonPresentOnTheEcPatientsPage(int text){
    	iWillWaitToSee(By.cssSelector("a#patient-add-button"));
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
    	//clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(1)>a")));
    	iWillWaitToSee(By.xpath("//a[@name='"+text+"' and text()='Load filter']"));
    	clickElement(driver.findElement(By.xpath("//a[@name='"+text+"' and text()='Load filter']")));
    }
    
    public void iShouldSeePresentOnThePatientListFilterPagePresentOnThePatientListPage(String text){
    	iWillWaitToSee(By.xpath("//h3/span[contains(text(),'"+text+"')]"));
    	isElementVisible(driver.findElement(By.xpath("//h3/span[contains(text(),'"+text+"')]")));	
    }
    
    public void iShouldSeePatientListCountInfoPresentOnThePatientListPage(){
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".dataTables_processing"))));
    	isElementVisible(driver.findElement(By.cssSelector("div.count_info")));	
    }
    
    public void iVerifyExportButtonIsPresentOnThePatientListPage(){
    	isElementVisible(driver.findElement(By.cssSelector("button.export-csv")));	
    }
    
    public void iClickOnTheExportButtonPresentOnThePatientListPage(){
    	clickElement(driver.findElement(By.cssSelector("button.export-csv")));
    	iWillWaitToSee(By.cssSelector(".modal-title"));
    }
    
    public void iClickOnTheSelectAllOptionPresentOnTheExportListPage(){
    	clickElement(driver.findElement(By.cssSelector("#modal-select-all")));
    }
    
    public void iClickOnTheDownloadFileButtonPresentOnTheExportListPage(){
    	clickElement(driver.findElement(By.cssSelector("#modal-download-file")));
    }
    
    public void iVerifyHeaderOnEportListPage(String text){
    	String actual = getTextForElement(driver.findElement(By.cssSelector("h2")));
    	Assert.assertEquals(text, actual.trim());
    	
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
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector("#tblPatients_processing"))));
    }
    
    public void iClickOnSaveAsButtonPresentOnThePatientPage(){
    	clickElement(driver.findElement(By.cssSelector("button.main-save-as")));
    }
    
    public void iEnterTheFilterNameOnTheTextBoxPresentOnTheNewFilterModal(String filter){
    	iFillInText(driver.findElement(By.cssSelector("input#filter_name")), filter);
    }
    
    public void iClickOnSubmitButtonPresentOnTheNewFilterModal(){
    	clickElement(driver.findElement(By.cssSelector("button#submitButton")));
    	delay();
    }
    
    public void iShouldSeePresentOnTheCustomFilterList(String filter){
    	isElementVisible(driver.findElement(By.cssSelector("a[data-name='"+filter+"']")));
    }
    
    public void iEnterThePatientSearchBoxPresentOnThePatientPage(String patientName){
    	iFillInText(driver.findElement(By.cssSelector("input#form_search_search")), patientName);
    }
    
    public void iEnterPatientFirstNameSearchBoxPresentOnThePatientPage(){
    	iFillInText(driver.findElement(By.cssSelector("input#form_search_search")), DischargeCarlForm.firstname);
    }
    
    public void iEnterPatientFullNameSearchBoxPresentOnThePatientPage(){
    	String name = DischargeCarlForm.firstname +" "+ DischargeCarlForm.lastname;
    	iFillInText(driver.findElement(By.cssSelector("input#form_search_search")), name);
    }
    
    public void iShouldSeePatientFullnameAppearingOnPatientCard(){
    	String name = DischargeCarlForm.lastname +" "+ DischargeCarlForm.firstname;
    	String actual = driver.findElements(By.cssSelector(".element-title.ng-binding")).get(0).getText().trim();
    	actual = actual.replaceAll(",", "");
    	Assert.assertTrue(actual.equalsIgnoreCase(name));
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
    
    public void iClickOnButtonForFilters(String button, String filter){
    	clickElement(driver.findElement(By.xpath("//div[label[contains(text(),'"+filter+"')]]//span[text()='"+button+"']")));
    }
    
    public void iSearchTextInFilter(String text, String filter){
    	iWillWaitToSee(By.xpath("//input[@placeholder='"+filter+"']"));
    	iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+filter+"']")), text);
    	driver.findElement(By.xpath("//label[contains(text(),'SSN')]")).sendKeys(Keys.TAB);;
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".dataTables_processing"))));
    }
    
    public void iClickOnOptionFromPatientslistPatientGearMenu(String option){
//    	scrollIntoViewByJS(driver.findElement(By.xpath("//div[@class='col-md-2 center open']//li")));
    	clickSingleElementFromList(By.xpath("//div[@class='col-md-2 center open']//li"), option);
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".loading-message.loading-message-boxed>span"))));
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".blockUI.blockMsg.blockElement"))));
    }
    
    public void iClickOnFirstPatientGearMenu(){
//    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector("#tblPatients_processing"))));
    	delay();
    	iWillWaitToSee(By.xpath("//i[@class='fa fa-cog']"));
    	driver.findElements(By.xpath("//i[@class='fa fa-cog']")).get(0).click();
    	delay();
    }
    
    public void iVerifyHeaderTextOnPopUp(String text){
    	iWillWaitToSee(By.cssSelector(".modal-title"));
    	String actual = getTextForElement(driver.findElement(By.cssSelector(".modal-title")));
    	Assert.assertEquals(text, actual);
    }
    
    public void iFillInTextDueDateWithTodayDate() throws InterruptedException{
    	iWillWaitToSee(By.cssSelector(".btn.default.date-set>i"));
    	Thread.sleep(10000);
    	clickElement(driver.findElement(By.cssSelector(".btn.default.date-set>i")));
    	clickElement(driver.findElement(By.cssSelector(".day.active")));
    	clickElement(driver.findElement(By.cssSelector(".hour.active")));
    	clickElement(driver.findElement(By.cssSelector(".minute.active")));
    	iWillWaitToSee(By.xpath("//span[contains(@class,'alert alert-info')]"));
    }
    
    public void iFillInTaskDescriptionForPatientList(String text){
    	iFillInText(driver.findElement(By.cssSelector("#ec_taskbundle_ectasktype_patientlist_text")), text);
    }
    
    public void iSelectCheckboxOnPopUpForCareTeam(){
    	driver.findElements(By.xpath("//div[@class='panel-body']")).get(0).click();
    }
    
    public void iWillWaitToSeeText(String text){
    	iWillWaitToSee(By.xpath("//*[text()='"+text+"']"));
    }
    
    public void iClickOnButtonWithText(String text){
    	if(driver.findElements(By.cssSelector(".loading-message.loading-message-boxed")).size()>0){
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".loading-message.loading-message-boxed"))));
    	}
    	longDelay();
    	clickElement(driver.findElement(By.xpath("//*[text()='"+text+"']")));
    	if(driver.findElements(By.cssSelector(".loading-message.loading-message-boxed")).size()>0)
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".loading-message.loading-message-boxed"))));

    }
    
    public void iCloseModalPopUp() throws InterruptedException{
    	Thread.sleep(20000);
    	iWillWaitToSee(By.cssSelector(".modal-content .close"));
    	clickElement(driver.findElement(By.cssSelector(".modal-content .close")));
    }
    
    public void iFillTextOnAppointmentForm(String text,String field){
    	iFillInText(driver.findElement(By.xpath("//div[label[text()='"+field+"']]/div/input")), text);
    }
    
    public void iSelectAppointmentType(String text){
    	driver.findElement(By.cssSelector("#bp_personbundle_bpappointmenttype_appointment_type"));
    	driver.findElement(By.xpath("//option[@value='"+text+"']"));
    }
    
    public void iSelectTopicFromDropDownOnNote(String text){
    	driver.findElement(By.cssSelector("#bp_personbundle_bpnotetype_topic"));
    	driver.findElement(By.xpath("//option[@value='"+text+"']"));
    }
    
    public void iVerifyOnboardingStatusOnPatientList(String text){
    	String actual = driver.findElements(By.xpath("//div[@class='row body']//span[contains(@class,'status-value')]")).get(0).getAttribute("class");
    	actual = actual.replaceAll("status-value", "");
    	actual = actual.replaceAll("display ng-scope", "").trim();
    	if(text.equalsIgnoreCase("Needs Onboarding")){
    		Assert.assertEquals("needs-onboarding", actual);
    	}
    	else if (text.equalsIgnoreCase("Unknown")){
    		Assert.assertEquals("unknown", actual);
    	}
    }
    
    public void iVerifyEligibilityOnPatientList(String text){
    	String actual = driver.findElements(By.cssSelector(".col-md-2.two-rows.ng-binding")).get(0).getText();
    	actual = actual.substring(actual.indexOf("Eligibility")+1).trim();
    	Assert.assertEquals("text", actual);
    }
    
    public void iShouldSeeEpisodeInitiatorOnPatientListPage(String text){
    	String actual = driver.findElements(By.xpath("//div[div[text()='Episode Initiator']]/span")).get(0).getText();
    	Assert.assertEquals(text, actual.trim());
    }
    
    public void iShouldSeeCountOnPatientSearchOnPatientList(String text){
    	iWillWaitToSee(By.xpath("//div[text()='"+text+"']"));
    }
    
    public void iClickOnFirstCheckboxOnClinicianModal(){
    	iWillWaitToSee(By.cssSelector(".lpn-checkbox input"));
    	clickElement(driver.findElements(By.cssSelector(".lpn-checkbox input")).get(0));
    }


	public void iverifypatientcountlessthan1000(String operand) {
		delay();
		iWillWaitToSee(By.cssSelector("div.count_info"));
		longDelay();
		String patient_count=getTextForElement(driver.findElement(By.cssSelector("div.count_info")));
		String[] sp = patient_count.split(" ");
		int exact_count=Integer.parseInt(sp[5]);
	    if(operand.equals("less")){
		Assert.assertTrue(exact_count<1000);}
		else if(operand.equals("greater")){
	    Assert.assertTrue(exact_count>1000);}	
		}
	



	public void i_click_check_box_on_export_list(String name, String datafilter) {
		iWillWaitToSee(By.xpath("//*[@id='ajax-modal']/div/div/div[2]//*[@id='filter-form']//label[@data-filter-name='"+datafilter+"']"));
		clickElement(driver.findElement(By.xpath("//*[@id='ajax-modal']/div/div/div[2]//*[@id='filter-form']//label[@data-filter-name='"+datafilter+"']")));
	}


	public void i_verify_downloaded_file_on_export(String filename, String format) {
		String importDir = System.getProperty("user.dir");
		String downloadFilepath = importDir + File.separator + "src" + File.separator + "test" + File.separator + "Imports" + File.separator + "Downloads" ;
		verifyDownloadedFile(downloadFilepath,filename,format);
		
	}


	public void progress_on_patient_card(String value) {
		longDelay();
		iWillWaitToSee(By.xpath("//div[contains(@ng-if,'element.progress.exists')]/span"));
		verifyTextForElement(driver.findElement(By.xpath("//div[contains(@ng-if,'element.progress.exists')]/span")),value);
	}


	public void location_on_patient_card(String value1, String value2) {
		iWillWaitToSee(By.xpath("//span[contains(@ng-if,'element.currentTransitionStatus.length')]/b"));
		verifyTextForElement(driver.findElement(By.xpath("//span[contains(@ng-if,'element.currentTransitionStatus.length')]/b")),value1);
		verifyTextForElement(driver.findElement(By.xpath("//span[contains(@ng-if,'element.currentTransitionLocation.length')]")),value2);
	}


	public void drgonpatientcard(String value1) {
		delay();
		iWillWaitToSee(By.xpath("//div[contains(@ng-if,'element.drg')]"));
	    String text=driver.findElement(By.xpath("//div[contains(@ng-if,'element.drg')]")).getAttribute("innerText");
	    Assert.assertTrue(text.contains(value1));
	}


	public void iShouldSeeAnchorFacilityOnPatientListPage(String text1) {
		String actual = driver.findElement(By.xpath("//div[contains(@ng-if,'element.facility')]")).getAttribute("outerText");
    	Assert.assertEquals(text1, actual);
	}
	
}
