package com.remedy.UA2;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PTALandingPage extends BaseClass {

	public PTALandingPage(WebDriver driver) {

	super(driver);
}
	public void iVerifyUsersPresentAsPerPermission(String role){
		iVerifyTextFromListOfElement(By.xpath("//td[contains(@class,'four wide')]"),role);
		
	}
	
	public void iVerifyUsersNotPresentAsPerPermission(String role){
		verifyTextNotPresentForElementFromList("//td[contains(@class,'four wide')]", role);
	}
}
