package com.remedy.UA2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.StringTokenizer;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;
import com.remedy.userAdmin.CreateUserPage;
import com.remedy.userAdmin.MailCreateUser;

public class SuperUserLandingPage extends BaseClass {
	static String mail = "test.automatemail";
	static String email = null;

	public SuperUserLandingPage(WebDriver driver) {

		super(driver);
	}

	public void iVerifyUsersLink(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector("a[href^='https://user-admin']")), text);

	}

	public void iVerifyLandingPageUI(String text) {
		iWillWaitToSee(By.cssSelector("table.ui.celled.sortable.striped.table.users-table"));

		if (text.contains("User table"))
			isElementVisible(driver.findElement(By.cssSelector("table.ui.celled.sortable.striped.table.users-table")));
		else if (text.contains("Lock"))
			isElementVisible(driver.findElement(By.cssSelector("th#auth0State")));
		else if (text.contains("Name"))
			isElementVisible(driver.findElement(By.cssSelector("th#lastName")));
		else if (text.contains("Role"))
			isElementVisible(driver.findElement(By.cssSelector("th#logicalRoleId")));
		else if (text.contains("Email"))
			isElementVisible(driver.findElement(By.cssSelector("th#email")));
		else if (text.contains("Date"))
			isElementVisible(driver.findElement(By.cssSelector("th#insertedDate")));
		else if (text.contains("Pagination")) {
			iWillWaitToSee(By.cssSelector("div.paginator-text"));
			isElementVisible(driver.findElement(By.cssSelector("div.paginator-text")));
		}
	}

	public void verifyUserInformation(String text) {
		iWillWaitToSee(By.cssSelector("td.five.wide"));
		do {
			int size = driver.findElements(By.xpath("//*[@class='five wide']")).size();

			for (int i = 0; i < size; i++) {

				if (text.contains("Account")) {
					isElementVisible(driver.findElements(By.cssSelector("td.center.aligned.one.wide")).get(i));
					System.out.println("Account status validated for  " + i);
				}
				if (text.contains("Email")) {
					isElementVisible(driver.findElement(By.cssSelector("td.five.wide")));
					System.out.println("email validated for " + i);

				}
			}

			int size1 = driver.findElements(By.cssSelector("td.four.wide")).size();

			for (int n = 0; n < size1; n++) {
				if (text.contains("Name")) {
					isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
					System.out.println("Name validated for " + n);
				}
				n = n + 1;
				if (text.contains("Role")) {
					isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
					System.out.println("Role validated for " + (n - 1));

				}
				n = n + 1;
				if (text.contains("Date")) {
					isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
					System.out.println("Date validated for " + (n - 2));

				}
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

	public void SearchUserWithText(String searchList) {
		iWillWaitToSee(By.cssSelector("input[placeholder='Search']"));
		if (searchList.contains(",")) {
			StringTokenizer st = new StringTokenizer(searchList, ",");
			while (st.hasMoreTokens()) {
				String text = st.nextToken().trim();
				System.out.println("token -- " + text);
				if (text.equalsIgnoreCase(mail)) {
					String[] emailArray = CreateUserPage.usersEmailPerRole.toString().split("=");
					int n = emailArray.length;
					String temp1 = emailArray[n - 1];
					String[] arr = temp1.split("}}");
					email = arr[0];
					System.out.println("Email----------" + email);
					iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), email);
				} else
					iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), text);
				delay();
			}
		} else {
			if (searchList.equalsIgnoreCase(mail)) {
				String[] emailArray = CreateUserPage.usersEmailPerRole.toString().split("=");
				int n = emailArray.length;
				String temp1 = emailArray[n - 1];
				String[] arr = temp1.split("}}");
				email = arr[0];
				System.out.println("Email----------" + email);
				iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), email);
			} else
				iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), searchList);
			delay();
		}
	}

	public void iVerifySearchResult(String result, String searchBy) {
		iWillWaitToSee(By.cssSelector("td.four.wide"));
		if (searchBy.equalsIgnoreCase("First Name") || searchBy.equalsIgnoreCase("Last Name")) {
			if (driver.findElements(By.cssSelector("td.four.wide")).get(0).getText().contains(result))
				Assert.assertTrue(
						driver.findElements(By.cssSelector("td.four.wide")).get(0).getText().contains(result));
			// verifyTextForElement(driver.findElements(By.cssSelector("td.four.wide")).get(0),
			// result);
		} else if (searchBy.equalsIgnoreCase("Email")) {
			System.out.println("Email value-------" + email);
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

	public void iLockUser() {
		iWillWaitToSee(By.cssSelector("span.unlocked-icon"));

		clickElement(driver.findElements(By.cssSelector("span.unlocked-icon")).get(0));

	}

	public void iVerifyLockedUser() {
		iWillWaitToSee(By.cssSelector("span.lock-icon"));
		verifyElementAttributeContainsValue(driver.findElements(By.cssSelector("span.lock-icon")).get(0), "class",
				"lock-icon");
	}

	public void iClickOnSortByLockIcon() {
		// iWillWaitToSee(By.cssSelector("th#auth0State"));
		delay();
		clickElement(driver.findElement(By.cssSelector("th#auth0State")));
	}

	public void iClickOnUnlock() {
		iWillWaitToSee(By.cssSelector(".lock-icon"));
		clickElement(driver.findElements(By.cssSelector(".lock-icon")).get(0));
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
		isElementVisible(driver.findElements(By.cssSelector("span.unlocked-icon")).get(0));
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
		isElementVisible(driver.findElement(By.cssSelector("button.ui.green.right.floated.button.add-user-button")));
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

	public void iEnterNewUserName(String text) {
		if (text.equalsIgnoreCase(mail)) {
			iFillInText(driver.findElement(By.name("email")), email);
		}

	}
}
