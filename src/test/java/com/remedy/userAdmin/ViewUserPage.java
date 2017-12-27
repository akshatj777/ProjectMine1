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

	public void verifyFields(String field) throws Throwable {
		
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
