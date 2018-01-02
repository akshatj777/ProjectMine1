package com.remedy.userAdmin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;
import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

/**
 * Created by salam on 7/30/15.
 */

public class CreateUserPage extends BaseClass{

	public final static DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	public final static Date timestamp = new Date();
	public final static String time = df.format(timestamp);
	String userRole = null;
	String userApplications = null;
	public static HashMap<String,HashMap<String,String>> usersEmailPerRole=new HashMap<String,HashMap<String,String>>();
	public static HashMap<String,HashMap<String,String>> usersApplicationsPerRole=new HashMap<String,HashMap<String,String>>();
	WebDriverWait wait = new WebDriverWait(driver, 60); 

    public CreateUserPage(WebDriver driver){
        super(driver);
    }

    public void iClickOrganizationalField() {
        iWillWaitToSee(By.xpath("//div[text()='Select Role']"));
    	clickElement(driver.findElement(By.xpath("//div[text()='Select Role']")));
    }

    public void iTurnOffShareFile(){
   		if((isElementPresentOnPage(By.xpath("//div/label[@for='sharefile']")))){
   			clickElement(driver.findElement(By.xpath("//div/label[@for='sharefile']")));
   		}else{
   			return;
   		}
    	
    }

    public void iClickPayerField() {
    	boolean value= isElementPresentOnPage(By.xpath("//div[@placeholder='Select']/span"));
    	if(value==true){
    	clickElement(driver.findElement(By.xpath("//div[@placeholder='Select']/span")));
    	}
    }

    public void selectOrganizationalRole(String desc){
        	WebElement element = driver.findElement(By.xpath("//span[text()='"+desc+"']"));
        	scrollIntoViewByJS(element);
        	element.click();
        	userRole = desc;
    }
    
    public void selectPayerFromData(String desc){
    	boolean value= isElementPresentOnPage(By.cssSelector(".ui-select-choices-row-inner"));
    	if(value==true){
        selectElementByDesc(".ui-select-choices-row-inner", desc);
    	}
    }
    
    public void iVerifyTheFirstPayerFieldAddedUnderPermissionsSection(){
    	isElementVisible(driver.findElement(By.xpath("//label[text()='Stamford Hospital']")));
    }
    
    public void iVerifyTheSecondPayerFieldAddedUnderPermissionsSection(){
    	isElementVisible(driver.findElement(By.xpath("//label[text()='RP Payer Test A']")));
    }

    public void iEnterNPI(String npi, String role){
    	if(role.equals("Physicians"))
		{
			if(npi.equals("NPI"))
			{
				iWillWaitToSee(By.xpath("//input[@placeholder='NPI']"));
				iFillInText(driver.findElement(By.xpath("//input[@placeholder='NPI']")),RandomStringUtils.randomNumeric(10));
			}
			else
			{
				iWillWaitToSee(By.xpath("//input[@placeholder='NPI']"));
				iFillInText(driver.findElement(By.xpath("//input[@placeholder='NPI']")), npi);
			}
		}
    }

    public void iEnterFirstName(String text){
    	iWillWaitToSee(By.xpath("//input[@placeholder='First Name']"));
        iFillInText(driver.findElement(By.xpath("//input[@placeholder='First Name']")), text);
    }

    public void iEnterLasttName(String text) {
        iWillWaitToSee(By.xpath("//input[@placeholder='Last Name']"));
    	iFillInText(driver.findElement(By.xpath("//input[@placeholder='Last Name']")), text);
    }

    public final static String iGenerateEmail(String text) {
        final String mail = text + time;
        final String email = "user" + mail + "@mailinator.com";
        return email;
    }

    public void iEnterEmail(String text) {
        iFillInText(driver.findElement(By.xpath("//input[@placeholder='Email']")), iGenerateEmail(text));
    }

    public void iEnterEmailForLoginAfterPasswordMailVerification(String text) {
        iFillInText(driver.findElement(By.xpath("//input[@type='email']")), iGenerateEmail(text));
    }

    public void iEnterPasswordFieldForLoginAfterPasswordVerification(String Password) {
        iFillInText(driver.findElement(By.name("password")), Password);
    }

    public void iEnterPhone(String text) {
    	iWillWaitToSee(By.xpath("//input[@placeholder='Phone']"));
        iFillInText(driver.findElement(By.xpath("//input[@placeholder='Phone']")), text);
    }

    public void iEnterTheEmailToGeneratePassword(String text) {
        iFillInText(driver.findElement(By.xpath("//input[@type='email']")), iGenerateEmail(text));
    }

    public void iClickOnSendEmailButton() {
        clickElement(driver.findElement(By.xpath("//button[@type='submit']")));
    }

    public void iClickOnTheEmailReceivedToChangeYourPassword() {
        clickElement(driver.findElement(By.xpath("//div[contains(text(),' Remedy QA')]")));
    }

    public void iClickOnChangeMyPasswordLink() {
        driver.switchTo().frame(driver.findElement(By.xpath("//*[@id='publicshowmaildivcontent']")));
        clickElement(driver.findElement(By.xpath("//a[contains(text(),'Change my password')]")));
    }

