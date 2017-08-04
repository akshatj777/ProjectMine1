package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class EditManagingOrganization extends BaseClass {

	public EditManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iClickFieldInSearchListOnOrganizationPage(String field) {
		clickElement(driver.findElement(By.xpath("//div[text()='"+field+"']")));
	}
	
	public void iClickOnButtonOnParticularOrganization(String button) {
		clickElement(driver.findElement(By.xpath("//button[text()='"+button+"']")));
	}
	
	public void iEditAllFieldsOFOrganization(String field1, String field2) {
		driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), field2);
	}
	
	public void iEditStateFieldForOrganization(String text) {
		clickElement(driver.findElement(By.cssSelector(".Select-clear-zone")));
		clickElement(driver.findElement(By.cssSelector(".Select-value")));
		iFillInText(driver.findElement(By.xpath("//input[@role='combobox']")), text);
		iWillWaitToSee(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption"));
		clickElement(driver.findElement(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption")));
	}

}
