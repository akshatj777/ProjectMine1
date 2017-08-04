package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;



public class SearchOrganization extends BaseClass{

	public SearchOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iSearchFieldOnOrganizationInSearchBox(String text) {
		iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
	}
	
	public void iSeeSearchCountOnOrganization(String text) {
		String actual = driver.findElements(By.cssSelector(".fixed-data-table.noselect>div")).get(0).getText();
		Assert.assertEquals(text, actual);
	}
	
	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
		iWillWaitToSee(By.xpath("//div[text()='"+text+"']"));
	}

}
