package com.remedy.programManagement;

import junit.framework.Assert;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PhysicianRoster extends BaseClass{

	public PhysicianRoster(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyPGPOrganizationNameOnPhysicianRosterPage(String text, String page){
		isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.moOrg.get("MONAME")+"'"));
	}
	
	public void iVerifyProgramDropdownOnPhysicianRosterPage(String text,String page){
		isElementPresentOnPage(By.xpath("//div[contains(text(),'"+text+"')]"));
		longDelay();
	}
	
	public void iVerifyTextOnPhysicianRosterPage(String text,String page){
		isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
	}
	
	public void iVerifyPractionerDropdownOnCreatePhysicianRosterPage(String text,String page){
		isElementPresentOnPage(By.cssSelector(".Select."+text+"-selector"));
	}
	
	public void iVerifyButtonOnPhysicianRosterPage(String text,String page){
		isElementPresentOnPage(By.xpath("//button[text()='"+text+"']"));
	}
	
	public void iVerifyOnButtonOnCreatePhysicianosterPage(String text) {
		WebElement element = driver.findElement(By.xpath("//button[text()='"+text+"']"));
		scrollIntoViewByJS(element);
		isElementPresent(By.xpath("//button[text()='"+text+"']"));
	}
	
	public void iSelectProgramInProgramDropDownOnPhysicianRosterPage(String page){
		clickElement(driver.findElement(By.xpath("//*[@id='react-select-2--value']/div[1]")));
		delay();
		clickElement(driver.findElement(By.cssSelector(".ReactVirtualized__Grid__innerScrollContainer")));
		longDelay();
	}
	
	public void iVerifytextAfterSelectingProgramFromDropdownOnPhysicianRosterPage(String text){
		isElementPresentOnPage(By.cssSelector("."+text+""));
		delay();
	}
	
	public void iSelectaPhysicianonCreatePhysicianRosterPage(String text, String act){
		driver.findElement(By.xpath("//div[text()='Select...']")).click();
		longDelay();
		driver.findElement(By.xpath("//div[text()='Select...']")).sendKeys(text);
		longDelay();
		clickElement(driver.findElement(By.cssSelector(".practitioner-field.npi")));
		delay();
	}
	
	public void iClickOnAddPhysicianButton(String text, String act){
		clickElement(driver.findElement(By.xpath("//button[text()='"+text+"']")));
	}
	
	public void iVerifyDetailsAfterAddingPhysicianFromDropdownonCreatePhysicianRosterPage(String text){
		iWillWaitToSee(By.xpath("//div[text()='"+text+"']"));
		verifyTextForElement(driver.findElement(By.xpath("//div[text()='"+text+"']")), text);
	}
	
	public void iVerifyDateAfterAddingPhysicianFromDropdownonCreatePhysicianRosterPage(String text){
		verifyTextForElement(driver.findElement(By.xpath("//label[text()='"+text+"']")), text);
	}
	
	public void iSearchWithSearchListOptionsOnSelectAPhysicianDropdownBox(String searchParam){
		String value = searchParam;
		driver.findElement(By.xpath("//div[text()='Select...']")).click();
		delay();
		driver.findElement(By.xpath("//div[text()='Select...']")).sendKeys(value);
		delay();
		Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[text()='"+value+"']")));
	}
	
	public void iVerifyTheErrorMessageForInvalidSearchInSelectaPhysicianDropdownBox(String text)
	{
		iWillWaitToSee(By.cssSelector(".Select-noresults"));
		Assert.assertEquals(text, driver.findElement(By.cssSelector(".Select-noresults")).getText());
	}
}
