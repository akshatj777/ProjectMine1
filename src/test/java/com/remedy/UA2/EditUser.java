package com.remedy.UA2;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class EditUser extends BaseClass {
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	String time = df.format(timestamp);
	String mail = "test.automatemail";
	final String email = mail+"+"+time+"@gmail.com";
	public EditUser(WebDriver driver) {

		super(driver);
	}
	
	public void iClickOnUser(String mail) {
		delay();
		if(mail.equalsIgnoreCase(mail)){
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
	}
	
	public void iClearTextBox(String name) {
		if(name.equalsIgnoreCase("First Name")){
		iWillWaitToSee(By.cssSelector("input[placeholder='First Name']"));
		driver.findElement(By.cssSelector("input[placeholder='First Name']")).clear();
		}
		else if(name.equalsIgnoreCase("Last Name")){
			iWillWaitToSee(By.cssSelector("input[placeholder='Last Name']"));
			driver.findElement(By.cssSelector("input[placeholder='Last Name']")).clear();
			}
	}
	public void iEnterPhone(String number){
		iWillWaitToSee(By.cssSelector("input[placeholder='Phone']"));
		iFillInText(driver.findElement(By.cssSelector("input[placeholder='Phone']")), number);
	}
	
	public void iVerifyFirstNameInUserPage(String field){
		
			iWillWaitToSee(By.cssSelector("span.user-name-text"));
			verifyTextForElement(driver.findElements(By.cssSelector("span.user-name-text>span")).get(0), field);
	}
	public void iVerifyLastNameInUserPage(String field){
			iWillWaitToSee(By.cssSelector("span.user-name-text"));
			verifyTextForElement(driver.findElements(By.cssSelector("span.user-name-text>span")).get(1), field);
		}
	public void iVerifyRoleInUserPage(String field){
		iWillWaitToSee(By.cssSelector(".info-row>span"));
		verifyTextForElement(driver.findElements(By.cssSelector(".info-row>span")).get(0), field);
	}
	public void iVerifyPhoneInUserPage(String field){
		iWillWaitToSee(By.cssSelector(".info-row>span"));
		verifyTextForElement(driver.findElements(By.cssSelector(".info-row>span")).get(3), field);
	}
	
	public void iVerifyThatEmailIsNonEditable(){
		iWillWaitToSee(By.xpath("//input[@placeholder='Email']"));
		//driver.findElement(By.xpath("//input[@placeholder='Email']"));
		verifyElementAttributeContainsValue(driver.findElement(By.xpath("//input[@placeholder='Email']")), "class", "ui disabled fluid input");
	}
}
