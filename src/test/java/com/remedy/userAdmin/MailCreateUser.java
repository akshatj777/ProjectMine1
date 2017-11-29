package com.remedy.userAdmin;

import java.awt.AWTException;
import java.awt.RenderingHints.Key;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.remedy.baseClass.BaseClass;
import com.remedy.resources.DriverScript;

public class MailCreateUser extends BaseClass{
	
	static DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	static Date timestamp = new Date();
	static String time = df.format(timestamp);
	static String mail = "test.automatemail";
	final static String email = mail+"+"+time+"@gmail.com";

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
		delay();
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
		iWillWaitToSee(By.cssSelector("div>div>a[role=button]>span"));
		clickElement(driver.findElement(By.cssSelector("div>div>a[role=button]>span")));
		delay();
		clickElement(driver.findElement(By.cssSelector("#gb_71")));
		iWillWaitToSee(By.id("headingText"));
	}
	
	public void iEnterEmailToCreateUser(String emailName) {
		if(emailName.equalsIgnoreCase("test.automatemail"))
			{
				driver.findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(email);
			}
		else
			{
			driver.findElement(By.xpath("//input[@placeholder='Email']")).sendKeys(emailName);
			}
		
	}
	
	public void iVerifyAccountVerificationMailInInboxInMyAccount() throws InterruptedException {
		Assert.assertTrue(isElementPresentOnPage((By.xpath("//span[contains(text(),'Welcome to Remedy Connect')]"))));
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
		iWillWaitToSee(By.xpath("//a[contains(text(),'Inbox (')]"));
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
		iFillInText(driver.findElement(By.xpath("//input[@name='password']")), "Testing@1234");
	}
	
	public void iOpenNewTabAndCloseLastTab() throws AWTException, InterruptedException, IOException {
		String selectLinkOpeninNewTab = Keys.chord(Keys.CONTROL,Keys.SHIFT,"n");
	    driver.findElement(By.cssSelector("body")).sendKeys(selectLinkOpeninNewTab);
	}
}
