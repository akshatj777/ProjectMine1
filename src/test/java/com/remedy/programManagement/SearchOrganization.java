package com.remedy.programManagement;

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
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.orgMOName);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}	
	}
	
	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		if(text.contains("MONAME"))
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.orgMOName+"']"));
		}
		else
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
		}	
	}
}
