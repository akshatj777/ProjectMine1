package com.remedy.userAdmin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;
import java.util.concurrent.TimeUnit;

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

/**
 * Created by salam on 7/30/15.
 */

public class CreateUserPage extends BaseClass{

	public final static DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	public final static Date timestamp = new Date();
	public final static String time = df.format(timestamp);
	String userRole = null;
	String userApplications = null;
	String userNPI = "";
	public static HashMap<String,HashMap<String,String>> usersEmailPerRole=new HashMap<String,HashMap<String,String>>();
	public static HashMap<String,HashMap<String,String>> usersApplicationsPerRole=new HashMap<String,HashMap<String,String>>();
	public static HashMap<String,HashMap<String,String>> usersNPIPerRole=new HashMap<String,HashMap<String,String>>();
	WebDriverWait wait = new WebDriverWait(driver, 60); 
	LandingPage objLandingPage = new LandingPage(driver);
	
    public CreateUserPage(WebDriver driver){
        super(driver);
    }

    public void iClickOrganizationalField() {
        iWillWaitToSee(By.xpath("//div[text()='Select Role']"));
    	clickElement(driver.findElement(By.xpath("//div[text()='Select Role']")));
    }
    
    public void iClickAlreadySelectedOrganizationalField() {
        iWillWaitToSee(By.xpath("//div[@class='ui fluid selection dropdown']/div[@class='text']"));
    	clickElement(driver.findElement(By.xpath("//div[@class='ui fluid selection dropdown']/div[@class='text']")));
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

    public void selectOrganizationalRole(String desc) throws InterruptedException{
    	if(!(desc.equals("")))
    	{
    		WebElement element = driver.findElement(By.xpath("//span[text()='"+desc+"']"));
        	scrollIntoViewByJS(element);
        	element.click();
        	userRole = desc;
        	driver.findElement(By.tagName("html")).sendKeys(Keys.chord(Keys.CONTROL,"+"));
    	}
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
				userNPI = RandomStringUtils.randomNumeric(10);
				iFillInText(driver.findElement(By.xpath("//input[@placeholder='NPI']")),userNPI);
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
    	if(!(text.equals("")))
    	{
    		iWillWaitToSee(By.xpath("//input[@placeholder='Phone']"));
            iFillInText(driver.findElement(By.xpath("//input[@placeholder='Phone']")), text);
    	}
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

    public void iEnterHealthSystemSerachText(String text) throws InterruptedException {
    	if(!(text.equals("")))
    	{
    		iWillWaitToSee(By.xpath("//div[text()='Select']"));
    		clickElement(driver.findElement(By.xpath("//div[text()='Select']")));
    		iWillWaitToSee(By.xpath("//div[text()='Select']/parent::div/following-sibling::div/div/div/input"));
            driver.findElement(By.xpath("//div[text()='Select']/parent::div/following-sibling::div/div/div/input")).sendKeys(text);
            Thread.sleep(2000);
    	}
    }

    public void iSelectHealthSystem(String desc) {
    	if(!(desc.equals("")))
    	{
    	iWillWaitToSee(By.xpath("//div[text()='"+desc+"']"));
        clickElement(driver.findElement(By.xpath("//div[text()='"+desc+"']")));
    	}
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
   
   public void iVerifyNavigationOnPhysicianHomePage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Physician Connect")){
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//h1[text()='My Surveys']")));
		   }
	   }   
   }
   