    public void iSwitchToFrameUnderReceivedMailContent(){
    	driver.switchTo().frame(driver.findElement(By.xpath("//*[@id='publicshowmaildivcontent']")));
    }

    public void iClickOnChangeMyPasswordLinkUnderRecievedMailContent() {
        clickElement(driver.findElement(By.xpath("//a[contains(text(),'Change my password')]")));
    }

    public void iClickHealthSystemField() {
    	delay();
    	boolean value = isElementPresentOnPage(By.xpath("//div[@name='participantSelect']/div[@placeholder='Search']/span"));
    	if(value==true){
        clickElement(driver.findElement(By.xpath("//div[@name='participantSelect']/div[@placeholder='Search']/span")));
    	}
    }

    public void iEnterHealthSystemSerachText(String text) {
    	iWillWaitToSee(By.xpath("//div[text()='Select']/parent::div/following-sibling::div/div/div/input"));
        iFillInText(driver.findElement(By.xpath("//div[text()='Select']/parent::div/following-sibling::div/div/div/input")), text);
    }

    public void iSelectHealthSystem(String desc) {
    	iWillWaitToSee(By.xpath("//div[text()='"+desc+"']"));
        clickElement(driver.findElement(By.xpath("//div[text()='"+desc+"']")));
    }

    public void iShouldSeeDifferentTilesForDifferentUserRole(String role) {
        isElementVisible(driver.findElement(By.cssSelector(".title>p")));
    }

