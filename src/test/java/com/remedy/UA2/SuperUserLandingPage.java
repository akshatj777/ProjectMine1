package com.remedy.UA2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;


import com.remedy.baseClass.BaseClass;

public class SuperUserLandingPage extends BaseClass {
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	String time = df.format(timestamp);
	String mail = "test.automatemail";
	final String email = mail+"+"+time+"@gmail.com";

	public SuperUserLandingPage(WebDriver driver) {

		super(driver);
	}

	public void iVerifyUsersLink(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector("a[href^='https://user-admin']")),text);
			
	}

	public void iVerifyLandingPageUI() {
		isElementVisible(driver.findElement(By.cssSelector("table.ui.celled.sortable.striped.table.users-table")));
		isElementVisible(driver.findElement(By.cssSelector("th#auth0State")));
		isElementVisible(driver.findElement(By.cssSelector("th#lastName")));
		isElementVisible(driver.findElement(By.cssSelector("th#logicalRoleId")));
		isElementVisible(driver.findElement(By.cssSelector("th#email")));
		isElementVisible(driver.findElement(By.cssSelector("th#insertedDate")));
		isElementVisible(driver.findElement(By.cssSelector("div.chevron-group")));
	}

	public void verifyUserInformation() {
		iWillWaitToSee(By.cssSelector("td.five.wide"));
		do {
			int size = driver.findElements(By.xpath("//*[@class='five wide']")).size();
			System.out.println("*********size" + size);
			for (int i = 0; i < size; i++) {
				System.out.println("inside do");
				isElementVisible(driver.findElements(By.cssSelector("td.center.aligned.one.wide")).get(i));
				isElementVisible(driver.findElement(By.cssSelector("td.five.wide")));
				System.out.println("email validated for " + i);
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
			if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				System.out.println("next page^^^^^^^^^^^^^");

			} else
				break;
		}

		while (isElementPresentOnPage(By.cssSelector("div.chevron-group")) == true);
	}

	public void SearchUserWithText(String text) {
		iWillWaitToSee(By.cssSelector("input[placeholder='Search']"));
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), text);
		}

	public void iVerifySearchResult(String result, String searchBy) {
		iWillWaitToSee(By.cssSelector("td.four.wide"));
		if (searchBy.equalsIgnoreCase("First Name") || searchBy.equalsIgnoreCase("Last Name")) {
			verifyTextForElement(driver.findElements(By.cssSelector("td.four.wide")).get(0), result);
		}
		else if (searchBy.equalsIgnoreCase("email")) {
			verifyTextForElement(driver.findElements(By.cssSelector("td.five.wide")).get(0), email);
				}
		}

	public void iClickOnTopUserDropDown() {
		iWillWaitToSee(By.cssSelector("i.dropdown.icon"));
		clickElement(driver.findElements(By.cssSelector("i.dropdown.icon")).get(1));
	}
	public void iSelectOptionFromDropdown(String text) {
		selectElementByDesc(".item", text);
	}

	public void iLockUser(String text) {
		iWillWaitToSee(By.cssSelector("span.unlocked-icon"));
		if(text.equalsIgnoreCase("mail")){
			System.out.println("Email---------"+email);
			 clickElement(driver.findElements(By.cssSelector("span.unlocked-icon")).get(0));
			 }
		 }
	
	public void iVerifyLockedUser() {
		iWillWaitToSee(By.cssSelector("span.lock-icon"));
			verifyElementAttributeContainsValue(driver.findElements(By.cssSelector("span.lock-icon")).get(0), "class", "lock-icon");
	}
public void iClickOnSortByLockIcon() {
	//iWillWaitToSee(By.cssSelector("th#auth0State"));
	delay();
	clickElement(driver.findElement(By.cssSelector("th#auth0State")));
}
	public void iClickOnUnlock() {
		iWillWaitToSee(By.cssSelector(".lock.large.icon"));
		clickElement(driver.findElements(By.cssSelector(".lock.large.icon")).get(1));
		}

	public void iVerifyTextfromUnlockPopup(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//span/h3[1]")), text);

	}

	public void iClickOnUnlockButtonFromPopup() {
		clickElement(driver.findElement(By.cssSelector("button.ui.green.inverted.button")));
		delay();
	}
	
	public void iVerifyUnlockedUser() {
		iWillWaitToSee(By.cssSelector("td.center.aligned.one.wide"));
			verifyElementAttributeContainsValue(driver.findElements(By.cssSelector("td.center.aligned.one.wide")).get(0), "class", "unlock-icon");
	}
	
	public void iClickOnCancelButtonFromPopup() {
		clickElement(driver.findElement(By.xpath("//div[@class='actions']/a")));
		delay();
	}

	public void iClickOnUsersLink() {
		clickElement(driver.findElement(By.xpath("//a[@href='https://user-admin-dev.remedypartners.com']")));
		longDelay();
	}

	public void iClickOnAddUserButton() {
		iWillWaitToSee(By.cssSelector("button.ui.green.right.floated.button.add-user-button"));
		clickElement(driver.findElement(By.cssSelector("button.ui.green.right.floated.button.add-user-button")));
	}

	public void iverifyAddUserButton() {
		isElementVisible(
				driver.findElement(By.cssSelector("button.ui.green.right.floated.button.add-user-button")));
						}

	public void iVerifyAddUserPage() {
		iWillWaitToSee(By.cssSelector("div.add-user-form-content"));
		isElementVisible(driver.findElement(By.cssSelector("div.add-user-form-content")));
	}

	public void iClickOnCloseIconFromAddUserPage() {
		iWillWaitToSee(By.cssSelector("i.close.icon"));
		clickElement(driver.findElement(By.cssSelector("i.close.icon")));
	}

	public void iVerifythatIamNavigatedBackToBaseURL() {
		iWillWaitToSee(By.xpath("//*[contains(text(),'Log In')]"));
		isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'Log In')]")));
	}
	public void iEnterNewUserName(String text){
		if (text.equalsIgnoreCase(mail)){
			iFillInText(driver.findElement(By.name("email")), email);	
	}
		
	}
}
