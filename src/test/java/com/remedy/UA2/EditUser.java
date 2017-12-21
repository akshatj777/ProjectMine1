package com.remedy.UA2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class EditUser extends BaseClass {
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	String time = df.format(timestamp);
	String mail = "test.automatemail";
	final String email = mail + "+" + time + "@gmail.com";

	public EditUser(WebDriver driver) {

		super(driver);
	}

	public void iClickOnUser(String mail) {
		delay();
		if (mail.equalsIgnoreCase(mail)) {
			iWillWaitToSee(By.cssSelector("td.five.wide"));
			clickElement(driver.findElements(By.cssSelector("td.five.wide")).get(0));
		}
	}

	public void iverifyuserpage() {
		iWillWaitToSee(By.cssSelector(".two.column.row"));
		isElementVisible(driver.findElement(By.cssSelector(".two.column.row")));

	}

	public void iClickOnEditButton() {
		iWillWaitToSee(By.cssSelector(".edit-controls"));
		clickElement(driver.findElement(By.cssSelector(".edit-controls")));
		iWillWaitToSee(By.cssSelector(".ui.primary.button"));
	}

	public void iClearTextBox(String name) {
		if (name.equalsIgnoreCase("First Name")) {
			iWillWaitToSee(By.cssSelector("input[placeholder='First Name']"));
			driver.findElement(By.cssSelector("input[placeholder='First Name']")).clear();
		} else if (name.equalsIgnoreCase("Last Name")) {
			iWillWaitToSee(By.cssSelector("input[placeholder='Last Name']"));
			driver.findElement(By.cssSelector("input[placeholder='Last Name']")).clear();
		} else if (name.equalsIgnoreCase("Phone")) {
			iWillWaitToSee(By.cssSelector("input[placeholder='Phone']"));
			driver.findElement(By.cssSelector("input[placeholder='Phone']")).clear();
		}
	}

	public void iEnterPhone(String number) {
		iWillWaitToSee(By.cssSelector("input[placeholder='Phone']"));
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Phone']")), number);
	}

	public void iVerifyFirstNameInUserPage(String field) {

		iWillWaitToSee(By.cssSelector("span.user-name-text"));
		Assert.assertTrue(
				driver.findElements(By.cssSelector("span.user-name-text>span")).get(1).getText().contains(field));
		// verifyTextForElement(driver.findElements(By.cssSelector("span.user-name-text>span")).get(1),
		// field);
	}

	public void iVerifyLastNameInUserPage(String field) {
		iWillWaitToSee(By.cssSelector("span.user-name-text"));
		Assert.assertTrue(
				driver.findElements(By.cssSelector("span.user-name-text>span")).get(0).getText().contains(field));
		// verifyTextForElement(driver.findElements(By.cssSelector("span.user-name-text>span")).get(0),
		// field);
	}

	public void iVerifyRoleInUserPage(String field) {
		String text = "Role:" + " " + field;
		iWillWaitToSee(By.cssSelector(".info-row>span"));
		verifyTextForElement(driver.findElement(By.xpath("//*[contains(text(), 'Role')]")), text);

	}

	public void iVerifyPhoneInUserPage(String num) {
		String text = "Phone:" + " " + num;
		iWillWaitToSee(By.cssSelector(".info-row>span"));
		// System.out.println("text: "+text);
		// System.out.println("phone:
		// "+driver.findElement(By.xpath("//*[contains(text(),
		// 'Phone')]")).getText());
		verifyTextForElement(driver.findElement(By.xpath("//*[contains(text(), 'Phone')]")), text);
	}

	public void iVerifyThatEmailIsNonEditable() {
		iWillWaitToSee(By.xpath("//input[@placeholder='Email']"));
		// driver.findElement(By.xpath("//input[@placeholder='Email']"));
		Assert.assertFalse(driver.findElement(By.cssSelector("input[placeholder='Email']")).isEnabled());

	}

	public void iClickOnRoleFieldToEdit() {
		iWillWaitToSee(By.cssSelector(".ui.fluid.selection.dropdown"));
		clickElement(driver.findElement(By.cssSelector(".ui.fluid.selection.dropdown")));
	}

	public void iClickOnTab(String text) {
		iWillWaitToSee(By.xpath("//a[contains(text(),'" + text + "')]"));
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'" + text + "')]")));
	}

	public void iVerifyThatApplicationsAreEditable(String app, String text) {
		delay();
		if (text.equalsIgnoreCase("Disabled")) {
			if (app.contains(",")) {
				String[] application = app.split(",\\s+");

				for (int i = 0; i < application.length; i++) {

					verifyTextForElementFromListByXpath("//*[contains(text(),'Disabled')]/preceding-sibling::td",application[i]);

				}
			} else {

				verifyTextForElementFromListByXpath(
						"//*[contains(text(),'Disabled')]/preceding-sibling::td", app);

			}
		} else if (text.equalsIgnoreCase("Enabled")) {
			if (app.contains(",")) {
				String[] application = app.split(",\\s+");

				for (int i = 0; i < application.length; i++) {

					verifyTextForElementFromListByXpath("//*[contains(text(),'Enabled')]/preceding-sibling::td",
							application[i]);

				}
			} else {

				verifyTextForElementFromListByXpath(
						"//*[contains(text(),'Enabled')]/preceding-sibling::td", app);

			}
		}
	}

	public void iClickOnDeleteOrganisation() {
		iWillWaitToSee(By.cssSelector(".remove.link.icon"));
		clickElement(driver.findElement(By.cssSelector(".remove.link.icon")));
	}
	public void iClickOnExisitingOrganisation() {
		iWillWaitToSee(By.cssSelector(".component-participant-title"));
		clickElement(driver.findElement(By.cssSelector(".component-participant-title")));
	}
	public void iVerifyDataPermission(String arg){
		delay();
		if (arg.contains(",")) {
			String[] org = arg.split(",\\s+");

			for (int i = 0; i < org.length; i++) {
				isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+org[i]+"')]")));
			}
	}
		else{
			isElementVisible(driver.findElement(By.xpath("//*[contains(text(),'"+arg+"')]")));
		}
	}
	   public void clickAllLocationsButton(String arg) throws Throwable {
		   
		   if(arg.equals("Second")){
			   System.out.println("Secondffgfd");
			  delay();
		   clickElement(driver.findElements(By.xpath("//label[.='All Locations']")).get(1)); 
		   } 
		   else if(arg.equals("Third")){
			   delay();
			   clickElement(driver.findElements(By.xpath("//label[.='All Locations']")).get(2)); } 
	   
	   else{
		   iWillWaitToSee(By.xpath("//label[.='All Locations']"));
		   clickElement(driver.findElement(By.xpath("//label[.='All Locations']"))); }
	}
}
