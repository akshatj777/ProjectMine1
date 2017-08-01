package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class CreateManagingOrganization extends BaseClass {

	public CreateManagingOrganization(WebDriver driver) {
		super(driver);
	}
	WebDriverWait wait = new WebDriverWait(driver, 20);
	
	public void iClickOnCreateNewOrgButtonOnProgramManagementHomepage() {
		 wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		 clickElement(driver.findElement(By.cssSelector("button[name='createNewOrg']")));
	}
	
	public void iVerifyHeaderTextOnCreateOrganizationForm(String text) {
		System.out.println(driver.findElement(By.cssSelector(".row.headline")).getText());
		verifyTextForElement(driver.findElement(By.cssSelector(".row.headline")), text);
	}

}
