package com.remedy.userAdmin;

import java.awt.AWTException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;

import com.remedy.baseClass.BaseClass;

public class MailCreateUser extends BaseClass{
	
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	String time = df.format(timestamp);
	String mail = "test.automatemail";
	final String email = mail+"+"+time+"@gmail.com";

	public MailCreateUser(WebDriver driver) {
		super(driver);
	}
	
	public void iAmOnMailLoginPage() throws InterruptedException {
        driver.navigate().to("https://accounts.google.com");
	}
	
	public void iEnterUserNameToLoginMailAccount(String username) {
		driver.findElement(By.xpath("//input[@type='email']")).sendKeys(username);
		clickElement(driver.findElement(By.xpath("//span[text()='Next']")));
		delay();
	}
	
	public void iEnterPasswordToLoginMailAccount(String password) {	
		iWillWaitToSee(By.xpath("//input[@type='password']"));
		driver.findElement(By.xpath("//input[@type='password']")).sendKeys(password);
		clickElement(driver.findElement(By.xpath("//span[text()='Next']")));
	}
	
	public void iClickOnMailIconOnMyAccount() {	
		iWillWaitToSee(By.xpath("//a[@aria-label='Mail']"));
		clickElement(driver.findElement(By.xpath("//a[@aria-label='Mail']")));
	}
	
	public void iClickOnInboxUnderMail() {
		iWillWaitToSee(By.xpath("//a[contains(text(),'Inbox')]"));
		delay();
		for(int i=0;i<5;i++){
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'Inbox')]")));
		}
	}
	
	public void iClickOnSelectAllCheckBoxInMail() {
		clickElement(driver.findElement(By.xpath("//div[@class='T-Jo-auh' and @role='presentation']")));
	}
	
	public void iClickOnDeleteIconInMail() {
		boolean value = driver.findElement(By.xpath("//div[@aria-label='Delete']")).isDisplayed();
		if(value == true)
		{
			clickElement(driver.findElement(By.xpath("//div[@aria-label='Delete']")));
			//iWillWaitToSee(By.cssSelector(".bofITb"));
			//System.out.println(driver.findElement(By.cssSelector(".bofITb")).getText());
		}
	}
	
	public void iSignOutFromMailAccount() {
		delay();
		iWillWaitToSee(By.cssSelector(".gb_8a.gbii"));
		clickElement(driver.findElement(By.cssSelector(".gb_8a.gbii")));
		delay();
		clickElement(driver.findElement(By.cssSelector("#gb_71")));
		iWillWaitToSee(By.id("headingText"));
	}
	
	public void iEnterEmailToCreateUser() {
		driver.findElement(By.xpath("//input[@name='email']")).sendKeys(email);
	}
	
	public void iVerifyAccountVerificationMailInInboxInMyAccount() throws InterruptedException {
		Assert.assertTrue(isElementPresentOnPage((By.xpath("//b[contains(text(),'Remedy Partners - Verify your account')]"))));
	}
	
	public void iClickOnAccountVerificationMailInInboxInMyAccount() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Welcome to Remedy Connect')]")));
	}
	
	public void iVerifyLinkInMailContentInInboxInMyAccount(String text) {
		iWillWaitToSee(By.xpath("//a[contains(text(),'"+text+"')]"));
		Assert.assertTrue(isElementPresentOnPage((By.xpath("//a[contains(text(),'"+text+"')]"))));
	}
	
	public void iClickOnLinkInMailContentInInboxInMyAccount(String text) {
		iWillWaitToSee(By.xpath("//a[contains(text(),'"+text+"')]"));
		clickElement(driver.findElement((By.xpath("//a[contains(text(),'"+text+"')]"))));
	}
	
	public void iEnterEmailToGeneratePasswordLink() {
		iWillWaitToSee(By.xpath("//input[@name='email']"));
		driver.findElement(By.xpath("//input[@name='email']")).sendKeys(email);
	}
	
	public void iClickOnSendEmailButton() {
		iWillWaitToSee(By.xpath("//button[@type='submit']"));
		clickElement(driver.findElement(By.xpath("//button[@type='submit']")));
	}
	
	public void i_Verify_The_Unread_Mail_In_Inbox_In_My_Account(){
		iWillWaitToSee(By.xpath("//a[contains(text(),'Inbox (1)')]"));
	}
	
	public void iVerifyChangePasswordMailinInboxInMyAccount() {
		iWillWaitToSee(By.xpath("//span[contains(text(),'Remedy Partners - Change Your Password We recently received a request to create')]"));
    	Assert.assertTrue(isElementPresentOnPage((By.xpath("//span[contains(text(),'Remedy Partners - Change Your Password We recently received a request to create')]"))));
	}
	
	public void iClickOnChangePasswordMailInInboxInMyAccount() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Remedy Partners - Change Your Password')]")));
	}
	
	public void iEnterNewPasswordToSetNewPassword(String text) {
		iWillWaitToSee(By.name("password"));
		iFillInText(driver.findElement(By.name("password")), text);
	}
	
	public void iEnterConfirmNewPasswordToSetNewPassword(String text) {
		iWillWaitToSee(By.xpath("//input[@placeholder='confirm your new password']"));
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='confirm your new password']")), text);
	}
	
	public void iEnterNewUserEmailForLoginToRemedy() {
		iWillWaitToSee(By.xpath("//input[@name='email']"));
		iFillInText(driver.findElement(By.xpath("//input[@name='email']")), email);
	}
	
	public void iEnterNewPasswordForLoginToRemedy() {
		iFillInText(driver.findElement(By.xpath("//input[@name='password']")), "Testing1");
	}
	
	public void iOpenNewTabAndCloseLastTab() throws AWTException {
		String selectLinkOpeninNewTab = Keys.chord(Keys.CONTROL,Keys.SHIFT,"n"); 
		driver.findElement(By.cssSelector("body")).sendKeys(selectLinkOpeninNewTab);
	}
}
