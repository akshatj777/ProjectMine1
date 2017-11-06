package com.remedy.programManagement;

import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

import cucumber.api.DataTable;



public class SearchOrganization extends BaseClass{
	WebDriverWait wait = new WebDriverWait(driver, 20);

	public SearchOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iSearchFieldOnOrganizationInSearchBox(String text) {
		if(text.contains("MONAME"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.orgName);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}	
	}
	
	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		if(text.contains("MONAME"))
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			//verifyTextForElement(driver.findElement(By.xpath("//div[text()='MO_post']")), CreateManagingOrganization.orgName);
			isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.orgName+"']"));
		}
		else
		{
			iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
			//verifyTextForElement(driver.findElement(By.xpath("//div[text()='MO_post']")), text);
			isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
		}
		
	}

}