    public void iClickOnECTwoTileUnderSpecificUserLoginPage(String text,String role){
    	if(text.isEmpty()!=true){
    		Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='title']/p[text()='"+text+"']")));
    	 	  clickElement(driver.findElement(By.xpath("//div[@class='title']/p[text()='"+text+"']")));
    	 	  delay();
    	 	  clickElement(driver.findElement(By.cssSelector(".btn.valentino-icon-table")));
    	 	  driver.navigate().back();
    	}
    }

    public void iClickCreateButton() {
    	iWillWaitToSee(By.cssSelector(".btn.btn-primary"));
        clickElement(driver.findElement(By.cssSelector(".btn.btn-primary")));
        delay();
    }

    public void iVerifyOrganizationalRoleRequiredMessageText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[1]/div[2]/span/span")), text);
    }

    public void iVerifyFirstNameRequiredText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[3]/div/span/span")), text);
    }

    public void iVerifyLastNameRequiredText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[4]/div/span/span")), text);
    }

    public void iVerifyEmailRequiredText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[2]/div/span/span")), text);
    }

    public void iVerifyPhoneValidationMessageText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[5]/div/span/span")), text);
    }

    public void iVerifyNPIValidationMessageText(String text) {
        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset[1]/div/div[6]/div/span/span")), text);
    }

    public void iClickTryAgainButton() {
        clickElement(driver.findElement(By.cssSelector(".btn.btn-secondary")));
    }

    public void iverifyCreateUserPageHeader(String header) {
    	iWillWaitToSee(By.xpath("//h2/span"));
        verifyTextForElement(driver.findElement(By.xpath("//h2/span")), header);
    }

    public void iVerifyTheDropdownListForUser() {
        isElementVisible(driver.findElement(By.cssSelector(".align-right>ul")));
    }

    public void iEnterProviderSerachText(String text) {
    	iWillWaitToSee(By.xpath("//div[@class='table-select-search']//input"));
        clickElement(driver.findElement(By.xpath("//div[@class='table-select-search']//input")));
        iFillInText(driver.findElement(By.xpath("//div[@class='table-select-search']//input")), text);
    }

   public void iClickOnEpisodesTileUnderSpecificUserLoginPage(String text) throws InterruptedException{
	   if(driver.findElements(By.xpath("//div[@class='title']/p[text()='"+text+"']")).contains(text)){
		   Thread.sleep(3000);
		   clickElement(driver.findElement(By.xpath("//p[text()='Episodes']")));
		   switchToNewWindow();
		   Thread.sleep(6000);
		   isElementVisible(driver.findElement(By.cssSelector(".page-title.row")));
		   switchBacktoOldWindow();
   	}else{
   		return;
   	}
   }
   
   public void iCheckAllProviderForTheHealthSystem() {
	   iWillWaitToSee(By.cssSelector(".select-all-master>.checkbox"));
   	delay();
       clickElement(driver.findElement(By.cssSelector(".select-all-master>.checkbox")));
   }	

    public void iCheckTheProviderForTheHealthSystem(String facility,String provider) {
    	delay();
    	if(provider.contains("*")){
    	iWillWaitToSee(By.cssSelector(".select-all-master>.checkbox"));
        clickElement(driver.findElement(By.cssSelector(".select-all-master>.checkbox")));
    	}
    	else {
    		delay();
    	iWillWaitToSee(By.xpath("//label//span[contains(text(),'"+facility+"')]"));
    	clickElement(driver.findElement(By.xpath("//label//span[contains(text(),'"+facility+"')]")));	
    	}
    }

    public void iclickAllAppsfortheRole() {
    	iWillWaitToSee(By.xpath("//div[@class='row']/div/ul/li/div/label"));
        clickAllElementofAlistbyXpath("//div[@class='row']/div/ul/li/div/label");
    }
    
    public void iSelectTileForTheRole(String appList){
    	if(appList.contains(","))
    	{
    		StringTokenizer st = new StringTokenizer(appList,",");
            while (st.hasMoreTokens()) {  
            	clickElement(driver.findElement(By.xpath("//label[.='"+st.nextToken().trim()+"']")));
            }
    	}
    	else
    	{
    		iWillWaitToSee(By.xpath("//label[.='"+appList+"']"));
    		clickElement(driver.findElement(By.xpath("//label[.='"+appList+"']")));
    	}
    	userApplications = appList;
    }

    public void iClickOnContinueToDashboardMessage() {
        clickElement(driver.findElement(By.xpath("//button[text()='Continue to my dashboard']")));
    }

   public void iVerifyTheHeaderAfterClickingTheEpisodesTile(){
	   isElementVisible(driver.findElement(By.cssSelector(".page-title.row")));
   }
   
   public void iClickOnEpisodesTwoTileUnderSpecificUserLoginPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes 2.0")){
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='Episodes 2.0']")));
			   clickElement(driver.findElement(By.xpath("//p[text()='Episodes 2.0']")));
		   }  
	   }
	   
   }
   
   public void iVerifyNavigationOnEpisodes2HomePage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes 2.0")){
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//h1[text()='Patients']")));
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//button[@href='#/patient/add']")));
		   }
	   }   
   }
   
   public void iVerifyPatientCardOnEpisodes2HomePage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes 2.0")){
			   iWillWaitToSee(By.cssSelector(".card-view-body"));
			   Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".card-view-body")));
			   driver.navigate().back();
		   }
	   }   
   }
  
   public void iVerifyTheHeaderAfterClickingTheEpisodes2Tile(){
	   clickElement(driver.findElement(By.xpath("//h1[text()='Patients']")));
   }
   
   public void iTurnOffTheLessonsTileApplication(){
	   clickElement(driver.findElement(By.xpath("//div/label[@for='lessons']")));
   }
   
   public void iClickOnUserNameIconOnEC1AndOpenUserProfile(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
	   iWillWaitToSee(By.cssSelector(".username"));
	   WebElement HoverElement = driver.findElement(By.cssSelector(".username"));
	   String javaScript = "var evObj = document.createEvent('MouseEvents');" +
               "evObj.initMouseEvent(\"mouseover\",true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);" +
               "arguments[0].dispatchEvent(evObj);";

	   ((JavascriptExecutor)driver).executeScript(javaScript, HoverElement);
	   clickElement(driver.findElement(By.cssSelector("#navbar-dropdown-menu-myprofile")));
		   }
	   }   
   }
   
   public void iClickOnEpisode1TileUnderSpecificUserLoginPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   iWillWaitToSee(By.xpath("//p[text()='Episodes']"));
			   clickElement(driver.findElement(By.xpath("//a[@class='spoe-button episodes']")));
			   switchToNewWindow();
			   iWillWaitToSee(By.cssSelector(".username"));
		   }   
	   }
   }
   
   public void verifyDashboardOnEC1(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   isElementPresentOnPage(By.xpath("//h3/span[contains(text(),'Dashboard')]"));
		   }   
	   }
   }
   
   public void iClickOnPatientListOnSideMenuBarInEC1(String role) {
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   iWillWaitToSee(By.cssSelector("#patientsListOpenClose"));
			   clickElement(driver.findElement(By.cssSelector("#patientsListOpenClose")));
			   clickElement(driver.findElement(By.xpath("//a[@href='/secure/pn/patientslist']")));
			   waitTo().until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector("#tblPatients_processing"))));
			   //waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector("#tblPatients_processing"))));
		   }   
	   }
   }
   
   public void iVerifyFacilityAppearingOnUserProfile(String facility, String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   String value = driver.findElement(By.xpath("//div[label[text()='Facilities']]//li")).getText();
			   Assert.assertEquals(facility, value.trim());
		   }   
	   }
   }
   
   public void iVerifyPayerAppearingOnUserProfile(String payer, String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   iVerifyTextFromListOfElement(By.xpath("//div[label[text()='Payers']]//li"), payer);
		   }   
	   }
   }
   
   public void verifyEmblemNotAppearingOnUserProfile(String payer, String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   isElementNotPresentOnPage(By.xpath("//div[label[text()='Payers']]//li[text()='"+payer+"']"));
		   }   
	   }
   }
   
   public void iClickOnAddNoteAndVerifyRole(String userrole, String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   iWillWaitToSee(By.xpath("//div[@class='row body']//a[@class='btn btn-default dropdown-toggle']"));
			   driver.findElements(By.xpath("//div[@class='row body']//a[@class='btn btn-default dropdown-toggle']")).get(0).click();
			   driver.findElements(By.xpath("//a[contains(text(),'Add Note')]")).get(0).click();
			   delay();
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//textarea[contains(text(),'"+userrole+"')]")));
		   }   
	   }   
   }
   
   public void iVerifyPatientCardOnActivePatientPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@ng-repeat='element in patientsList']")));
		   } 
	   }   
   }

   public void iClickOnInstituteTileUnderSpecificUserLoginPage(String role){
		iWillWaitToSee(By.xpath("//p[text()='Institute']"));   
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='Institute']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='Institute']")));
		   switchToNewWindow();
		   delay();
   }
   
   public void iVerifyNavigationOnInstituteHomePage(String role){
	   Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".navbar-header")));
	   switchBacktoOldWindow(); 
   }
   
   public void iClickOnReportsTileUnderSpecificUserLoginPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Reports")){
		   iWillWaitToSee(By.xpath("//p[text()='Reports']"));
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='Reports']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='Reports']")));
	   }
    }
   
   public void iVerifyNavigationOnReportsHomePage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Reports")){
		   iWillWaitToSee(By.cssSelector(".dropdown-tile-label.ng-binding")); 
	   }
   }
   
   public void iClickOnRemedyUTileUnderSpecificUserLoginPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Lessons")){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='RemedyU']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='RemedyU']")));
		   delay();
		   switchToNewWindow();
   	}
   }
   
   public void iVerifyNavigationOnRemedyUHomePage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Lessons")){
		   String user = role.substring(role.indexOf("-")+1);
		   if(user.equalsIgnoreCase("Remedy Technical Administrator")||user.equalsIgnoreCase("Partner Program Administrator")||user.equalsIgnoreCase("Remedy Program Administrator")
				   ||user.equalsIgnoreCase("Partner Technical Administrator")){
			   Assert.assertTrue(driver.findElement(By.cssSelector(".col-sm-6.col-md-3")).isDisplayed());
		   }
		   else{
			   iWillWaitToSee(By.cssSelector(".close"));
			   Assert.assertTrue(driver.findElement(By.cssSelector(".close")).isDisplayed());
			   driver.findElement(By.cssSelector(".btn.btn-primary")).click();
			   Assert.assertTrue(driver.findElement(By.cssSelector(".nav.litmos-sub-nav")).isDisplayed());
			   
		   }
	   }
   }
   
   
   public void iVerifyDetailsForUserOnRemedyUDashBoard(String details, String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Lessons")){
		   String user = role.substring(role.indexOf("-")+1);
		   if(!user.equalsIgnoreCase("Remedy Technical Administrator")||!user.equalsIgnoreCase("Partner Program Administrator")||!user.equalsIgnoreCase("Remedy Program Administrator")
				   ||!user.equalsIgnoreCase("Partner Technical Administrator")){
			   String actual = driver.findElement(By.cssSelector(".litmos-small-header.mt-0")).getText();
			   actual = actual.substring(actual.indexOf(",")+1).trim();
			   Assert.assertEquals(details, actual);
		   }
	   }
   }
   
   public void iVerifyPathWayForUserOnRemedyUDashBoard(String pathway, String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Lessons")){
		   String user = role.substring(role.indexOf("-")+1);
		   if(!user.equalsIgnoreCase("Remedy Technical Administrator")||!user.equalsIgnoreCase("Partner Program Administrator")||!user.equalsIgnoreCase("Remedy Program Administrator")
				   ||!user.equalsIgnoreCase("Partner Technical Administrator")){
			   String actual = driver.findElement(By.cssSelector(".mb-0.litmos-small-header.hidden-xs")).getText();
			   Assert.assertEquals(pathway, actual);
		   }
		   switchBacktoOldWindow(); 
	   }
   }
   
   public void iClickOnPhysicanConnectTileUnderSpecificUserLoginPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Physician Connect")){
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='Gainsharing Physician Survey']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='Gainsharing Physician Survey']")));
		   delay();
		   driver.navigate().back(); 
	   }
   }
    
   public void iClickOnInternalSupportOptionFromDropdownUnderSpecificUserLoginPage(String text){
	   clickElement(driver.findElement(By.cssSelector(".valentino-icon-profile")));
	   if(text.isEmpty()!=true){
		     
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[contains(text(),'"+text+"')]")));
		   clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+text+"')]")));
		   switchToNewWindow();
		   delay();
		   iWillWaitToSee(By.cssSelector("#cv-content"));
		   isElementVisible(driver.findElement(By.cssSelector("#cv-content")));
		   switchBacktoOldWindow(); 
   	}
   }
   
   public void iSelectSupportOptionFromTheDropdownUnderSpecificUserLoginPage(String text){
	   if(text.isEmpty()!=true){
		   iWillWaitToSee(By.xpath("//a[contains(text(),'"+text+"')]"));
		   Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[contains(text(),'"+text+"')]")));
		   clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+text+"')]")));
		   switchToNewWindow();
		   delay();
		   iWillWaitToSee(By.cssSelector("#cv-content"));
		   isElementVisible(driver.findElement(By.cssSelector("#cv-content")));
		   switchBacktoOldWindow(); 
   	}  
   }
   
   public void iNavigateBackToSpecificUserLoginPage(){
	   driver.navigate().back();
   }
   
   public void iVerifyTheInternalSupportProductTileForSelectedUserRole(String text) {
	 	if(text.isEmpty()!=true){
   		verifyTextForElementfromList(".checkbox.checkbox-single.ng-not-empty.ng-valid>label>span", text);
    	}
   }
  
   
   public void iVerifyTheUserroleUnderEc1DashboardPageAfterSpecificUserLogin(){
	   isElementPresentOnPage(By.cssSelector(".username"));
	   clickElement(driver.findElement(By.cssSelector("#patientsListOpenClose")));
	   clickElement(driver.findElement(By.xpath("//a[@href='/secure/pn/patientslist']")));
	   delay();
	   clickElement(driver.findElement(By.xpath("//div[1]/div[2]/div[4]/a[1]")));
	   clickElement(driver.findElement(By.xpath("//div[1]/div[2]/div[4]/ul/li[5]/a")));
	   delay();
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//textarea[contains(text(),'ROLE_ADMIN')]")));
   }
   
   public void iVerifyTheInstituteDashboardPageAfterClickingOnInstituteTileUnderSpecificUserLoginPage(){
	   Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".navbar-header")));
   }
   public void verifyFieldNames(String fieldName)
   {
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//label[text()='"+fieldName+"']")));
   }
   
   public void verifyMandatoryFieldNames(String fieldName)
   {
	   iVerifyTextFromListOfElement(By.xpath("//label[@class='required']"), fieldName);
   }
   
   public void verifyRoleNames(String fieldName)
   {
	   WebElement element = driver.findElement(By.xpath("//span[text()='"+fieldName+"']"));
   	   ((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
	   iVerifyTextFromListOfElement(By.xpath("//div[@class='menu transition visible']/div"), fieldName);
   }
   
   public void clickOnFieldButton(String fieldName)
   {
	   if(fieldName.equalsIgnoreCase("Role"))
	   {
		   clickElement(driver.findElement(By.xpath("//div[text()='Select Role']")));
	   }
	   else
	   {
		   clickElement(driver.findElement(By.xpath("//input[@placeholder='"+fieldName+"']")));
	   }
   }
   
   public void switchFocus()
   {
	   driver.findElement(By.xpath("//button[text()='Cancel']")).sendKeys(Keys.TAB);
   }
   
   public void ValidateMessage(String validationMessage)
   {
	     iVerifyTextFromListOfElement(By.xpath("//label[contains(@class,'error')]"), validationMessage);
   }
   
   public void clickNextButton() throws Throwable {
	   	iWillWaitToSee(By.xpath("//button[.='Next >']"));
	   	clickElement(driver.findElement(By.xpath("//button[.='Next >']")));  
   }
   
   public void clickBackButton() throws Throwable {
	   clickElement(driver.findElement(By.xpath("//button[text()='< Back']")));  
}
   
   public void clickTab(String text) throws Throwable {
	   	clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+text+"')]")));
	   }
   
   public void verifyHeader(String text) throws Throwable {
	   	isElementPresentOnPage(By.xpath("//h3[text()='"+text+"']"));
	   }

   public void clickSelectAllLocationsButton() throws Throwable {
	   iWillWaitToSee(By.xpath("//label[.='All Locations']"));
	   clickElement(driver.findElement(By.xpath("//label[.='All Locations']")));   
   }

   public void clickSubmitButton() throws Throwable {
	   clickElement(driver.findElement(By.xpath("//button[.='Submit']")));
   }
   
	public void clickSubmitButtonForDifferentUsers(String user) throws Throwable {
		iWillWaitToSee(By.xpath("//button[.='Submit']"));
		clickElement(driver.findElement(By.xpath("//button[.='Submit']")));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector(".ui.modal.transition.visible.active.component-add-user-form")));
		HashMap<String,String> emailList = new HashMap<String,String>();
		HashMap<String,String> applicationsList = new HashMap<String,String>();
		emailList.put(userRole.trim(), MailCreateUser.email.trim());
		applicationsList.put(userRole.trim(), userApplications);
		if(user.contains("Super Admin"))
		{
			usersEmailPerRole.put(user.trim()+"-"+userRole.trim(), emailList);
			usersApplicationsPerRole.put(user.trim()+"-"+userRole.trim(), applicationsList);
		}
		else if(user.contains("Remedy Technical Administrator"))
		{
			usersEmailPerRole.put(user.trim()+"-"+userRole.trim(), emailList);
			usersApplicationsPerRole.put(user.trim()+"-"+userRole.trim(), applicationsList);
		}
		else if(user.contains("Partner Technical Administrator"))
		{
			usersEmailPerRole.put(user.trim()+"-"+userRole.trim(), emailList);
			usersApplicationsPerRole.put(user.trim()+"-"+userRole.trim(), applicationsList);
		}
		System.out.println(usersEmailPerRole);
		System.out.println(usersApplicationsPerRole);
	}
   
   public void verifyAppUnchecked(String fieldName) throws Throwable {
	   StringTokenizer st = new StringTokenizer(fieldName,",");
       while (st.hasMoreTokens()) {  
    	   Assert.assertTrue(isElementPresent(By.xpath("//label[text()='"+st.nextToken().trim()+"']/parent::div[@class='ui checkbox']")));

       } 
   }
   public void verifyAppChecked(String fieldName) throws Throwable {
	   StringTokenizer st = new StringTokenizer(fieldName,",");
       while (st.hasMoreTokens()) {  
    	   Assert.assertTrue(isElementPresent(By.xpath("//label[text()='"+st.nextToken().trim()+"']/parent::div[@class='ui checked checkbox']")));
       }
   }
   
   public void verifyApplicationList(String appList) throws Throwable {
       StringTokenizer st = new StringTokenizer(appList,",");
       while (st.hasMoreTokens()) {  
           
        Assert.assertTrue(isElementPresentOnPage(By.xpath("//label[.='"+st.nextToken().trim()+"']")));
       } 
   } 
   
   public void verifyLearningPathwayNotAvailable() throws Throwable {
	   Assert.assertFalse(isElementPresentOnPage(By.xpath(".column.padding>.component-learning-pathway-dropdown")));
   }
   
   public void verifyLearningPathwayAvailable() throws Throwable {
	   Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".column.padding>.component-learning-pathway-dropdown")));
   }
   
   public void clickLessonsSelectButton() throws Throwable {
       iWillWaitToSee(By.xpath("//div[text()='Select']"));
	   clickElement(driver.findElement(By.xpath("//div[text()='Select']")));
   }
   
   public void clickCancelButton() throws Throwable {
       clickElement(driver.findElement(By.xpath("//button[text()='Cancel']")));
   }

   public void enterTextLearningPathwaySearchBox(String searchParam) throws Throwable {
       iFillInText(driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")), searchParam);
   }

   public void selectLearningPath(String searchParam) throws Throwable {
       clickElement(driver.findElement(By.xpath("//label[contains(text(),'"+searchParam+"')]")));
   }
   
   public void clearLearningPathwaySearchBox() throws Throwable {
	   driver.findElement(By.xpath("//input[@placeholder='Search']")).clear();
   }
   
   public void verifyLoginButton() throws Throwable {
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//*[contains(text(),'Log In')]")));
   }
   
   public void selectPrograms(String programList) throws Throwable {
	   if(programList.contains(","))
	   {
		   StringTokenizer st = new StringTokenizer(programList,",");
	       while (st.hasMoreTokens()) {  
	    	   iWillWaitToSee(By.xpath("//label[text()='"+st.nextToken().trim()+"']"));
	           clickElement(driver.findElement(By.xpath("//label[text()='"+st.nextToken().trim()+"']")));
	       }   
	   }
	   else
	   {
		   clickElement(driver.findElement(By.xpath("//label[text()='"+programList+"']")));
	   }
   }
   
   public void selectLocations(String locationList) throws Throwable {
	   
	   if(locationList.equalsIgnoreCase("all locations")){
		   clickElement(driver.findElement(By.xpath("//label[contains(text(),'"+locationList.trim()+"')]")));
	   }
	   
	   else if (locationList.contains(","))
	   {
		   StringTokenizer st = new StringTokenizer(locationList,",");
	       while (st.hasMoreTokens()) {
	    	   String location = st.nextToken().trim();
	    	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']/..//input[@placeholder='Search']")), location);
	    	   iWillWaitToSee(By.cssSelector(".ui.checkbox>label"));
	    	   iWillWaitToSee(By.xpath("//label[contains(text(),'"+location+"')]"));
	    	   clickElement(driver.findElements(By.xpath("//label[contains(text(),'"+location+"')]")).get(0));
	    	   driver.findElement(By.cssSelector(".remove.link.icon.remove-icon")).click();
	       }   
	   }
	   else
	   {
	    	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']/..//input[@placeholder='Search']")), locationList.trim());
	    	   iWillWaitToSee((By.xpath("//label[contains(text(),'"+locationList.trim()+"')]")));
	    	   clickElement(driver.findElements(By.xpath("//label[contains(text(),'"+locationList.trim()+"')]")).get(0));
	   	    }	
	   }
   
   public void verifyDefaultProgramOrganization(String programName) throws Throwable {
       clickElement(driver.findElement(By.xpath("//span[text()='"+programName+"']")));
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//label[text()='"+programName+"']/parent::div[@class='ui checked checkbox']")));
   }
   
   public void verifyUnavailabilityOrganizationDropDown() throws Throwable {
       isElementNotPresentOnPage("");
   }
   
   public void searchLocation(String location) throws Throwable {
       iFillInText(driver.findElement(By.xpath("//input[@placeholder='Search']")), location);
   }
   public void selectLocation(String location) throws Throwable {
	   clickElement(driver.findElement(By.xpath("//label[text()='"+location+"']")));
   }
   
   public void clickGeneralInformationTab() throws Throwable {
       clickElement(driver.findElement(By.xpath("//a[text()='1. General Information']")));
   }
   public void verifyAvailabilityOrganizationDropDown() throws Throwable {
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("")));
   }
   
   public void clickLogOutButton(String arg1) throws Throwable {
	   iWillWaitToSee(By.xpath("//span[text()='Log Out']"));
       clickElement(driver.findElement(By.xpath("//span[text()='Log Out']")));
   }
   
   public void verifyProductTiles(String products) throws Throwable {
	   StringTokenizer st = new StringTokenizer(products,",");
	   String token = null;
       while (st.hasMoreTokens()) {
    	   String newToken = st.nextToken();
    	   if(newToken.contains("Lessons"))
    	   {
    		   token = "RemedyU";
    	   }
    	   else if(newToken.contains("TCI"))
    	   {
    		   token = "Institute";
    	   }
    	   else if(newToken.contains("Physician Connect"))
    	   {
    		   token = "Gainsharing Physician Survey";
    	   }
    	   else if(newToken.contains("Administration"))
    	   {
    		   token = "User Admin";
    	   }
    	   else
    	   {
    		   token = newToken;   
    	   }
    	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='"+token.trim()+"']")));
       } 
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='Institute']")));
   }
   
   public void verifyProductTilesNotPresent(String products) throws Throwable {
	   StringTokenizer st = new StringTokenizer(products,",");
	   String token = null;
       while (st.hasMoreTokens()) 
       {
    	   String newToken = st.nextToken();
    	   if(newToken.contains("Lessons"))
    	   {
    		   token = "RemedyU";
    	   }
    	   else if(newToken.contains("TCI"))
    	   {
    		   token = "Institute";
    	   }
    	   else if(newToken.contains("Physician Connect"))
    	   {
    		   token = "Gainsharing Physician Survey";
    	   }
    	   else if(newToken.contains("Administration"))
    	   {
    		   token = "User Admin";
    	   }
    	   else
    	   {
    		   token = newToken;   
    	   }
    		Assert.assertFalse(isElementNotPresentOnPage(By.xpath("//p[text()='"+token.trim()+"']")));
       } 
   }
   
   public void clickAddAnotherOrganization() throws Throwable {
		clickElement(driver.findElement(By.xpath("//button[text()='Add Another Organization']")));
   }
   
   public void enterCharacterInLocationSearch(String text) throws Throwable {
	   if(!text.equalsIgnoreCase("All locations")){
		   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']/..//input[@placeholder='Search']")), text);
		   delay();
	   }
   }
   
   public void verifyTextPresentInLocationSearchLabel(String text) throws Throwable {
	   String Actual = driver.findElements(By.xpath("//section[@class='component-remedy-facility-select']//div[@class='ui checkbox']")).get(1).getText();
	   Assert.assertTrue(Actual.contains(text));
	   
   }
   
   public void shouldNotSeeFieldWithLabel(String text) throws Throwable {
	   boolean val = isElementPresentOnPage(By.xpath("//label[text()='All Location']"));
	   Assert.assertFalse(val);
   }
   
   public void iVerifyValueInProductDropDownMenu(String products) {
		iWillWaitToSee(By.xpath("//menu-dropdown[@class='flex-item order-0']//a[@class='btn btn-flyout-nav']"));
		StringTokenizer st = new StringTokenizer(products,",");
		String token = null;
		while (st.hasMoreTokens()) 
	       {
			String newToken = st.nextToken();
			if(newToken.contains("Lessons"))
	    	   {
	    		   token = "RemedyU";
	    	   }
	    	   else if(newToken.contains("TCI"))
	    	   {
	    		   token = "Institute";
	    	   }
	    	   else if(newToken.contains("Physician Connect"))
	    	   {
	    		   token = "Gainsharing Physician Survey";
	    	   }
	    	   else if(newToken.contains("Administration"))
	    	   {
	    		   token = "User Admin";
	    	   }
	    	   else
	    	   {
	    		   token = newToken;   
	    	   }
			iVerifyTextFromListOfElement(By.xpath("//menu-dropdown[@class='flex-item order-0']//a[contains(@class,'btn btn-flyout-nav')]"), token.trim());
	       } 
	}
   
   public void iVerifyValueIsNotPresentInProductDropDownMenu(String products) {
	   StringTokenizer st = new StringTokenizer(products,",");
	   String token = null;
	   List<WebElement> listItems = driver.findElements(By.xpath("//menu-dropdown[@class='flex-item order-0']//a[contains(@class,'btn btn-flyout-nav')]"));
	   while (st.hasMoreTokens())
	   {
		   String newToken = st.nextToken();
		   if(newToken.contains("Lessons"))
    	   {
    		   token = "RemedyU";
    	   }
    	   else if(newToken.contains("TCI"))
    	   {
    		   token = "Institute";
    	   }
    	   else if(newToken.contains("Physician Connect"))
    	   {
    		   token = "Gainsharing Physician Survey";
    	   }
    	   else if(newToken.contains("Administration"))
    	   {
    		   token = "User Admin";
    	   }
    	   else
    	   {
    		   token = newToken;   
    	   }
		   for (WebElement item : listItems) {
	            Assert.assertFalse(item.getText().trim().equalsIgnoreCase(token.trim()));
	        } 
	   }
	}
   
   //Code
   public void iRedirectToRemedyConnectPage() {
		driver.get("https://cdn-qa.remedypartners.com/");
		delay();
	}
   
   public void iVerifyDropDownValueFromProfileIcon(String text) {
		iWillWaitToSee(By.xpath("//menu-dropdown-content[contains(@class,'right')]//a[@class='btn btn-flyout-nav']"));
		if (text.isEmpty() != true) {
			iVerifyTextFromListOfElement(By.xpath("//menu-dropdown-content[contains(@class,'right')]//a[@class='btn btn-flyout-nav']"),text);
		}
	}
   
   public void iClickOnFiledInDropdownOnProfileIcon(String text) {
		
		if(driver.findElement(By.xpath("//menu-dropdown-content[contains(@class,'right')]//a[@class='btn btn-flyout-nav']")).isDisplayed())
		{
			if (text.isEmpty() != true) {
				iWillWaitToSee(By.xpath("//menu-dropdown-content[contains(@class,'right')]//a[@class='btn btn-flyout-nav']"));
				clickSingleElementFromList(By.xpath("//menu-dropdown-content[contains(@class,'right')]//a[@class='btn btn-flyout-nav']"),text);
			}
		}
		else {
			iWillWaitToSee(By.cssSelector(".valentino-icon-profile"));
			clickElement(driver.findElement(By.cssSelector(".valentino-icon-profile")));
			delay();
			if (text.isEmpty() != true) {
				clickSingleElementFromList(By.xpath("//menu-dropdown-content[contains(@class,'right')]//a[@class='btn btn-flyout-nav']"),text);
				}
		}
	}
   
   public void iVerifyPageHeaderForPageOnRemedyConnect(String title) {
		wait.until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector(".aui-item.cv-title>div>h1"))));
		getTextForElement(driver.findElement(By.cssSelector(".aui-item.cv-title>div>h1")));
	}
   
   public void iVerifyNoResultsFoundUnderLearningPathWaySearch() {
		wait.until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector(".message.empty>div"))));
		String actual = getTextForElement(driver.findElement(By.cssSelector(".message.empty>div")));
		Assert.assertEquals("No results found.",actual.trim());
	}
   
	 public void iclickontheReportsTilewithtextforuser(String text, String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
				   iWillWaitToSee(By.xpath("//label[@class='dropdown-tile-label ng-binding'][text()='"+text+"']"));
				   selectElementByDesc(".dropdown-tile-label.ng-binding", text);
				   delay();
			   }
		   }
	 }

	 public void iclickonreporttextforOverallProgramReportsforuser(String text, String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
		 
				   	selectElementByTextDescByXpath("//div[label[text()='Overall Program']]/following-sibling::div/a", text);
			        longDelay();
			        iWillWaitToSee(By.xpath("//iframe[@class='embedded-iframe ng-scope']"));
			        swithToFrame("//iframe[@class='embedded-iframe ng-scope']");
			        delay();
			        iWillWaitToSee(By.xpath("//*[@id='RPT001ReportName'][text()='Performance']"));
			    	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("#progressTooltipDiv")));
			    	wait.until(ExpectedConditions.invisibilityOfElementLocated(By.cssSelector("#progressTooltipDiv")));
			   }
		   }
	 }

	 public void iclickonfieldpaneliconbuttonforuser(String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
				   iWillWaitToSee(By.xpath(".//div[@class='field-panel-icon']"));
				   clickElement(driver.findElement(By.xpath(".//div[@class='field-panel-icon']")));
			   }
		   }
	 }
	 
	 public void iclicktofieldfilterunderfilterfieldforuser(String filterField, String filterTitle, String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
				   iWillWaitToSee(By.xpath(".//*[@id='fieldListTreeContent']//div[@formula='["+filterTitle+"].["+filterField+"]']"));
				   clickElement(driver.findElement(By.xpath(".//*[@id='fieldListTreeContent']//div[@formula='["+filterTitle+"].["+filterField+"]']")));
				   iWillWaitToSee(By.xpath(".//*[@id='fieldListTreeContent']//div[@formula='["+filterTitle+"].["+filterField+"]']/div"));
				   clickElement(driver.findElement(By.xpath(".//*[@id='fieldListTreeContent']//div[@formula='["+filterTitle+"].["+filterField+"]']/div")));
			   }
		   }
	 }

	 public void ichooseoptionfromselectoptionsoffilterfieldforuser(String toLocator, String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
				   clickElement(driver.findElement(By.xpath(toLocator)));
			   }
		   }
	 }

	 public void ishouldseeinthefiltervaluelistforuser(String text, String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
				   verifyTextForElement(driver.findElement(By.xpath("//*[@id='dialogTitleBar']/table/tbody/tr/td[1]")), "Filter on BPID");
				   iWillWaitToSee(By.xpath("//div[@id[starts-with(.,'FT_AVA_')]]"));
				   verifyTextForElementfromList("#FT_valueList div", text);
			   }
		   }
	 }

	 public void iclickoncancelbuttonfromfilterforuser(String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
				   iWillWaitToSee(By.id("dlgBtnCancel"));
				   clickElement(driver.findElement(By.id("dlgBtnCancel")));
			   }
		   }
	 }
	 
	 public void clickCrossButton() throws Throwable {
		 driver.findElement(By.xpath("//i[@class='close icon']")).click();
	 }
	 
	 public void removeAlreadySelectedRole() throws Throwable {
		 driver.findElement(By.xpath("//i[@class='close icon']")).click();
	 }
}
