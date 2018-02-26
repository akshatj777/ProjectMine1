package com.remedy.userAdmin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.server.handler.ClickElement;

import com.remedy.baseClass.BaseClass;
import com.remedy.userAdmin.CreateUserPage;

public class EditUser extends BaseClass {
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	String time = df.format(timestamp);
	String mail = "test.automatemail";
	final String email = mail + "+" + time + "@gmail.com";
	CreateUserPage createUserPage=new CreateUserPage(driver);
	public EditUser(WebDriver driver) {

		super(driver);
	}

	public void iClickOnUser(String mail) {
		delay();
		if (mail.equalsIgnoreCase(mail)) {
			iWillWaitToSee(By.cssSelector("td.five.wide"));
			clickElement(driver.findElements(By.cssSelector("td.five.wide")).get(0));
		}
	}



	public void iClickOnEditButton() {
		iWillWaitToSee(By.cssSelector(".edit-controls"));
		clickElement(driver.findElement(By.cssSelector(".edit-controls")));
		iWillWaitToSee(By.cssSelector(".ui.primary.button"));
	}

	

	public void iEnterPhone(String number) {
		iWillWaitToSee(By.cssSelector("input[placeholder='Phone']"));
		driver.findElement(By.cssSelector("input[placeholder='Phone']")).clear();
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Phone']")), number);
	
	}
	
	
	public void iVerifyThatEmailIsNonEditable() {
		iWillWaitToSee(By.xpath("//input[@placeholder='Email']"));
		// driver.findElement(By.xpath("//input[@placeholder='Email']"));
		Assert.assertFalse(driver.findElement(By.cssSelector("input[placeholder='Email']")).isEnabled());

	}

	public void iClickOnRoleFieldToEdit() {
		iWillWaitToSee(By.cssSelector(".ui.fluid.selection.dropdown"));
		clickElement(driver.findElement(By.cssSelector(".ui.fluid.selection.dropdown")));
	}