   public void iVerifyNavigationOnUserAdminHomePage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("User Admin")){
			   iWillWaitToSee(By.xpath("//h1[text()='Users']"));
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//h1[text()='Users']")));
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
		   }   
	   }
   }
   
   public void iClickOnPhysicianTileUnderSpecificUserLoginPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
			   if(st.nextToken().trim().equals("Physician Connect")){
				   iWillWaitToSee(By.xpath("//p[text()='Gainsharing Physician Survey']"));
				   clickElement(driver.findElement(By.xpath("//p[text()='Gainsharing Physician Survey']")));
		   }   
	   }
   }
   
   public void iClickOnUserAdminTileUnderSpecificUserLoginPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
			   if(st.nextToken().trim().equals("User Admin")){
				   iWillWaitToSee(By.xpath("//p[text()='User Admin']"));
				   clickElement(driver.findElement(By.xpath("//p[text()='User Admin']")));
		   }   
	   }
   }
   
   public void verifyDashboardOnEC1(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   iWillWaitToSee(By.cssSelector(".username"));
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
			   longDelay();
			   //waitTo().until(ExpectedConditions.visibilityOf(driver.findElement(By.cssSelector("#tblPatients_processing"))));
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
			   if(facility.contains(","))
			   {
				   StringTokenizer st1 = new StringTokenizer(facility,",");
		            while (st1.hasMoreTokens()) {  
		            	String token = st1.nextToken().trim();
		            	System.out.println(token);
		            	iWillWaitToSee(By.xpath("//li[contains(text(),\""+token+"\")]"));
		            	Assert.assertTrue(isElementPresentOnPage(By.xpath("//li[contains(text(),\""+token+"\")]")));
		            }
			   }
			   else
			   {
				   iWillWaitToSee(By.xpath("//li[contains(text(),\""+facility+"\")]"));
				   Assert.assertTrue(isElementPresentOnPage(By.xpath("//li[contains(text(),\""+facility+"\")]")));
			   }
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
   
   public void iClickOnAddNoteAndVerifyRole(String userrole, String role) throws InterruptedException{
	   try
	   {
		   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Episodes")){
				   iWillWaitToSee(By.xpath("//div[@class='row body']//a[@class='btn btn-default dropdown-toggle']"));
				   longDelay();
				   driver.findElement(By.xpath("//div[@ng-repeat='element in patientsList'][1]//a[@class='btn btn-default dropdown-toggle']")).click();
				   delay();
				   driver.findElements(By.xpath("//a[contains(text(),'Add Note')]")).get(0).click();
				   delay();
				   Assert.assertTrue(isElementPresentOnPage(By.xpath("//textarea[contains(text(),'"+userrole+"')]")));
				   delay();
				 driver.findElement(By.xpath("//button[@class='close']")).click();
			   }   
		   }  
	   }
	   catch(Exception e)
	   {
		   System.out.println(e.toString());
	   }
   }
   
   public void iVerifyPatientCardOnActivePatientPage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.id("tblPatients_processing")));
			   driver.findElement(By.id("filterTab_custom")).click();
			   waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.id("tblPatients_processing")));
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@ng-repeat='element in patientsList']")));
		   } 
	   }   
   }
   
   public void iVerifyNPIOnEC1(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Episodes")){
			   if(role.substring((role.indexOf("-")+1)).equals("Physicians"))
			   {
//				   scrollIntoViewByJS(driver.findElement(By.xpath("//span[text()='Admin Center']")));
				   driver.findElement(By.xpath("//span[text()='Admin Center']")).click();
				   delay();
				   driver.findElement(By.xpath("//a[@href='/secure/admin/clinician/']")).click();
				   waitTo().until(ExpectedConditions.visibilityOf(driver.findElement(By.xpath("//h1[text()='Clinicians List']"))));
//				   scrollIntoViewByJS(driver.findElement(By.id("filters_bpprovider_email")));
				   String emailForEC1 = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
				   driver.findElement(By.id("filters_bpprovider_email")).sendKeys(emailForEC1.substring(emailForEC1.indexOf("+")+1));
//				   scrollIntoViewByJS(driver.findElement(By.xpath("//button[@class='btn btn-sm btn-primary']")));
				   driver.findElement(By.xpath("//button[@class='btn btn-sm btn-primary']")).click();
				   longDelay();
				   String NPI = CreateUserPage.usersNPIPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
				   Assert.assertEquals(NPI, driver.findElement(By.xpath("//td[@class='td_string td_npi']")).getText().trim());
			   }
		   } 
	   }   
   }

   public void iClickOnInstituteTileUnderSpecificUserLoginPage(String role){
		iWillWaitToSee(By.xpath("//p[text()='Institute']"));   
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='Institute']")));
		   clickElement(driver.findElement(By.xpath("//p[text()='Institute']")));
		   //switchToNewWindow();
		   delay();
   }
   
   public void iVerifyNavigationOnInstituteHomePage(String role){
	   driver.manage().timeouts().pageLoadTimeout(600, TimeUnit.SECONDS);
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[@href='http://02-wpress-qa-ue1a.remedypartners.com/index.php/contact-us/']")));
   }
   
   public void iVerifyRepOnReportsMainPage(String reportName, String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   StringTokenizer st = new StringTokenizer(application, ",");
	   while(st.hasMoreTokens())
	   {
		   if(st.nextToken().trim().equals("Reports"))
		   {
			   longDelay();
		       iWillWaitToSee(By.xpath("//iframe[@class='embedded-iframe ng-scope']"));
		       swithToFrame("//iframe[@class='embedded-iframe ng-scope']");
		       delay();
			   iWillWaitToSee(By.xpath("//div[text()=\""+reportName+"\"]"));
			   Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[text()=\""+reportName+"\"]")));
		   }
	   }
	   
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
		   objLandingPage.iSwitchToNewWindow();
   	}
   }
   
   public void iVerifyNavigationOnRemedyUHomePage(String role){
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
	   if(application.contains("Lessons")){
		   String user = role.substring(role.indexOf("-")+1);
		   if(user.equalsIgnoreCase("Remedy Technical Administrator")||user.equalsIgnoreCase("Partner Program Administrator")||user.equalsIgnoreCase("Remedy Program Administrator")
				   ||user.equalsIgnoreCase("Partner Technical Administrator")){
			   iWillWaitToSee(By.cssSelector(".col-sm-6.col-md-3"));
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
		   if(user.equalsIgnoreCase("Remedy Technical Administrator")||user.equalsIgnoreCase("Partner Program Administrator")||user.equalsIgnoreCase("Remedy Program Administrator")
				   ||user.equalsIgnoreCase("Partner Technical Administrator")){
			   clickElement(driver.findElement(By.cssSelector("li[id='user_dropdown']")));
			   iWillWaitToSee(By.xpath("//a[contains(text(),'My Profile & Settings')]"));
			   clickElement(driver.findElement(By.xpath("//a[contains(text(),'My Profile & Settings')]")));
			   String last = details.substring(details.indexOf(" ")+1);
			   iWillWaitToSee(By.xpath("//td[text()='"+last+"']"));
		   }
		   else{
//		   	String user = role.substring(role.indexOf("-")+1);
			String actual = driver.findElement(By.cssSelector(".litmos-small-header.mt-0")).getText();
			actual = actual.substring(actual.indexOf(",")+1).trim();
			Assert.assertEquals(details, actual);
		   }
	   }
   }
   
   public void iVerifyPathWayForUserOnRemedyUDashBoard(String pathway, String role){
	   if(!(pathway.equals("")))
	   {
		   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   if(application.contains("Lessons")){
			   if(pathway.contains(","))
			   {
				   String user = role.substring(role.indexOf("-")+1);
				   if(user.equalsIgnoreCase("Remedy Technical Administrator")||user.equalsIgnoreCase("Partner Program Administrator")||user.equalsIgnoreCase("Remedy Program Administrator")
						   ||user.equalsIgnoreCase("Partner Technical Administrator")){
					   clickElement(driver.findElement(By.xpath("//span[text()='Courses']")));
					   iWillWaitToSee(By.xpath("//h1[text()='Courses']"));
					   clickElement(driver.findElement(By.xpath("//a[text()='Learning Paths']")));
					   iWillWaitToSee(By.cssSelector(".active a[title='Learning Paths']"));
					   StringTokenizer st = new StringTokenizer(pathway, ",");
					   while(st.hasMoreTokens())
					   {
						   String a = st.nextToken().trim();
						   Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[contains(text(),\""+a+"\")]")));
					   }
				   }
				   else{
					   StringTokenizer st = new StringTokenizer(pathway, ",");
					   while(st.hasMoreTokens())
					   {
						   String a = st.nextToken().trim();
						   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[contains(text(),\""+a+"\")]")));
					   }
				   }
			   }
			   else
			   {
				   Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[contains(text(),\""+pathway+"\")]")));
			   }
			   objLandingPage.iSwitchBackToOldWindow(); 
		   }  
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
		HashMap<String,String> NPIList = new HashMap<String,String>();
		emailList.put(userRole.trim(), MailCreateUser.email.trim());
		applicationsList.put(userRole.trim(), userApplications);
		NPIList.put(userRole.trim(), userNPI);
		if(user.contains("Super Admin"))
		{
			usersEmailPerRole.put(user.trim()+"-"+userRole.trim(), emailList);
			usersApplicationsPerRole.put(user.trim()+"-"+userRole.trim(), applicationsList);
			usersNPIPerRole.put(user.trim()+"-"+userRole.trim(), NPIList);
		}
		else if(user.contains("Remedy Technical Administrator"))
		{
			usersEmailPerRole.put(user.trim()+"-"+userRole.trim(), emailList);
			usersApplicationsPerRole.put(user.trim()+"-"+userRole.trim(), applicationsList);
			usersNPIPerRole.put(user.trim()+"-"+userRole.trim(), NPIList);
		}
		else if(user.contains("Partner Technical Administrator"))
		{
			usersEmailPerRole.put(user.trim()+"-"+userRole.trim(), emailList);
			usersApplicationsPerRole.put(user.trim()+"-"+userRole.trim(), applicationsList);
			usersNPIPerRole.put(user.trim()+"-"+userRole.trim(), NPIList);
		}
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
       if(userApplications.contains("Lessons"))
       {
    	   iWillWaitToSee(By.xpath("//div[text()='Select']"));
    	   clickElement(driver.findElement(By.xpath("//div[text()='Select']")));  
       }
   }
   
   public void clickCancelButton() throws Throwable {
       clickElement(driver.findElement(By.xpath("//button[text()='Cancel']")));
   }

   public void enterTextLearningPathwaySearchBox(String searchParam) throws Throwable {
       if(!(searchParam.equals("")))
       {
    	   iFillInText(driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")), searchParam);  
       }
   }

   public void selectLearningPath(String searchParam) throws Throwable {
       if(userApplications.contains("Lessons"))
       {
    	   if(!(searchParam.equals("")))
           {
        	   if(searchParam.contains(","))
        	   {
        		   StringTokenizer st = new StringTokenizer(searchParam, ",");
        		   while (st.hasMoreTokens()) {
        			   delay();
        			   scrollIntoViewByJS(driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")));
        			   driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")).clear();
        			   String a = st.nextToken().trim();
        			   delay();
        			   iFillInText(driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")), a);
        			   clickElement(driver.findElement(By.xpath("//label[contains(text(),\""+a+"\")]")));
        			   delay();
        		   }
        		   driver.findElement(By.xpath("//a[contains(text(),'Applications')]")).click();
        	   }
        	   else
        	   {
        		   scrollIntoViewByJS(driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")));
        		   driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")).clear();
        		   iFillInText(driver.findElement(By.xpath("//div[@class='select-checkbox-dropdown-menu menu']//input[@placeholder='Search']")), searchParam);
    			   delay();
        		   clickElement(driver.findElement(By.xpath("//label[contains(text(),\""+searchParam+"\")]")));
        		   driver.findElement(By.xpath("//a[contains(text(),'Applications')]")).click();
        	   }
           } 
       }
   }
   
   public void clearLearningPathwaySearchBox() throws Throwable {
	   driver.findElement(By.xpath("//input[@placeholder='Search']")).clear();
   }
   
   public void verifyLoginButton() throws Throwable {
	   Assert.assertTrue(isElementPresentOnPage(By.xpath("//*[contains(text(),'Log In')]")));
   }
   
   public void selectPrograms(String programList) throws Throwable {
	   if(!(programList.equals("")))
   	{
		   longDelay();
	   if(!(driver.findElements(By.xpath("//div[text()='Select']")).size()>0))
	   {
		   longDelay();
		   driver.findElement(By.xpath("//i[@class='delete icon']")).click();
		   longDelay();
	   }
	   if(programList.contains(","))
	   {
		   StringTokenizer st = new StringTokenizer(programList,",");
		   driver.findElement(By.xpath("//div[text()='Select']")).click();
		   while (st.hasMoreTokens()) {
	    	   String programs = st.nextToken().trim();
	    	   iWillWaitToSee(By.xpath("//label[text()='"+programs+"']"));
	           driver.findElement(By.xpath("//label[text()='"+programs+"']")).click();
	           Thread.sleep(2000);
	       }   
	   }
	   else
	   {
		   longDelay();
		   driver.findElement(By.xpath("//div[text()='Select']")).click();
		   longDelay();
		   driver.findElement(By.xpath("//label[text()='"+programList+"']")).click();
		   longDelay();
	   }
   	}
   }
   
   public void selectLocations(String locationList) throws Throwable {
	   if(!(locationList.equals("")))
	   	{
	   if(locationList.equalsIgnoreCase("All Locations")){
		   clickElement(driver.findElement(By.xpath("//div[@class='content active']//label[text()='All Locations']")));
		   delay();
	   }
	   
	   else if (locationList.contains(","))
	   {
		   StringTokenizer st = new StringTokenizer(locationList,",");
	       while (st.hasMoreTokens()) {
	    	   String token = st.nextToken().trim();
	    	   String location = token.substring(token.indexOf("--")+2, token.length());
	    	   String BPID = token.substring(0, token.indexOf("--"));
	    	   if(location.contains(BPID))
	    	   {
	    		   delay();
		    	   while(!(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).getText().equals("")))
		    	   {
		    		   driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).clear();  
		    	   }
		    	   delay();
		    	   iFillInText(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")), BPID);
		    	   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
		    	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
		    	   Thread.sleep(3000);
	    	   }
	    	   else
	    	   {
	    		   delay();
	    		   while(!(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).getText().equals("")))
		    	   {
		    		   driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).clear();  
		    	   }
		    	   delay();
		    	   iFillInText(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")), location);
		    	   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
		    	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
		    	   Thread.sleep(3000); 
	    	   }
	       }   
	   }
	   else if(locationList.contains("--"))
	   {
		   String token = locationList;
    	   String location = token.substring(token.indexOf("--")+2, token.length());
    	   String BPID = token.substring(0, token.indexOf("--"));
    	   if(location.contains(BPID))
    	   {
    		   delay();
    		   while(!(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).getText().equals("")))
	    	   {
	    		   driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).clear();  
	    	   }
        	   delay();
        	   iFillInText(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")), BPID);
        	   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
        	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
        	   Thread.sleep(3000);
    	   }
    	   else
    	   {
    		   delay();
    		   while(!(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).getText().equals("")))
	    	   {
	    		   driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")).clear();  
	    	   }
        	   delay();
        	   iFillInText(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")), location);
        	   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
        	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
        	   Thread.sleep(3000);   
    	   }
    	   
	   	    }	
	   }
   }
   
   public void selectLocationsForDownstreamProvider(String locationList) throws Throwable {
	   if(!(locationList.equals("")))
	   	{
		   StringTokenizer st = new StringTokenizer(locationList,",");
	       while (st.hasMoreTokens()) {
	    	   String token = st.nextToken().trim();
	    		   delay();
	    		   while(!(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).getText().equals("")))
		    	   {
		    		   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).clear();  
		    	   }
		    	   delay();
		    	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")), token);
		    	   iWillWaitToSee(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//label[contains(text(),\""+token+"\")]"));
		    	   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//label[contains(text(),\""+token+"\")]")).click();
		    	   Thread.sleep(3000); 
	   	}
	   	}
   }
   
   public void selectLocationsForPTAUser(String locationList) throws Throwable {
	   if(!(locationList.equals("")))
	   	{
		   if(locationList.equalsIgnoreCase("All Locations")){
			   clickElement(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//label[text()='All Locations']")));
			   delay();
		   }
		   else if (locationList.contains(","))
		   {
			   StringTokenizer st = new StringTokenizer(locationList,",");
		       while (st.hasMoreTokens()) {
		    	   String token = st.nextToken().trim();
		    	   String location = token.substring(token.indexOf("--")+2, token.length());
		    	   String BPID = token.substring(0, token.indexOf("--"));
		    	   if(location.contains(BPID))
		    	   {
		    		   delay();
			    	   while(!(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).getText().equals("")))
			    	   {
			    		   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).clear();  
			    	   }
			    	   delay();
			    	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")), BPID);
			    	   iWillWaitToSee(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
			    	   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
			    	   Thread.sleep(3000);
		    	   }
		    	   else
		    	   {
		    		   delay();
		    		   while(!(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).getText().equals("")))
			    	   {
			    		   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).clear();  
			    	   }
			    	   delay();
			    	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")), location);
			    	   iWillWaitToSee(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
			    	   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
			    	   Thread.sleep(3000); 
		    	   }
		       }   
		   }
		   else if(locationList.contains("--"))
		   {
			   String token = locationList;
	    	   String location = token.substring(token.indexOf("--")+2, token.length());
	    	   String BPID = token.substring(0, token.indexOf("--"));
	    	   if(location.contains(BPID))
	    	   {
	    		   delay();
	    		   while(!(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).getText().equals("")))
		    	   {
		    		   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).clear();  
		    	   }
	        	   delay();
	        	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")), BPID);
	        	   iWillWaitToSee(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
	        	   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
	        	   Thread.sleep(3000);
	    	   }
	    	   else
	    	   {
	    		   delay();
	    		   while(!(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).getText().equals("")))
		    	   {
		    		   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")).clear();  
		    	   }
	        	   delay();
	        	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//input[@placeholder='Search']")), location);
	        	   iWillWaitToSee(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]"));
	        	   driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']//../..//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//label[contains(text(),\""+location+"\")]")).click();
	        	   Thread.sleep(3000);   
	    	   }
		   	    }	
	   	}
	   	}
	   
	   	
   
   public void clickAddHealthSystemButton(String flag) throws Throwable {
       if(flag.equals("Yes"))
       {
    	   scrollIntoViewByJS(driver.findElement(By.xpath("//button[text()='Add Another Organization']")));
    	   iWillWaitToSee(By.xpath("//button[text()='Add Another Organization']"));
    	   driver.findElement(By.xpath("//button[text()='Add Another Organization']")).click();
       }
   }
   
   public void clickAddHealthSystemButtonForDownstremProvider(String flag) throws Throwable {
       if(flag.equals("Yes"))
       {
    	   scrollIntoViewByJS(driver.findElement(By.xpath("//button[text()='Add Model 3 Organization(s)']")));
    	   iWillWaitToSee(By.xpath("//button[text()='Add Model 3 Organization(s)']"));
    	   driver.findElement(By.xpath("//button[text()='Add Model 3 Organization(s)']")).click();
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
   
   public void clickLogOutButtonAgain(String arg1) throws Throwable {
	   Thread.sleep(2000);
	   if(driver.findElements(By.cssSelector(".title>p")).size()>0)
	   {
		   iWillWaitToSee(By.xpath("//i[@class='btn btn-menu valentino-icon-profile']"));
	      driver.findElement(By.xpath("//i[@class='btn btn-menu valentino-icon-profile']")).click();
	      delay();
	      driver.findElement(By.xpath("//a[@ng-click='user.logout()']")).click();
	   }
   }
   
   public void verifyProductTiles(String products) throws Throwable {
	   StringTokenizer st = new StringTokenizer(products,",");
	   String token = null;
       while (st.hasMoreTokens()) {
    	   String newToken = st.nextToken().trim();
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
   
   public void verifyProductNotPresentOnAppTab(String products) throws Throwable {
	   StringTokenizer st = new StringTokenizer(products,",");
	   String token = null;
       while (st.hasMoreTokens()) 
       {
    	   String newToken = st.nextToken().trim();
    		Assert.assertFalse(isElementNotPresentOnPage(By.xpath("//label[.='"+newToken+"']")));
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
			String newToken = st.nextToken().trim();
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
			if(token.equals("Episodes"))
			{
				Assert.assertTrue(isElementPresentOnPage(By.xpath("//p[text()='Institute']")));
			}
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
   
   public void iVerifyDropDownValueFromProfileIcon(String text, String role) {
	   iWillWaitToSee(By.xpath("//i[@class='btn btn-menu valentino-icon-profile']"));
		if(text.equals("Internal Support"))
		{
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[@ng-href='https://jira.remedypartners.com/servicedesk/customer/portal/2']")));
			driver.get("https://cdn-qa.remedypartners.com/");
			delay();
		}
		else if(text.equals("Support"))
		{
			String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
			if(application.contains("Episodes"))
			{
				if(!(role.substring((role.indexOf("-")+1)).equals("Remedy Sales Team") || role.substring((role.indexOf("-")+1)).equals("Prospective Partner Executive")))
				   {
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[@ng-href='https://jira.remedypartners.com/servicedesk/customer/portal/2/user/login?destination=portal%2F2']")));
			driver.get("https://cdn-qa.remedypartners.com/");
			delay();
				   }
			}
		}
		else if(text.equals("Reset Password"))
		{
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[contains(@ng-click,'valentino.reset-password')]")));
			driver.get("https://cdn-qa.remedypartners.com/");
			delay();
		}
		else if(text.equals("Log Out"))
		{
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[@ng-click='user.logout()']")));
			driver.get("https://cdn-qa.remedypartners.com/");
			delay();
		}
	}
   
   public void iClickOnFiledInDropdownOnProfileIcon(String text, String role) {
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		if(application.contains("Episodes"))
		{
			if(!(role.substring((role.indexOf("-")+1)).equals("Remedy Sales Team") || role.substring((role.indexOf("-")+1)).equals("Prospective Partner Executive")))
			   {
				   iWillWaitToSee(By.xpath("//i[@class='btn btn-menu valentino-icon-profile']"));
				      delay();
				      driver.findElement(By.xpath("//i[@class='btn btn-menu valentino-icon-profile']")).click();
				      iWillWaitToSee(By.xpath("//a[@ng-href='https://jira.remedypartners.com/servicedesk/customer/portal/2/user/login?destination=portal%2F2']"));
				      driver.findElement(By.xpath("//a[@ng-href='https://jira.remedypartners.com/servicedesk/customer/portal/2/user/login?destination=portal%2F2']")).click();
				      delay();
				      objLandingPage.iSwitchToNewWindow();
			   }
		}
	}
   
   public void iVerifyPageHeaderForPageOnRemedyConnect(String title, String role ) throws InterruptedException {
	   String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		if(application.contains("Episodes"))
		{
			try
			   {
				   if(!(role.substring((role.indexOf("-")+1)).equals("Remedy Sales Team") || role.substring((role.indexOf("-")+1)).equals("Prospective Partner Executive")))
				   {
					   Thread.sleep(2000);
					      System.out.println(driver.findElement(By.xpath("//h1[text()='Login']")).getText());
						   Assert.assertTrue(isElementPresentOnPage(By.xpath("//h1[text()='Login']")));
						   delay();
						      objLandingPage.iSwitchBackToOldWindow();
				   }  
			   }
			   catch(Exception e)
			   {
				   objLandingPage.iSwitchBackToOldWindow();
			   }
		}
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
				       driver.findElement(By.xpath("//a[text()=\""+text+"\"]")).click(); 
					   longDelay();
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
				   if(text.contains(","))
				   {
					   StringTokenizer st1 = new StringTokenizer(text, ",");
					   while(st1.hasMoreTokens())
					   {
						   verifyTextForElement(driver.findElement(By.xpath("//*[@id='dialogTitleBar']/table/tbody/tr/td[1]")), "Filter on BPID");
						   iWillWaitToSee(By.xpath("//div[@id[starts-with(.,'FT_AVA_')]]"));
						   verifyTextForElementfromList("#FT_valueList div", st1.nextToken().trim());
					   }
				   }
				   else
				   {
					   verifyTextForElement(driver.findElement(By.xpath("//*[@id='dialogTitleBar']/table/tbody/tr/td[1]")), "Filter on BPID");
					   iWillWaitToSee(By.xpath("//div[@id[starts-with(.,'FT_AVA_')]]"));
					   verifyTextForElementfromList("#FT_valueList div", text);  
				   }
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
	 
	 public void iclickOnReportButton(String role) throws Throwable {
		 String application = CreateUserPage.usersApplicationsPerRole.get(role).get(role.substring((role.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(application, ",");
		   while(st.hasMoreTokens())
		   {
			   if(st.nextToken().trim().equals("Reports"))
			   {
				   iWillWaitToSee(By.xpath("//div[@class='flex-item order-2 btn logo valentino-icon-reports']"));
				   clickElement(driver.findElement(By.xpath("//div[@class='flex-item order-2 btn logo valentino-icon-reports']")));
			   }
		   }
	 }
	 
	 public void clickCrossButton() throws Throwable {
		 driver.findElement(By.xpath("//i[@class='close icon']")).click();
	 }
	 
	 public void removeAlreadySelectedRole() throws Throwable {
		 driver.findElement(By.xpath("//i[@class='close icon']")).click();
	 }
	 
	 public void iVerifyTheSelectedLocationsInTheSelectLocationsSection(String text){
		 	wait.until(ExpectedConditions.visibilityOf(driver.findElement(By.xpath("//h5[text()='Selected Locations:']/..//td[contains(text(),\""+text+"\")]"))));
			String actual = getTextForElement(driver.findElement(By.xpath("//h5[text()='Selected Locations:']/..//td[contains(text(),\""+text+"\")]")));
			Assert.assertEquals(text,actual);
	 }
	 
	 public void iSearchTheSelectedLocationsInTheSelectLocationsSection(String locationList){
		 iFillInText(driver.findElement(By.xpath("//*[text()='Selected Locations:']//following::input")), locationList);
		 Assert.assertTrue(isElementPresent(By.xpath("//*[text()='Selected Locations:']//following::input")));
	 }
	 
	 public void iClickOnRemoveLinkIconforSelectedLocationsSelectLocationsSection(){
		 clickElement(driver.findElement(By.cssSelector(".remove.link.icon")));
	 }
	 
	 public void iVerifySelectedLocationsSectionAfterClickOnRemoveLinkIcon(){
		 isElementNotPresentOnPage(By.xpath("//*[text()='Selected Locations:']"));
	 }
	 
	 public void iVerifyTextonpopupWindowAfterClickonRemovelinkIcon(){
		 verifyTextForElement(driver.findElement(By.xpath("//div[@class='content']//h3[text()='Are you sure you want to remove']")), "Are you sure you want to remove");
	 }
	 
	 public void iClickonCancelLinkPopUpWindow(String text){
		 clickElement(driver.findElement(By.xpath("//div[@class='actions']//a[text()='Cancel']")));
	 }
	 
	 public void iClickonRemoveButtonPopUpWindow(String text){
		 clickElement(driver.findElement(By.xpath("//div[@class='actions']//button[text()='Remove']")));
	 }
}
