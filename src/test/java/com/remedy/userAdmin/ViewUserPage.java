package com.remedy.userAdmin;

import java.util.StringTokenizer;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

import cucumber.api.java.en.Then;

public class ViewUserPage extends BaseClass {

	public ViewUserPage(WebDriver driver) {
		super(driver);
	}

	public void searchForUserRole(String userRole) throws Throwable {
		iWillWaitToSee(By.xpath("//tr[@class='component-user-table-row']"));
		String email = CreateUserPage.usersEmailPerRole.get(userRole).get(userRole.substring((userRole.indexOf("-")+1)).trim());
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Search']")), email);
	}

	public void selectUserRole(String userRole) throws Throwable {
		String email = CreateUserPage.usersEmailPerRole.get(userRole).get(userRole.substring((userRole.indexOf("-")+1)).trim());
		iWillWaitToSee(By.xpath("//tr[@class='component-user-table-row']"));
		clickElement(driver.findElement(By.xpath("//tr[@class='component-user-table-row']")));
	}

	public void verifyNavigationToViewUserPage() throws Throwable {
		iWillWaitToSee(By.xpath("//h3[text()='Applications']"));
		isElementPresentOnPage(By.xpath("//h3[text()='Applications']"));
	}

	public void verifyFirstName(String field) throws Throwable {
		isElementPresentOnPage(By.xpath("//span[text()=', "+field+"']"));
	}
	
	public void verifyLastName(String field) throws Throwable {
		isElementPresentOnPage(By.xpath("//span[text()='"+field+"']"));
	}
	
	public void verifyRole(String field) throws Throwable {
		
	}
	
	public void verifyEmail(String field) throws Throwable {
		isElementPresentOnPage(By.xpath("//span[@title='"+field+"']"));
	}

	public void verifyPhone(String field) throws Throwable {
		
	}
	
	public void verifyNPI(String field) throws Throwable {
		
	}
	
	public void verifyHealthSystem(String healthSystem) throws Throwable {
		if(!(healthSystem.equals("")))
		{
			if(healthSystem.contains(","))
			{
				StringTokenizer st = new StringTokenizer(healthSystem, ",");
				while(st.hasMoreTokens())
				{
					Assert.assertTrue(isElementPresentOnPage(By.xpath("//span[contains(text(),'"+st.nextToken().trim()+"')]")));
				}
			}
			else
			{
				Assert.assertTrue(isElementPresentOnPage(By.xpath("//span[contains(text(),'"+healthSystem+"')]")));
			}
		}
	}
	
