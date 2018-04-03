package com.remedy.programManagement;

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
		clickElement(driver.findElement(By.cssSelector(".program-contract-selector .Select-placeholder")));
		delay();
		clickElement(driver.findElement(By.cssSelector(".ReactVirtualized__Grid__innerScrollContainer")));
		longDelay();
	}
	
	public void iVerifytextAfterSelectingProgramFromDropdownOnPhysicianRosterPage(String text){
		isElementPresentOnPage(By.cssSelector("."+text+""));
	}
}
