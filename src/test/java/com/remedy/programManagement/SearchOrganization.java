package com.remedy.programManagement;

import java.sql.SQLException;

import org.junit.Assert;
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
		  else if (value.equals("ACHNAME - YES")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg.get("ACHNAME"));
			  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  value = CreateACHOrganization.achOrg.get("ACHNAME");
			  isElementPresentOnPage(By.xpath("//div[text()='"+value+"']"));
		  }
		  else if (value.equals("ACHNAME - NO")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg_noMO.get("ACHNAME"));
			  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  value = CreateACHOrganization.achOrg_noMO.get("ACHNAME");
			  isElementPresentOnPage(By.xpath("//div[text()='"+value+"']"));
		  }
		  else if (value.equals("CCN - YES")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg.get("CCN"));
			  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  value = CreateACHOrganization.achOrg.get("CCN");
			  isElementPresentOnPage(By.xpath("//div[text()='"+value+"']"));
		  }
		  else if (value.equals("CCN - NO")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.achOrg_noMO.get("CCN"));
			  waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  value = CreateACHOrganization.achOrg_noMO.get("CCN");
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
	
	public void iVerifytheNewMatchesMessage(String text) {
		Assert.assertEquals(text, driver.findElement(By.cssSelector(".data-table-overlay-message")).getText().trim());
	}
	
	public void iVerifytheCreateNewOrganizationLinkUnderNoMatches(String link) {
		Assert.assertEquals(link, driver.findElement(By.cssSelector(".data-table-overlay-link>a")).getText().trim());
	}

	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		if(text.contains("MONAME"))
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.moOrg.get("MONAME")+"']"));
		}
		else if(text.contains("ACHNAME - YES")){
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateACHOrganization.achOrg.get("ACHNAME")+"']"));
		}
		else if(text.contains("ACHNAME - NO")){
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateACHOrganization.achOrg_noMO.get("ACHNAME")+"']"));
		}
		else
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
		}	
	}
	
	public void iSearchWithOldNameInOrganizationSerachBox(String org){
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")).clear();
		if (org.equals("MONAME")){
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.moName);
		}
		else if(org.equals("ACHNAME - Yes")){
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.oldACH_WithMO);
		}
		else if (org.equals("ACHNAME - NO")){
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateACHOrganization.oldACH_WithoutMO);
		}
	}
}
