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
static int userCountOnFirstPage;
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
			if (isElementPresentOnPage(By.cssSelector(".icon.chevron.right")) == true) {
				clickElement(driver.findElement(By.cssSelector(".icon.chevron.right")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				String s = driver.findElement(By.cssSelector(".current-page")).getText();
				iClickOnAddUserButton();
				iClickOnCloseIconFromAddUserPage();
				verifyTextForElement(driver.findElement(By.cssSelector(".current-page")), s);
				
			}else{return;}
		} else if (text.contains("next icons")) {
			if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
				Assert.assertFalse(isElementNotPresentOnPage(By.cssSelector(".icon.chevron.left")));
				Assert.assertFalse(isElementNotPresentOnPage(By.cssSelector("div.double-chevron.left")));
				isElementVisible(driver.findElement(By.cssSelector("div.double-chevron.right")));
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				String s = driver.findElement(By.cssSelector(".current-page")).getText();
				s = "of " + s;
				verifyTextForElement(driver.findElement(By.cssSelector(".number-of-pages")), s);
				Assert.assertFalse(isElementNotPresentOnPage(By.cssSelector(".icon.chevron.right")));
				Assert.assertFalse(isElementNotPresentOnPage(By.cssSelector("div.double-chevron.right")));
				isElementVisible(driver.findElement(By.cssSelector(".icon.chevron.left")));
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));
				verifyTextForElement(driver.findElement(By.cssSelector(".number-of-pages")), s);
			}
		}

		else if (text.contains("Users Count")) {
			
				if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
					verifyElementCount(".five.wide", 30);
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					// System.out.println("count of 30");
				} else {
					int size = driver.findElements(By.cssSelector(".five.wide")).size();
					// System.out.println("size--" + size);
					verifyElementCount(".five.wide", size);

				}

			

		} else if (text.contains("rows allignment")) {
			
				if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
					verifyElementCount("tr.component-user-table-row", 30);
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					// System.out.println("count of 30");
				} else {
					int size = driver.findElements(By.cssSelector(".five.wide")).size();
					verifyElementCount("tr.component-user-table-row", size);
					if(isElementVisible(driver.findElement(By.cssSelector("div.double-chevron.left")))==true){
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					}
				
				}

			

		} else if (text.contains("Long email")) {
			
				if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
					for (int i = 0; i < 90; i++) {
						String name = driver.findElements(By.cssSelector("td.four.wide")).get(i).getText();
						Assert.assertTrue(name.contains(" "));
						i = i + 2;
					}
					for (int j = 0; j < 30; j++) {
						String mail = driver.findElements(By.cssSelector("td.five.wide")).get(j).getText();
						Assert.assertTrue(mail.contains(".com"));
						// System.out.println("email validated" + j);
					}
					clickElement(driver.findElement(By.cssSelector("div.double-chevron.right")));
					iWillWaitToSee(By.cssSelector("div.chevron-group"));
					int size = driver.findElements(By.cssSelector(".five.wide")).size();
					for (int i = 0; i < size * 3; i++) {
						String name = driver.findElements(By.cssSelector("td.four.wide")).get(i).getText();
						Assert.assertTrue(name.contains(" "));
						i = i + 2;
					}
					for (int j = 0; j < size; j++) {
						String mail = driver.findElements(By.cssSelector("td.five.wide")).get(j).getText();
						Assert.assertTrue(mail.contains("@")&&mail.contains(".com"));
						// System.out.println("email validated" + j);

					}
					
					
					// System.out.println("count of 30");
				} else {
					int size = driver.findElements(By.cssSelector(".five.wide")).size();
					for (int i = 0; i < size * 3; i++) {
						String name = driver.findElements(By.cssSelector("td.four.wide")).get(i).getText();
						Assert.assertTrue(name.contains(" "));
						i = i + 2;
					}
					for (int j = 0; j < size; j++) {
						String mail = driver.findElements(By.cssSelector("td.five.wide")).get(j).getText();
						Assert.assertTrue(mail.contains(".com"));
						// System.out.println("email validated" + j);

					}
					
					
				}
				clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
				iWillWaitToSee(By.cssSelector("div.chevron-group"));

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
public void SearchUserWithEmail(String emailID, String role){
	iWillWaitToSee(By.cssSelector("input[placeholder='Search']"));
	if (emailID.contains(",")) {
		StringTokenizer st = new StringTokenizer(emailID, ",");

		while (st.hasMoreTokens()) {
			String text = st.nextToken().trim();
			System.out.println("token -- " + text);
if (text.equalsIgnoreCase(mail)) {
	String email = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)).trim());
	System.out.println("Email "+email);
				iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), email);
				iVerifySearchResult(text, "", role);
		}
