package com.remedy.userAdmin;

import java.util.StringTokenizer;

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
	
	public void verifyHealthSystem(String field) throws Throwable {
		
	}
	
	public void verifyPrograms(String field) throws Throwable {
		
	}
	
	public void verifyBPID(String field) throws Throwable {

	}
	

	public void verifyHealthSystemLocation(String field) throws Throwable {

	}
	
	public void verifyEditIcon() throws Throwable {
	
	}
	
	public void verifyUnlockIcon() throws Throwable {
	
	}
	
	public void verifyHealthSystemSearchBox() throws Throwable {
	
	}
	
	public void ClickHealthSytemDropdown(String field) throws Throwable {
	
	}
	
	public void EnterTextInHealthSytemSerchBox(String field) throws Throwable {
	
	}

	public void verifyEnabledApplications(String applicationsEnabled) throws Throwable {
		String applicationEnabled = CreateUserPage.usersApplicationsPerRole.get(applicationsEnabled).get(applicationsEnabled.substring((applicationsEnabled.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(applicationEnabled, ",");
		   while(st.hasMoreTokens())
		   {
			   isElementPresentOnPage(By.xpath("//tr/td[text()='"+st.nextToken().trim()+"']/parent::tr/td[text()='Enabled']"));   
		   }
	}
	
	public void verifyDisabledApplications(String applicationsDisabled) throws Throwable {
		String applicationDisabled = CreateUserPage.usersApplicationsPerRole.get(applicationsDisabled).get(applicationsDisabled.substring((applicationsDisabled.indexOf("-")+1)));
		   StringTokenizer st = new StringTokenizer(applicationDisabled, ",");
		   while(st.hasMoreTokens())
		   {
			   isElementPresentOnPage(By.xpath("//tr/td[text()='"+st.nextToken().trim()+"']/parent::tr/td[text()='Disabled']"));   
		   }
	}
}
