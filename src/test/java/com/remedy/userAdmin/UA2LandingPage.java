package com.remedy.userAdmin;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

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
		isElementVisible(driver.findElement(By.xpath("//div[@class='chevron-group']")));
	}

	public void SearchUserWithText(String text) {
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Search']")), text);
		delay();
	}

	public void iVerifyNameFromSearchResult(String text, String name) {
		WebElement ele=driver.findElements(By.xpath("//td[contains(@class,'four wide')]")).get(0);
		String[] NameArray=ele.getText().split("\\s+");
		String firstName= NameArray[0];
		
		String lastName=NameArray[1];
		if (isElementVisible(ele)){
			if(name.equals("First Name")) {
			Assert.assertEquals(firstName, text);
		}
			else if (name.equals("Last Name"))
			Assert.assertEquals(lastName, text);
		}
	}

	public void iVerifyRoleFromSearchResult(String text) {
		verifyTextForElement(driver.findElements(By.xpath("//td[contains(@class,'four wide')]")).get(1), text);
	}

	public void iVerifyEmailFromSearchResult(String text){
		verifyTextForElement(driver.findElement(By.xpath("//td[@class='five wide']")),text);
	}
	public void iClickOnTopUserDropDown() {
		delay();
		clickElement(driver.findElement(By.xpath("//i[@class='dropdown icon']")));
	longDelay();
	}
	
	public void iVerifyResetPasswordPopUpText(String text){
		delay();
		verifyTextForElement(driver.findElement(By.xpath("//div[2]/div[1]/div[1]/div/p")),text);
	}

	public void iSelectOptionFromDropdown(String text) {
		selectElementByDesc(".item", text);
		delay();
	}

	public void iVerifyLockedUser() {
		clickElement(driver.findElement(By.xpath("//i[@id='auth0State']")));
		delay();
		isElementVisible(driver.findElements(By.xpath("//i[@class='lock large icon']")).get(1));
	}

	public void iVerifyUnlockedUser() {
		clickElement(driver.findElement(By.xpath("//i[@id='auth0State']")));
		delay();
		isElementVisible(driver.findElement(By.xpath("//i[@class='lock large inverted icon']")));
	}

	public void iClickOnLock() {
		clickElement(driver.findElements(By.xpath("//i[@class='lock large inverted icon']")).get(0));
	}

	public void iClickOnUnlock() {
		clickElement(driver.findElement(By.xpath("//i[@id='auth0State']")));
		delay();
		clickElement(driver.findElements(By.xpath("//i[@class='lock large icon']")).get(1));
		delay();
	}

	public void iVerifyTextfromUnlockPopup(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//span/h3[1]")), text);
		
	}

	public void iClickOnUnlockButtonFromPopup() {
		clickElement(driver.findElement(By.xpath("//button[@class='ui green inverted button']")));
		delay();
	}

	public void iClickOnCancelButtonFromPopup() {
		clickElement(driver.findElement(By.xpath("//div[@class='actions']/a")));
		delay();
	}
	
	public void iVerifyThatUserIsUnlocked(){
		verifyElementAttributeContainsValue(driver.findElements(By.xpath("//i[@class='lock large inverted icon']")).get(0), "class", "lock large inverted icon");
	}
	public void iVerifyThatUserIsLocked(){
		verifyElementAttributeContainsValue(driver.findElements(By.xpath("//i[@class='lock large icon']")).get(0), "class", "lock large icon");
	}
	public void iSortBasedOnLock(){
		clickElement(driver.findElement(By.xpath("//i[@id='auth0State']")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.xpath("//i[@id='auth0State']")), "class", "lock large icon");
	}
	public void iSortFromName(){
		clickElement(driver.findElement(By.cssSelector("#lastName")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.xpath("//th[@id='lastName']")), "class", "ascending sorted");
	}
	public void iSortFromRole(){
		clickElement(driver.findElement(By.cssSelector("#logicalRoleId")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("#logicalRoleId")), "class", "ascending sorted");
	}
	public void iSortFromEmail(){
		clickElement(driver.findElement(By.cssSelector("#email")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("#email")), "class", "ascending sorted");
	}
	public void iSortFromDate(){
		clickElement(driver.findElement(By.cssSelector("#insertedDate")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("#insertedDate")), "class", "ascending sorted");
	}
	
	public void iClickOnUsersLink(){
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		delay();
	}
	public void iClickOnAddUserButton(){
		clickElement(driver.findElement(By.xpath("//button[@class='ui green right floated button add-user-button']")));
	}
	public void iverifyAddUserButton(){
		isElementVisible(driver.findElement(By.xpath("//button[@class='ui green right floated button add-user-button']")));
	}
	public void iVerifyAddUserPage(){
		isElementVisible(driver.findElement(By.xpath("//h2/span")));
	}
	public void iClickOnCloseIconFromAddUserPage(){
		clickElement(driver.findElement(By.xpath("//i[@class='close icon']")));
	}
	
}