	public void verifyPrograms(String programs) throws Throwable {
		if(!(programs.equals("")))
		{
			if(programs.contains(","))
			{
				StringTokenizer st = new StringTokenizer(programs, ",");
				while(st.hasMoreTokens())
				{
					String token = st.nextToken().trim();
			    	String program = token.substring(token.indexOf("--")+2, token.length());
			    	String healthSystem = token.substring(0, token.indexOf("--"));
			    	Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='title accordion-title']//span[contains(text(),'"+healthSystem+"')]//span[contains(text(),'"+program+"')]")));
				}
			}
			else
			{
				String program = programs.substring(programs.indexOf("--")+2, programs.length());
		    	String healthSystem = programs.substring(0, programs.indexOf("--"));
		    	Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='title accordion-title']//span[contains(text(),'"+healthSystem+"')]//span[contains(text(),'"+program+"')]")));
			}
		}
	}
	
	public void verifyHealthSystemLocation(String locations, String healthSystem) throws Throwable {
		if(!(locations.equals("")))
		{
			if(locations.contains(","))
			{
				StringTokenizer st = new StringTokenizer(locations, ",");
				while(st.hasMoreTokens())
				{
					String token = st.nextToken().trim();
					String BPID = token.substring(0, token.indexOf("--"));
					String location = token.substring(token.indexOf("--")+2, token.length());
			    	driver.findElement(By.xpath("//span[contains(text(),'"+healthSystem+"')]")).click();
			    	if(driver.findElement(By.xpath("//div[@class='content active']//input")).isDisplayed())
			    	{
			    		driver.findElement(By.xpath("//div[@class='content active']//input")).sendKeys(location);
			    		iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//td[contains(text(),\""+location+"\")]"));
			    		Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//td[contains(text(),\""+location+"\")]")));
			    	}
				}
			}
			else
			{
				String BPID = locations.substring(0, locations.indexOf("--"));
				String location = locations.substring(locations.indexOf("--")+2, locations.length());
				driver.findElement(By.xpath("//span[contains(text(),'"+healthSystem+"')]")).click();
		    	if(driver.findElement(By.xpath("//div[@class='content active']//input")).isDisplayed())
		    	{
		    		driver.findElement(By.xpath("//div[@class='content active']//input")).sendKeys(location);
		    		iWillWaitToSee(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//td[contains(text(),\""+location+"\")]"));
		    		Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='content active']//th[contains(text(),\""+BPID+"\")]/../../following-sibling::tbody//td[contains(text(),\""+location+"\")]")));
		    	}
			}
		}
	}
	
	public void verifyEditIcon() throws Throwable {
		Assert.assertTrue(isElementPresentOnPage(By.xpath("//a[@class='edit-controls']")));
	}
	
	public void verifyLockUnlockIcon() throws Throwable {
		Assert.assertTrue(isElementPresentOnPage(By.xpath("//*[name()='svg'][@height='23px']")));
	}
	
	public void verifyEnabledApplications(String applicationsEnabled) throws Throwable {
		if(!(applicationsEnabled.equals("")))
		{
			if(applicationsEnabled.contains(","))
			{
				String applicationEnabled = CreateUserPage.usersApplicationsPerRole.get(applicationsEnabled).get(applicationsEnabled.substring((applicationsEnabled.indexOf("-")+1)));
				   StringTokenizer st = new StringTokenizer(applicationEnabled, ",");
				   while(st.hasMoreTokens())
				   {
					   isElementPresentOnPage(By.xpath("//tr/td[text()='"+st.nextToken().trim()+"']/parent::tr/td[text()='Enabled']"));   
				   }
			}
			else
			{
				isElementPresentOnPage(By.xpath("//tr/td[text()='"+applicationsEnabled+"']/parent::tr/td[text()='Enabled']"));
			}
			
		}
		
	}
	
	public void verifyLearningPathway(String learningPathway) throws Throwable {
		if(!(learningPathway.equals("")))
		{
			if(learningPathway.contains(","))
			{
				StringTokenizer st = new StringTokenizer(learningPathway, ",");
				   while(st.hasMoreTokens())
				   {
					   isElementPresentOnPage(By.xpath("//li[text()='"+st.nextToken().trim()+"']"));   
				   }
			}
			else
			{
				isElementPresentOnPage(By.xpath("//li[text()='"+learningPathway+"']"));
			}
		}
	}
	
	public void verifyDisabledApplications(String applicationsDisabled) throws Throwable {
		if(!(applicationsDisabled.equals("")))
		{
			if(applicationsDisabled.contains(","))
			{
				String applicationDisabled = CreateUserPage.usersApplicationsPerRole.get(applicationsDisabled).get(applicationsDisabled.substring((applicationsDisabled.indexOf("-")+1)));
				   StringTokenizer st = new StringTokenizer(applicationDisabled, ",");
				   while(st.hasMoreTokens())
				   {
					   isElementPresentOnPage(By.xpath("//tr/td[text()='"+st.nextToken().trim()+"']/parent::tr/td[text()='Disabled']"));   
				   }
			}
			else
			{
				isElementPresentOnPage(By.xpath("//tr/td[text()='"+applicationsDisabled+"']/parent::tr/td[text()='Disabled']"));
			}
		}
	}
}
