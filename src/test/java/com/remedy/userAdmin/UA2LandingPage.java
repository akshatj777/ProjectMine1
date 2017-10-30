package com.remedy.userAdmin;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class UA2LandingPage extends BaseClass {

	public UA2LandingPage(WebDriver driver) {

		super(driver);
	}

	public void iVerifyUsersLink(String text) {
		verifyTextForElement(driver.findElements(By.xpath("//a[contains(@href, 'https://user-admin')]")).get(0), text);
	}

	public void iSeeUsersTable() {
		isElementVisible(
				driver.findElements(By.xpath("//table[@class='ui celled sortable striped table users-table']")).get(0));
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

	public void iVerifySearchResult(String text) {
		driver.findElement(By.xpath("//td[contains(text(),'" + text + "')]"));
	}

	public void iVerifyFirstNameFromSearchResult(String text) {
		verifyTextForElement(driver.findElements(By.xpath("//td[contains(@class,'four wide')]")).get(0), text);
	}

	public void iVerifyRoleFromSearchResult(String text) {
		verifyTextForElement(driver.findElements(By.xpath("//td[contains(@class,'four wide')]")).get(1), text);
	}

	public void iClickOnTopUserDropDown() {
		delay();
		clickElement(driver.findElement(By.xpath("//i[@class='dropdown icon']")));
	}

	public void iSelectOptionFromDropdown(String text) {
		selectElementByDesc(".item", text);
	}
	public void iVerifyLockedUser(){
		clickElement(driver.findElements(By.xpath("//i[@id='auth0State']")).get(0));
		delay();
		isElementVisible( driver.findElements(By.xpath("//i[@class='lock large icon']")).get(1));	
	}
	public void iVerifyUnlockedUser(){
		isElementVisible( driver.findElements(By.xpath("//i[@class='lock large inverted icon']")).get(0));	
	}
	public void iClickOnLock(){
		clickElement(driver.findElements(By.xpath("//i[@class='lock large inverted icon']")).get(0));
	}
	public void iClickOnUnlock(){
		clickElement(driver.findElements(By.xpath("//i[@id='auth0State']")).get(0));
		delay();
		clickElement( driver.findElements(By.xpath("//i[@class='lock large icon']")).get(1));
	}
	
	public void iSeeAlertonUnlock(String text){
	swithToFrame(text);
	verifyTextForElement(driver.findElement(By.xpath("//h3[contains(text(),'"+text+"')]]")), text);
	}
}
