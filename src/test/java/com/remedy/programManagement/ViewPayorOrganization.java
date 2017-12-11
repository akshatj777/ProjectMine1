package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class ViewPayorOrganization extends BaseClass {

	public ViewPayorOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyProgramsTabOnViewProfileOfPayorOrganization(String tab) {
		iVerifyTextFromListOfElement(By.cssSelector(".navLink.noselect.activeNavLink"), tab);	
	}
	
	public void iVerifyContractsTabOnViewProfileOfPayorOrganization(String tab) {
		iVerifyTextFromListOfElement(By.cssSelector(".navLink.noselect"), tab);	
	}
	
	public void iVerifybuttonOnViewProfileOfPayorOrganization(String text) {
		iWillWaitToSee(By.xpath("//button[text()='"+text+"']"));
		iVerifyTextFromListOfElement(By.xpath("//button[text()='"+text+"']"), text);
	}
	
	public void iClickOnTabOnViewProfileOfPayorOrganization(String tab) {
		clickElement(driver.findElement(By.xpath("//a[text()='Contracts']")));
	}
}
