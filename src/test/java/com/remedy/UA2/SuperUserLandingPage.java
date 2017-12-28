package com.remedy.UA2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
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
		iWillWaitToSee(By.cssSelector("div.chevron-group"));
		if (text.contains("User table"))
			isElementVisible(driver.findElement(By.cssSelector("table.ui.celled.sortable.striped.table.users-table")));
		else if (text.contains("Lock"))
			isElementVisible(driver.findElement(By.cssSelector("th#auth0State")));
		else if (text.contains("User Name"))
			isElementVisible(driver.findElement(By.cssSelector("th#lastName")));
		else if (text.contains("Role"))
			isElementVisible(driver.findElement(By.cssSelector("th#logicalRoleId")));
		else if (text.contains("User Email"))
			isElementVisible(driver.findElement(By.cssSelector("th#email")));
		else if (text.contains("Date"))
			isElementVisible(driver.findElement(By.cssSelector("th#insertedDate")));
		else if (text.contains("Pagination")) {
			iWillWaitToSee(By.cssSelector("div.paginator-text"));
			isElementVisible(driver.findElement(By.cssSelector("div.paginator-text")));
			verifyTextForElement(driver.findElement(By.cssSelector(".current-page")), "1");
			Assert.assertTrue(driver.findElement(By.cssSelector(".number-of-pages")).getText().contains("of"));
		} else if (text.contains("Pagination retention")) {
			if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
				clickElement(driver.findElement(By.cssSelector(".icon.chevron.right")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				String s = driver.findElement(By.cssSelector(".current-page")).getText();
				iClickOnAddUserButton();
				iClickOnCloseIconFromAddUserPage();
				verifyTextForElement(driver.findElement(By.cssSelector(".current-page")), s);
				clickElement(driver.findElement(By.cssSelector(".icon.chevron.left")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
			}
		} else if (text.contains("next icons")) {
			if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
				isElementNotPresentOnPage(By.cssSelector(".icon.chevron.left"));
				isElementNotPresentOnPage(By.cssSelector("div.double-chevron.left"));
				isElementVisible(driver.findElement(By.cssSelector("div.double-chevron.right")));
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				String s = driver.findElement(By.cssSelector(".current-page")).getText();
				s = "of " + s;
				verifyTextForElement(driver.findElement(By.cssSelector(".number-of-pages")), s);
				isElementNotPresentOnPage(By.cssSelector(".icon.chevron.right"));
				isElementNotPresentOnPage(By.cssSelector("div.double-chevron.right"));
				isElementVisible(driver.findElement(By.cssSelector(".icon.chevron.left")));
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				verifyTextForElement(driver.findElement(By.cssSelector(".number-of-pages")), s);
			}
		}

		else if (text.contains("Users Count")) {
			do {
				if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
					verifyElementCount(".five.wide", 30);
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					// System.out.println("count of 30");
				} else {
					int size = driver.findElements(By.cssSelector(".five.wide")).size();
					// System.out.println("size--" + size);
					verifyElementCount(".five.wide", size);
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					break;
				}

			} while (isElementPresentOnPage(By.cssSelector("div.chevron-group")) == true);

		} else if (text.contains("rows allignment")) {
			do {
				if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
					verifyElementCount("tr.component-user-table-row", 30);
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					// System.out.println("count of 30");
				} else {
					int size = driver.findElements(By.cssSelector(".five.wide")).size();
					verifyElementCount("tr.component-user-table-row", size);
					// System.out.println("size--" + size);
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					break;
				}

			} while (isElementPresentOnPage(By.cssSelector("div.chevron-group")) == true);

		} else if (text.contains("Long email")) {
			do {
				if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
					for (int i = 0; i < 90; i++) {
						String name = driver.findElements(By.cssSelector("td.four.wide")).get(i).getText();
						String[] splited = name.split(" ");
						// System.out.println(splited[0] + "&&&&&" +
						// splited[1]);
						Assert.assertEquals(splited.length, 2);
						// System.out.println("Name validated" + i);
						i = i + 2;
					}
					for (int j = 0; j < 30; j++) {
						String mail = driver.findElements(By.cssSelector("td.five.wide")).get(j).getText();
						Assert.assertTrue(mail.contains(".com"));
						// System.out.println("email validated" + j);
					}
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					// System.out.println("count of 30");
				} else {
					int size = driver.findElements(By.cssSelector(".five.wide")).size();
					for (int i = 0; i < size * 3; i++) {
						String name = driver.findElements(By.cssSelector("td.four.wide")).get(i).getText();
						String[] splited = name.split(" ");
						int n = splited.length;
						Assert.assertEquals(splited.length, 2);
						// System.out.println("Name validated" + i);
						i = i + 2;
					}
					for (int j = 0; j < size; j++) {
						String mail = driver.findElements(By.cssSelector("td.five.wide")).get(j).getText();
						Assert.assertTrue(mail.contains(".com"));
						// System.out.println("email validated" + j);

					}
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					break;
				}

			} while (isElementPresentOnPage(By.cssSelector("div.chevron-group")) == true);

		}

	}

	public void verifyUserInformation(String text) {
		iWillWaitToSee(By.cssSelector("td.five.wide"));
		do {
			int size = driver.findElements(By.cssSelector(".five.wide")).size();

			for (int i = 0; i < size; i++) {


				if (text.contains("Account")) {
					isElementVisible(driver.findElements(By.cssSelector("td.center.aligned.one.wide")).get(i));
					//System.out.println("Account status validated for  " + i);
				}
				if (text.contains("Email")) {
					isElementVisible(driver.findElement(By.cssSelector("td.five.wide")));
					//System.out.println("email validated for " + i);

				}

			}

			int size1 = driver.findElements(By.cssSelector("td.four.wide")).size();

			for (int n = 0; n < size1; n++) {
				if (text.contains("Name")) {
					isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
					//System.out.println("Name validated for " + n);
				}
				n = n + 1;
				if (text.contains("Role")) {
					isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
					//System.out.println("Role validated for " + (n - 1));

				}
				n = n + 1;
				if (text.contains("Date")) {
					isElementVisible(driver.findElements(By.cssSelector("td.four.wide")).get(n));
					//System.out.println("Date validated for " + (n - 2));

				}
			}
			if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				//System.out.println("next page^^^^^^^^^^^^^");

			} else
				break;
		}

		while (isElementPresentOnPage(By.cssSelector("div.chevron-group")) == true);
	}

	public void SearchUserWithText(String searchList, String role) {
		iWillWaitToSee(By.cssSelector("input[placeholder='Search']"));

		if (searchList.contains(",")) {
			StringTokenizer st = new StringTokenizer(searchList, ",");

			while (st.hasMoreTokens()) {
				String text = st.nextToken().trim();
				System.out.println("token -- " + text);

				if (text.equalsIgnoreCase(mail)) {
					String email = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)).trim());
					System.out.println("Email "+email);
								iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), email);
							
						} else {
							iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), text);
						}

			}
			delay();
		} else {
			if (searchList.equalsIgnoreCase(mail)) {
			
				String email = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)).trim());
				System.out.println("Email "+email);
		
							iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), email);
						
					}

					else {
						iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), searchList);
					}

				
			
			delay();
		}
	}

	public void iVerifySearchResult(String result, String searchBy, String role) {
		iWillWaitToSee(By.cssSelector("td.four.wide"));
		if (searchBy.equalsIgnoreCase("First Name") || searchBy.equalsIgnoreCase("Last Name")) {
			if (driver.findElements(By.cssSelector("td.four.wide")).get(0).getText().contains(result))
				Assert.assertTrue(
						driver.findElements(By.cssSelector("td.four.wide")).get(0).getText().contains(result));
			// verifyTextForElement(driver.findElements(By.cssSelector("td.four.wide")).get(0),
			// result);
		} else if (searchBy.equalsIgnoreCase("Email")) {
			String email = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)).trim());
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