	public void iClickOnTab(String text) {
		iWillWaitToSee(By.xpath("//a[contains(text(),'" + text + "')]"));
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'" + text + "')]")));
	}

	public void iVerifyThatApplicationsAreEditable(String app, String text) {
		delay();
		
		if (text.equalsIgnoreCase("Disabled")) {
			if (app.contains(",")) {
				String[] application = app.split(",\\s+");

				for (int i = 0; i < application.length; i++) {

					verifyTextForElementFromListByXpath("//*[contains(text(),'Disabled')]/preceding-sibling::td",application[i]);

				}
			} else {

				verifyTextForElementFromListByXpath(
						"//*[contains(text(),'Disabled')]/preceding-sibling::td", app);

			}
		} else if (text.equalsIgnoreCase("Enabled")) {
			if (app.contains(",")) {
				String[] application = app.split(",\\s+");

				for (int i = 0; i < application.length; i++) {

					verifyTextForElementFromListByXpath("//*[contains(text(),'Enabled')]/preceding-sibling::td",
							application[i]);

				}
			} else {

				verifyTextForElementFromListByXpath(
						"//*[contains(text(),'Enabled')]/preceding-sibling::td", app);

			}
		}
	}

	public void iClickOnDeleteOrganisation() {
		iWillWaitToSee(By.cssSelector(".remove.link.icon"));
		clickElement(driver.findElement(By.cssSelector(".remove.link.icon")));
	}
	public void iClickOnExisitingOrganisation(String text) {
		if (getElementCount(".component-participant-title")>1){
			if(text.contains("first")){
				iWillWaitToSee(By.cssSelector(".component-participant-title"));
				clickElement(driver.findElements(By.cssSelector(".component-participant-title")).get(0));
			}
			else if(text.contains("second")){
				iWillWaitToSee(By.cssSelector(".component-participant-title"));
				clickElement(driver.findElements(By.cssSelector(".component-participant-title")).get(1));
			}
			else if(text.contains("third")){
				iWillWaitToSee(By.cssSelector(".component-participant-title"));
				clickElement(driver.findElements(By.cssSelector(".component-participant-title")).get(2));
			}
		}else{
		iWillWaitToSee(By.cssSelector(".component-participant-title"));
		clickElement(driver.findElement(By.cssSelector(".component-participant-title")));
		}
	}
	public void iClickOnExisitingOrganisationByName(String text) {
	
		iWillWaitToSee(By.cssSelector(".component-participant-title"));
		
			   clickElement(driver.findElement(By.xpath("//span[contains(@class, 'component-participant-title') and contains(text(),'"+text+"')]")));
		
		
			}
		
	public void iRemoveHealthSystemByName(String org){
		iWillWaitToSee(By.xpath("//span[contains(@class, 'component-participant-title') and contains(text(),'"+org+"')]/i[contains(@class,'remove link icon')]"));
		clickElement(driver.findElement(By.xpath("//span[contains(@class, 'component-participant-title') and contains(text(),'"+org+"')]/i[contains(@class,'remove link icon')]")));
	}
	
	   public void clickAllLocationsButton(String arg) throws Throwable {
		   
		   if(arg.equals("Second")){
			   System.out.println("Secondffgfd");
			  delay();
		   clickElement(driver.findElements(By.xpath("//label[.='All Locations']")).get(1)); 
		   } 
		   else if(arg.equals("Third")){
			   delay();
			   clickElement(driver.findElements(By.xpath("//label[.='All Locations']")).get(2)); } 
	   
	   else{
		   iWillWaitToSee(By.xpath("//label[.='All Locations']"));
		   clickElement(driver.findElement(By.xpath("//label[.='All Locations']"))); 
		   }
		   delay();
	   }
	   public void iVerifyProductAsPerRole(String appList, String text){
		   delay();
		   iWillWaitToSee(By.cssSelector(".title.one.column.row.no-padding"));
		   if(text.contains("Present")){
		   if (appList.contains(",")) {
				String[] app = appList.split(",\\s+");

				for (int i = 0; i < app.length; i++) {
					isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+app[i]+"')]")));	
				}
				}
				
				else{
					isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+appList+"')]")));	
				}}
		   else if(text.contains("Not Present")){
			   
			   if (appList.contains(",")) {
					String[] app = appList.split(",\\s+");

					for (int i = 0; i < app.length; i++) {
						isElementNotPresentOnPage(By.xpath("//*[contains(text(),'"+app[i]+"')]"));	
					}
					}
					
					else{
						isElementNotPresentOnPage(By.xpath("//*[contains(text(),'"+appList+"')]"));	
					} 
		   }
	   } 
	   public void iVerifyDownstreamProviderPermission(String text, String present){
		   if(present.equals("Present")){
		   iWillWaitToSee(By.xpath("//*[contains(text(),'"+text+"')]"));
		   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
	   }
	   else if(present.equals("Not Present")){
		   isElementNotPresentOnPage(By.xpath("//*[contains(text(),'"+text+"')]"));
	   }
	   }
	   public void iSeeNoResults(String text){
		   if(text.contains(".")){
			   isElementVisible(driver.findElements(By.cssSelector(".header")).get(1));
			   clickElement(driver.findElement(By.xpath("//div[text()='Select']")));
		   }
		   else{
			   iWillWaitToSee(By.xpath("//*[contains(text(),'"+text+"')]"));
			   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
			   clickElement(driver.findElement(By.cssSelector(".remove.link.icon.remove-icon")));
			   delay();
		   }
		   
	   }
	   public void iVerifyDisabledNextButton(String text){
		   WebElement el = driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]"));
		   Assert.assertFalse(el.isEnabled());
		   
	   }
	   public void iVerifyErrorMessage(String text){
		   iWillWaitToSee(By.xpath("//*[contains(text(),'"+text+"')]"));
		   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
	   }
	 
	   public void iClickOnCloseIcon(){
		   clickElement(driver.findElement(By.cssSelector(".close.icon")));
	   }
	   public void iValidateNPI(String npi, String text){
		   iWillWaitToSee(By.xpath("//*[contains(text(),'Role:')]"));
		   if (text.contains("not")){
			   Assert.assertFalse(isElementNotPresentOnPage(By.xpath("//*[contains(text(),'"+npi+"')]")));
		   }
		   else {
			   Assert.assertTrue(isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+npi+"')]"))));
		   }
	   }
	   public void iValidateAlertText(String text){
		   iWillWaitToSee(By.xpath("//*[contains(text(),'"+text+"')]"));
		   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
	   }
	   public void iValidateCancelButton(String text){
		   
		   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
	   }
	   public void iVerifyProductsCount(String text, int count){
		   iWillWaitToSee(By.cssSelector(".ui.checkbox"));
		   int countActual=getElementCount(".ui.checkbox");
		   System.out.println("Actual count "+countActual);
		   if(text.contains("Less")){
			Assert.assertTrue(countActual<count);
		   }
		   else{
			   Assert.assertTrue(countActual>count);
		   }
	   }
	   
	   public void iClickOnAddAnotherOrganisation(String text){
		   //iWillWaitToSee(By.xpath("//*[contains(text(),'"+text+"')]"));
		   if(isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")))==true)
		   clickElement(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
	   }
	   public void iSearchLocByBPID(String bpid, String loc) throws InterruptedException{
		   
		   if (bpid.contains(",")){
		   StringTokenizer st1 = new StringTokenizer(bpid,",");
		   StringTokenizer st2 = new StringTokenizer(loc,",");
	       while (st1.hasMoreTokens()&&st2.hasMoreTokens()) {
	    	   String tokenBpid = st1.nextToken().trim();
	    	   String tokenLoc = st2.nextToken().trim();
	    	  // driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']/..//input[@placeholder='Search']")).clear();
	    	   iFillInText(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")), tokenBpid);
	    	   if(tokenLoc.equals("all locations")){
	    		   tokenLoc= "All "+bpid;
	    		   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+tokenBpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+tokenLoc+"\")]"));
		    	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+tokenBpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+tokenLoc+"\")]")).click();
	    	   }
	    	   else{
	    		   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+tokenBpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+tokenLoc+"\")]"));
		    	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+tokenBpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+tokenLoc+"\")]")).click();
	    	   }
	    	   Thread.sleep(3000);
	       		}
	       
		   }
		   else{
			   //driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']/..//input[@placeholder='Search']")).clear();
	    	   iFillInText(driver.findElement(By.xpath("//p[text()='Which location(s) does this user have access to?']/..//input[@placeholder='Search']")), bpid);
	    	   if(loc.equals("all locations")){
	    		   loc= "All "+bpid;
	    		   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+bpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+loc+"\")]"));
		    	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+bpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+loc+"\")]")).click();
		    	 
	    	   }
	    	   else{
	    		   iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+bpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+loc+"\")]"));
		    	   driver.findElement(By.xpath("//div[@class='content active']//th[contains(text(),\""+bpid+"\")]/../../following-sibling::tbody//label[contains(text(),\""+loc+"\")]")).click();  }
	    	   Thread.sleep(3000); 
		   }
}
	   
	   public void iVerifyFacilityKey(String key){
		   if (key.contains(",")){
			   StringTokenizer st = new StringTokenizer(key,",");
			   while (st.hasMoreTokens()){
				   String tok = st.nextToken().trim();
				   String token="("+tok+")";
				   iWillWaitToSee(By.xpath("//*[contains(text(),'"+token+"')]"));
				   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+token+"')]")));
			   }
		   }
		   else{
			   String token="("+key+")";
			   iWillWaitToSee(By.xpath("//*[contains(text(),'"+token+"')]"));
			   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+token+"')]")));
		   }
	   }
	  
	  
	   public void iSelectLocByFacilityKey(String key) throws InterruptedException{
		   if (key.contains(",")){
			   StringTokenizer st = new StringTokenizer(key,",");
			   
		       while (st.hasMoreTokens()) {
		    	   String token = st.nextToken().trim();
		    	   String facToken="("+token+")";
		    	   delay();
		    	   iFillInText(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")), token);
		    	   
		    	   iWillWaitToSee(By.xpath("//*[contains(text(),'"+facToken+"')]"));
		    	   
		    	   driver.findElement(By.xpath("//*[contains(text(),'"+facToken+"')]")).click();
		    	   Thread.sleep(3000);
		       		}
		       
			   }
			   else{
				   String facilityKey="("+key+")";
				   delay();
				   iFillInText(driver.findElement(By.xpath("//div[@class='content active']//input[@placeholder='Search']")), key);
		    	   
		    	   iWillWaitToSee(By.xpath("//*[contains(text(),'"+facilityKey+"')]"));
		    	   
		    	   driver.findElement(By.xpath("//*[contains(text(),'"+facilityKey+"')]")).click();
		    	   Thread.sleep(3000); 
			   }
		}
	   public void iVerifyLearningPathwayIDIsNotPresentOnEditPage(String text){
			Assert.assertFalse(isElementNotPresentOnPage(By.xpath("//*[contains(text(),'"+text+"']")));
		}

	   public void iVerifyPTAProvisionedRoleOnEditPage(){
			String []Roles={"Executive", "Manager", "Case Manager", "Physicians", "Transitional Case Manager"};
			for(int i=0;i<Roles.length;i++){
				isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+Roles[i]+"')]")));
			}
		}

	   public void unselectLearningPath(String searchParam) throws Throwable {
		   iWillWaitToSee(By.cssSelector(".ui.selection.dropdown"));
		   clickElement(driver.findElement(By.cssSelector(".ui.selection.dropdown")));
		   createUserPage.selectLearningPath(searchParam);
	   }

	
		public void iVerifydataPermissionsField(String field){
			 if (field.contains(",")){
				   StringTokenizer st = new StringTokenizer(field,",");
				   while (st.hasMoreTokens()){
					   String token = st.nextToken().trim();
					   iWillWaitToSee(By.xpath("//*[contains(text(),'"+token+"')]"));
					   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+token+"')]")));
				   }
			   }
			   else{
			   iWillWaitToSee(By.xpath("//*[contains(text(),'"+field+"')]"));
			   isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+field+"')]")));
			   }
		}
		public void selectProgramsForExistingOrg(String programList) throws Throwable {
			if (!(programList.equals(""))) {
				longDelay();
				if (!(driver.findElements(By.xpath("//div[text()='Select']")).size() > 0)) {
					longDelay();
					if (programList.contains(",")) {
						StringTokenizer st = new StringTokenizer(programList, ",");
						driver.findElement(By.cssSelector(".ui.selection.dropdown")).click();
						while (st.hasMoreTokens()) {
							String programs = st.nextToken().trim();
							iWillWaitToSee(By.xpath("//label[text()='" + programs + "']"));
							driver.findElement(By.xpath("//label[text()='" + programs + "']")).click();
							Thread.sleep(2000);
						}
					} else {

						longDelay();
						driver.findElement(By.cssSelector(".ui.selection.dropdown")).click();
						longDelay();
						driver.findElement(By.xpath("//label[text()='" + programList + "']")).click();
						longDelay();

					}
					longDelay();
				}else{
				if (programList.contains(",")) {
					StringTokenizer st = new StringTokenizer(programList, ",");
					driver.findElement(By.xpath("//div[text()='Select']")).click();
					while (st.hasMoreTokens()) {
						String programs = st.nextToken().trim();
						iWillWaitToSee(By.xpath("//label[text()='" + programs + "']"));
						driver.findElement(By.xpath("//label[text()='" + programs + "']")).click();
						Thread.sleep(2000);
					}
				} else {

					longDelay();
					driver.findElement(By.xpath("//div[text()='Select']")).click();
					longDelay();
					driver.findElement(By.xpath("//label[text()='" + programList + "']")).click();
					longDelay();

				}
			}
		}
		}
		public void VerifyNPIFieldForPhysicians(String role){
			if(role.equals("Physicians"))
			Assert.assertTrue(isElementVisible(driver.findElement(By.cssSelector("input[placeholder='NPI']"))));
		}
		public void iClickOnLearningPathwayDropdown(){
			iWillWaitToSee(By.cssSelector(".ui.label"));
			clickElement(driver.findElement(By.cssSelector(".ui.label")));
		}
}