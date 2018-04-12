package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;

public class EditPhysicianRoster extends BaseClass {

	public EditPhysicianRoster(WebDriver driver) {
		super(driver);
	}

	public void iSearchWithPhysicianRosterOnViewProfileOfOrganizationSearchBox(String text, String org){
		iWillWaitToSee(By.xpath("//input[@class='text-input-field-programFilterTerm']"));
		iFillInText(driver.findElement(By.xpath("//input[@class='text-input-field-programFilterTerm']")), text);
		delay();
	}
	
	public void iVerifyPhysicianRosterFieldInSearchListOnViewProfileOfOrganizationSearchBox(String text, String org){
		iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
		isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
	}
	
	public void iClickPhysicianRosterFieldInSearchListOnViewProfileOfOrganizationSearchBox(String text, String org){
		iWillWaitToSee(By.xpath("//div[text()='"+text+"']"));
		clickElement(driver.findElement(By.xpath("//div[text()='"+text+"']")));
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iVerifyProgramNameIsNotEditable(){
		Assert.assertEquals("true",driver.findElement(By.cssSelector(".Select-value")).getAttribute("disabled"));
	}
	
	
	public void iNavigatetoURL(String url){
		driver.get(url);
	}
}
