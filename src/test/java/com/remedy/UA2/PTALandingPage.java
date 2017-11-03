package com.remedy.UA2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class PTALandingPage extends BaseClass {

	public PTALandingPage(WebDriver driver) {

	super(driver);
}
	public void iVerifyUsersPresentAsPerPermission(String role){
		verifyTextForElement(driver.findElements(By.xpath("//td[contains(@class,'four wide')]")).get(1), role);
	}
	
	public void iVerifyUsersNotPresentAsPerPermission(String role){
		verifyTextNotPresentForElementFromList("//td[contains(@class,'four wide')]", role);
	}
}
