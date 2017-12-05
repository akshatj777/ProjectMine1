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
		clickElement(driver.findElements(By.cssSelector("td.five.wide")).get(0));
		
	}
	public void iverifyuserpage() {
		iWillWaitToSee(By.cssSelector(".two.column.row"));
		isElementVisible(driver.findElement(By.cssSelector(".two.column.row")));
		
	}
	public void iClickOnEditButton() {
		iWillWaitToSee(By.cssSelector(".edit-controls"));
		clickElement(driver.findElement(By.cssSelector(".edit-controls")));
		
	}
}
