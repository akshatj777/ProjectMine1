package com.remedy.UA2;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class SuperUserLandingPage extends BaseClass {

	WebDriverWait wait = new WebDriverWait(driver, 30);

	public SuperUserLandingPage(WebDriver driver) {

		super(driver);
	}

	public void iVerifyUsersLink(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//a[contains(@href, 'https://user-admin')]")), text);
	}

	public void iVerifyLandingPageUI() {
		isElementVisible(driver.findElement(By.cssSelector("table.ui.celled.sortable.striped.table.users-table")));
		isElementVisible(driver.findElement(By.cssSelector("th#auth0State.center.aligned.descending.sorted")));
		isElementVisible(driver.findElement(By.cssSelector("th#lastName")));
		isElementVisible(driver.findElement(By.cssSelector("th#logicalRoleId")));
		isElementVisible(driver.findElement(By.cssSelector("th#email")));
		isElementVisible(driver.findElement(By.cssSelector("th#insertedDate")));
		isElementVisible(driver.findElement(By.cssSelector("div.chevron-group")));
	}

	public void verifyUserInformation() {
		
		do {
			int size = driver.findElements(By.xpath("//*[@class='five wide']")).size();
			System.out.println("*********size" + size);
			for (int i = 0; i < size; i++) {
				System.out.println("inside do");
				//System.out.println("************ghfkd   "+driver.findElements(By.cssSelector("td.center.aligned.one.wide")).get(i).getAttribute("lastChild"));
				
				isElementVisible(driver.findElements(By.cssSelector("td.center.aligned.one.wide")).get(i));
						
				isElementVisible(driver.findElement(By.cssSelector("td.five.wide")));
				System.out.println("email validated for "+i);
			}

			int size1 = driver.findElements(By.cssSelector("td.four.wide")).size();
			System.out.println("&&&&&&&&&&&&&Size1 " + size1);
			
			for (int n = 0; n < size1; n++) {
				isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
				n = n + 1;
				isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
				n = n + 1;
				isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
			}
			if (isElementPresentOnPage(By.cssSelector("div.chevron-group")) == true) {
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
				longDelay();
				System.out.println("next page^^^^^^^^^^^^^");
				//wait.until(ExpectedConditions.presenceOfElementLocated(By.cssSelector("table.ui.celled.sortable.striped.table.users-table")));
			}
			else
				break;
		}

		while (isElementPresentOnPage(By.cssSelector("div.chevron-group")) == true);
	}

	public void SearchUserWithText(String text) {
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Search']")), text);
		delay();
	}

	public void iVerifySearchResult(String result, String searchBy) {

		if (searchBy.equalsIgnoreCase("First Name") || searchBy.equalsIgnoreCase("Last Name")) {
			iVerifyTextFromListOfElement(By.xpath("//td[contains(@class,'four wide')]"), result);
		} else if (searchBy.equalsIgnoreCase("Role")) {
			iVerifyTextFromListOfElement(By.xpath("//td[contains(@class,'four wide')]"), result);
		} else if (searchBy.equalsIgnoreCase("email")) {
			iVerifyTextFromListOfElement(By.xpath("//td[@class='five wide']"), result);
		}
	}

	public void iClickOnTopUserDropDown() {
		delay();
		clickElement(driver.findElement(By.xpath("//i[@class='dropdown icon']")));
		longDelay();
	}

	public void iVerifyResetPasswordPopUpText(String text) {
		delay();
		verifyTextForElement(driver.findElement(By.xpath("//div[2]/div[1]/div[1]/div/p")), text);
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
		delay();
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

	public void iVerifyThatUserIsUnlocked() {
		verifyElementAttributeContainsValue(
				driver.findElements(By.xpath("//i[@class='lock large inverted icon']")).get(0), "class",
				"lock large inverted icon");
	}

	public void iVerifyThatUserIsLocked() {
		verifyElementAttributeContainsValue(driver.findElements(By.xpath("//i[@class='lock large icon']")).get(0),
				"class", "lock large icon");
	}

	public void iSortBasedOnLock() {
		clickElement(driver.findElement(By.xpath("//th[@id='auth0State']")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.xpath("//th[@id='auth0State']")), "class",
				"center aligned ascending sorted");
		delay();
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		longDelay();
	}

	public void iSortFromName() {
		delay();
		clickElement(driver.findElement(By.cssSelector("#lastName")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("#lastName")), "class",
				"ascending sorted");
		delay();
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		longDelay();
	}

	public void iSortFromRole() {
		clickElement(driver.findElement(By.cssSelector("#logicalRoleId")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("#logicalRoleId")), "class",
				"ascending sorted");
		delay();
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		longDelay();
	}

	public void iSortFromEmail() {
		clickElement(driver.findElement(By.cssSelector("#email")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("#email")), "class", "ascending sorted");
		delay();
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		longDelay();
	}

	public void iSortFromDate() {
		clickElement(driver.findElement(By.cssSelector("#insertedDate")));
		delay();
		verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("#insertedDate")), "class",
				"decending sorted");
		delay();
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		longDelay();
	}

	public void iClickOnUsersLink() {
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		longDelay();
	}

	public void iClickOnAddUserButton() {
		clickElement(driver.findElement(By.xpath("//button[@class='ui green right floated button add-user-button']")));
	}

	public void iverifyAddUserButton() {
		isElementVisible(
				driver.findElement(By.xpath("//button[@class='ui green right floated button add-user-button']")));
	}

	public void iVerifyAddUserPage() {
		isElementVisible(driver.findElement(By.xpath("//h2/span")));
	}

	public void iClickOnCloseIconFromAddUserPage() {
		clickElement(driver.findElement(By.xpath("//i[@class='close icon']")));
		delay();
	}

	public void iVerifythatIamNavigatedBackToBaseURL() {
		iWillWaitToSee(By.xpath("//*[contains(text(),'Log In')]"));
		isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'Log In')]")));
	}
}
