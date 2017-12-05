package com.remedy.UA2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class EditUser extends BaseClass {

	public EditUser(WebDriver driver) {

		super(driver);
	}
	
	public void iClickOnAnyUser() {
		iWillWaitToSee(By.cssSelector("td.five.wide"));
		clickElement(driver.findElement(By.cssSelector("td.five.wide")));
	}
	
}
