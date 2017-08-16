package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;



public class SearchOrganization extends BaseClass{
	WebDriverWait wait = new WebDriverWait(driver, 10);

	public SearchOrganization(WebDriver driver) {
		super(driver);
	}
	
	
	
	public void iSearchFieldOnOrganizationInSearchBox(String text) {
		iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
		 wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iSeeSearchCountOnOrganization(String text) {
		String actual = driver.findElements(By.cssSelector(".fixed-data-table.noselect>div")).get(0).getText();
		Assert.assertEquals(text, actual);
	}
	
	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		iWillWaitToSee(By.xpath("//div[text()='"+text+"']"));
	}

}
