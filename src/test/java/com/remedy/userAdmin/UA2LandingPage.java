package com.remedy.userAdmin;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class UA2LandingPage extends BaseClass {

	public UA2LandingPage(WebDriver driver) {

		super(driver);
	}

	public void iVerifyUsersLink(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//a[contains(@href, 'https://user-admin')]")), text);
	}

	public void iSeeUsersTable() {
		isElementVisible(
				driver.findElement(By.xpath("//table[@class='ui celled sortable striped table users-table']")));
	}

	public void iSeeAccountStatusColumn() {
		isElementVisible(driver.findElement(By.xpath("//i[@class='lock large icon']")));
	}

	public void iSeeNameColumn() {
		isElementVisible(driver.findElement(By.xpath("//th[@id='lastName']")));
	}

	public void iSeeRoleColumn() {
		isElementVisible(driver.findElement(By.xpath("//th[@id='logicalRoleId']")));
	}

	public void iSeeEmailColumn() {
		isElementVisible(driver.findElement(By.xpath("//th[@id='email']")));
	}

	public void iSeeDateCreatedColumn() {
		isElementVisible(driver.findElement(By.xpath("//th[@id='insertedDate']")));
	}

	public void iSeePagination() {
		isElementVisible(driver.findElement(By.xpath("//th[@class='chevron-group']")));
	}

	public void SearchUserWithText(String text) {
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Search']")), text);
		delay();
	}
}
