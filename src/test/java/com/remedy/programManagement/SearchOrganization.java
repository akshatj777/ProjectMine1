package com.remedy.programManagement;

import java.sql.SQLException;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import com.remedy.baseClass.BaseClass;

public class SearchOrganization extends BaseClass{

	public SearchOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iSearchFieldOnOrganizationInSearchBox(String text) {
		if(text.contains("MONAME"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.moOrg.get("MONAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("ACHNAME - YES"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg.get("ACHNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("ACHNAME - NO"))
		{
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg_noMO.get("ACHNAME"));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{	
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}	
	}
	
	public void iSearchWithSearchListFieldOnOrganizationInSearchBox(String searchParam) throws ClassNotFoundException, SQLException{
		 
		String value = searchParam;
		  if (value.equals("MONAME")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.moOrg.get("MONAME"));
			  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  value = CreateManagingOrganization.moOrg.get("MONAME");
			  isElementPresentOnPage(By.xpath("//div[text()='"+value+"']"));
		  }
		  
		  else if (value.equals("PID")){
			  String query = "SELECT participant_id from program_management.organization where name = '"+CreateManagingOrganization.moOrg.get("MONAME")+"'";
			  value = fetchParticipantID(query);
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
			  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  isElementPresentOnPage(By.xpath("//div[text()='"+value+"']"));
		  }
		  else
		  {
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
			  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  isElementPresentOnPage(By.xpath("//div[text()='"+value+"']"));
		  }
	     }
		
	
	public void iVerifySearchBarOnOrganizationPage(String text) {
		iWillWaitToSee(By.cssSelector(".text-input-field-organizationFilterTerm"));
		isElementPresent(By.cssSelector(".text-input-field-organizationFilterTerm"));
	}
	
	public void iVerifytheNewMatchesMessage() {
		getTextForElement(driver.findElement(By.cssSelector(".data-table-overlay-message")));
	}
	
	public void iVerifytheCreateNewManagingOrganizationLink() {
		getTextForElement(driver.findElement(By.cssSelector(".data-table-overlay-link>a")));
	}

	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		if(text.contains("MONAME"))
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.moOrg.get("MONAME")+"']"));
		}
		else
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
		}	
	}
}
