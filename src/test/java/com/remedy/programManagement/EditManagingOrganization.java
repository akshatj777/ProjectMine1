package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class EditManagingOrganization extends BaseClass {

	public EditManagingOrganization(WebDriver driver) {
		super(driver);
	}
	WebDriverWait wait = new WebDriverWait(driver, 20);
	
	public void iClickFieldInSearchListOnOrganizationPage(String field) {
		clickElement(driver.findElement(By.xpath("//div[text()='"+field+"']")));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iClickOnButtonOnParticularOrganization(String button) {
		clickElement(driver.findElement(By.xpath("//button[text()='"+button+"']")));
	}
	
	public void iEditAllFieldsOFOrganization(String field1, String field2) {
		driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), field2);
	}
	
	public void iEditStateFieldForOrganization(String text) {
		delay();
		driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//div[@class='Select-value']")).click();;
		iFillInText(driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//input[@role='combobox']")), text);
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}

}
