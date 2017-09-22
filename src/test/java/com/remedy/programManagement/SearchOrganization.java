package com.remedy.programManagement;

import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;



public class SearchOrganization extends BaseClass{
	WebDriverWait wait = new WebDriverWait(driver, 20);

	public SearchOrganization(WebDriver driver) {
		super(driver);
	}
	
	
	
	public void iSearchFieldOnOrganizationInSearchBox(String text) {
		if(text.contains("MONAME"))
		{
			CreateManagingOrganization.orgName = text + RandomStringUtils.randomAlphabetic(8) + "ORGNAME";
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.orgName);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(text.contains("ACH"))
		{
			CreateManagingOrganization.editedACHName = CreateManagingOrganization.ACHName;
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.editedACHName);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
	
		
	}
	
	public void iSeeSearchCountOnOrganization(String text) {
		String actual = driver.findElements(By.cssSelector(".fixed-data-table.noselect>div")).get(0).getText();
		Assert.assertEquals(text, actual);
	}
	
	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		iWillWaitToSee(By.xpath("//div[text()='"+text+"']"));
	}

}
