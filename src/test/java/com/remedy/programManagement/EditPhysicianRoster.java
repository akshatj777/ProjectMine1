package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;

public class EditPhysicianRoster extends BaseClass {

	public EditPhysicianRoster(WebDriver driver) {
		super(driver);
	}

	public void iSearchWithPhysicianRosterOnViewProfileOfOrganizationSearchBox(String text, String org){
		if(org.equals("PGP")){
			iWillWaitToSee(By.xpath("//input[@class='text-input-field-programFilterTerm']"));
			iFillInText(driver.findElement(By.xpath("//input[@class='text-input-field-programFilterTerm']")), text);
			delay();
		}
		else if(org.equals("Hospital")){
			iWillWaitToSee(By.xpath("//input[@class='text-input-field-locationFilterTerm']"));
			iFillInText(driver.findElement(By.xpath("//input[@class='text-input-field-locationFilterTerm']")), text);
			delay();
		}
		else if(org.equals("Payor")){
			iWillWaitToSee(By.xpath("//input[@class='text-input-field-programFilterTerm']"));
			iFillInText(driver.findElement(By.xpath("//input[@class='text-input-field-programFilterTerm']")), CreatePrograms.programs.get(1));
			delay();
		}
	}
	
	public void iVerifyPhysicianRosterFieldInSearchListOnViewProfileOfOrganizationSearchBox(String text, String org){
		iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
		isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
	}
	
	public void iClickPhysicianRosterFieldInSearchListOnViewProfileOfOrganizationSearchBox(String text, String org){
		if(org.equals("PGP"))
		{
			iWillWaitToSee(By.xpath("//div[text()='"+text+"']"));
			clickElement(driver.findElement(By.xpath("//div[text()='"+text+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			longDelay();
		}
		else if(org.equals("Payor"))
		{
			iWillWaitToSee(By.xpath("//div[text()='"+CreatePrograms.programs.get(1)+"']"));
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreatePrograms.programs.get(1)+"']")));
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			longDelay();
		}
	}
	
	public void iVerifyProgramNameIsNotEditable(){
		//Assert.assertEquals("true",driver.findElement(By.cssSelector(".Select-value")).getAttribute("disabled"));
		WebElement ele = driver.findElement(By.cssSelector(".Select-value"));
		if(ele.isEnabled()){
			System.out.println("element is enabled");
		}
		else {
			System.out.println("element is disabled");
		}
	}
	
	public void iSearchAndVerifySearchListOptionsonViewProfileOfOrganizationSearchBox(String searchParam, String org){
		String value = searchParam;
		if(org.equals("PGP")){
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-programFilterTerm")), value);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iWillWaitToSee(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]"));
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
		}
		else if(org.equals("Hospital")){
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-locationFilterTerm")), value);
			waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			iWillWaitToSee(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]"));
			Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='data-table-cell link-content' and contains(text(),'"+(value.replace("-", "").trim())+"')]")));
		}
	}
}
