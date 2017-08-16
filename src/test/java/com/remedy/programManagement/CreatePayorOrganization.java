package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class CreatePayorOrganization extends BaseClass{

	public CreatePayorOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyFieldTabsUnderSelectedOrganizationDashboard(String field) {
		iWillWaitToSee(By.cssSelector(".data-table-header-cell>a"));
		iVerifyTextFromListOfElement(By.cssSelector(".data-table-header-cell>a"), field);
	}

}