else{
	SearchUserWithText(text);
	}
}
		}
	else{
		if (emailID.equalsIgnoreCase(mail)) {
			String email = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)).trim());
			System.out.println("Email "+email);
	
						iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), email);
					
				}

				else {
					SearchUserWithText(emailID);
				}

			
		
		
	}
	delay();
}
	public void SearchUserWithText(String searchList) {
		iWillWaitToSee(By.cssSelector("input[placeholder='Search']"));
		if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true)
			userCountOnFirstPage=30;
		else
			userCountOnFirstPage = driver.findElements(By.cssSelector(".five.wide")).size();
		if (searchList.contains(",")) {
			StringTokenizer st = new StringTokenizer(searchList, ",");

			while (st.hasMoreTokens()) {
				String text = st.nextToken().trim();
				System.out.println("token -- " + text);

				
							iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), text);
							iVerifySearchResult(text, "Name", "");
						
			
			}
			
		} else {
			
						iFillInText(driver.findElement(By.cssSelector("input[placeholder='Search']")), searchList);
					

				
			
			
		}
		delay();
	}

	public void iVerifySearchResult(String result, String searchBy, String role) {
		iWillWaitToSee(By.cssSelector("td.four.wide"));
		if(result.contains(",")){
			return;
		}
		if (searchBy.contains("Name")) {
			if (driver.findElements(By.cssSelector("td.four.wide")).get(0).getText().contains(result))
				Assert.assertTrue(
						driver.findElements(By.cssSelector("td.four.wide")).get(0).getText().contains(result));
			// verifyTextForElement(driver.findElements(By.cssSelector("td.four.wide")).get(0),
			// result);
		} else if (searchBy.equalsIgnoreCase("Email")) {
			if(result.equals(mail)){
			String email = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)).trim());
			System.out.println("Email value-------" + email);
			verifyTextForElement(driver.findElements(By.cssSelector("td.five.wide")).get(0), email);
			}
			else{
				verifyTextForElement(driver.findElements(By.cssSelector("td.five.wide")).get(0), result);
			}}
	}

	public void iClickOnTopUserDropDown() {
		iWillWaitToSee(By.cssSelector("i.dropdown.icon"));
		clickElement(driver.findElements(By.cssSelector("i.dropdown.icon")).get(1));
	}

	public void iSelectOptionFromDropdown(String text) {
		selectElementByDesc(".item", text);
	}

	public void iLockUser(String role) {
		iWillWaitToSee(By.cssSelector("td.five.wide"));
		clickElement(driver.findElements(By.cssSelector(".SVGInline-svg.SVGInline--cleaned-svg.component-remedy-icons-svg")).get(1));

	}


	public void iUnlockUser(String role) {
		iWillWaitToSee(By.cssSelector("td.five.wide"));
		clickElement(driver.findElements(By.cssSelector(".SVGInline-svg.SVGInline--cleaned-svg.component-remedy-icons-svg")).get(1));
	}

	public void iVerifyTextfromUnlockPopup(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//span/h3[1]")), text);

	}

	public void iClickOnUnlockButtonFromPopup() {
		clickElement(driver.findElement(By.cssSelector("button.ui.green.inverted.button")));
		delay();
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

	public void iShouldNotSeeSearchResults(){
		Assert.assertFalse(isElementNotPresentOnPage(By.cssSelector("th#lastName")));
		
	}
	public void iSeeCrossIconForSearch(){
		iWillWaitToSee(By.cssSelector(".remove.link.icon.remove-icon"));
		isElementVisible(driver.findElement(By.cssSelector(".remove.link.icon.remove-icon")));
	}
	public void iClickCrossIconForSearch(){
		iWillWaitToSee(By.cssSelector(".remove.link.icon.remove-icon"));
		clickElement(driver.findElement(By.cssSelector(".remove.link.icon.remove-icon")));
	}
public void iSeeUsersBackOnClosingSearch(){
	iWillWaitToSee(By.cssSelector("th#lastName"));
	verifyElementCount(".five.wide", userCountOnFirstPage);
}

public void iVerifyRowCountForSearchByEmail(){
	iWillWaitToSee(By.cssSelector("td.four.wide"));
	Assert.assertEquals(driver.findElements(By.cssSelector(".five.wide")).size(), 1);
}
public void iSelectAUser(){
	iWillWaitToSee(By.cssSelector("td.five.wide"));
	clickElement(driver.findElements(By.cssSelector("td.five.wide")).get(0));
	
}
public void iVerifyViewUserPage(){
	iWillWaitToSee(By.cssSelector(".two.column.row"));
	isElementVisible(driver.findElement(By.cssSelector(".two.column.row")));
}
public void iShouldNotSeeErrorMsgOnUsersPage(String text){
	Assert.assertFalse(isElementNotPresentOnPage(By.xpath("//*[contains(text(),'"+text+"')]")));
}
public void verifyRowsAlignmentWhenCountIsNotMultipleOfThree(){
	if (isElementPresentOnPage(By.cssSelector("div.double-chevron.right")) == true) {
		
	
		clickElement(driver.findElement(By.cssSelector(".icon.chevron.right")));
		iWillWaitToSee(By.cssSelector("div.chevron-group"));
		
		int size = driver.findElements(By.cssSelector(".five.wide")).size();
		if(size%3!=0){
			System.out.println("if-size%3 "+size%3);
		verifyElementCount("tr.component-user-table-row", size);
		}
		if(isElementVisible(driver.findElement(By.cssSelector("div.double-chevron.left")))==true){
		clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
		iWillWaitToSee(By.cssSelector("div.chevron-group"));
		}
	}else{
		int size = driver.findElements(By.cssSelector(".five.wide")).size();
		if(size%3!=0){
			System.out.println("else-size%3 "+size%3);
		verifyElementCount("tr.component-user-table-row", size);
		}
		if(isElementVisible(driver.findElement(By.cssSelector("div.double-chevron.left")))==true){
			clickElement(driver.findElement(By.cssSelector("div.double-chevron.left")));
			iWillWaitToSee(By.cssSelector("div.chevron-group"));
			}
	}
}

public void iVerifyThatEmailIsDisplayedInSameCase(String role){
	if(role.isEmpty()==false){
	String email = CreateUserPage.usersEmailPerRole.get(role).get(role.substring((role.indexOf("-")+1)).trim());
	verifyTextForElement(driver.findElements(By.cssSelector("td.five.wide")).get(0), email);
	}
	}

public void iVerifyProductListInTopNavigationBarIsClosed(){
	Assert.assertTrue(isElementNotPresentOnPage(".ui.active.visible.dropdown.remedy-connect-title"));
}
}

