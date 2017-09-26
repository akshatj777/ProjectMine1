package com.remedy.userAdmin;

import com.remedy.baseClass.BaseClass;

import stepDefination.Hooks.InitialSetup;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by salam on 7/29/15.
 */
public class LoginPage extends BaseClass {

	public LoginPage(WebDriver driver) {
		super(driver);
	}

	public void iLoginAsSupperUser(String userName, String passWord) {
		iEnteruserEmail(userName);
		iEnterPassword(passWord);
		iClickLogInButton();
		InitialSetup.logger.info("User logs in with Username - " + userName + " and password - " + passWord);
	}

	public void iClickForgotPassword() {
		clickElement(driver.findElement(By.xpath("//*[text()='Forgot password?']")));
	}

	public void iEnterEmailForResetPssword(String text) {
		iFillInText(driver.findElement(By.name("email")), text);
	}

	public void iEnterNewPasswordForResetPassword(String text) {
		iFillInText(driver.findElement(By.name("password")), text);
	}

	public void iEnterPasswordToSetNewPassword(String text) {
		iFillInText(driver.findElement(By.name("password")), text);
	}

	public void iEnterConfirmPasswordForResetPassword(String text) {
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='confirm your new password']")), text);
	}

	public void iReenterNewPasswordToSetNewPassword(String text) {
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='confirm your new password']")), text);
	}

	public void iClickChangePasswordButton() {
		clickElement(driver.findElement(By.xpath("//button[@type='submit']")));
	}

	public void iClickOnChangePasswordButtonToSetNewPassword() {
		clickElement(driver.findElement(By.xpath("//button[@type='submit']")));
	}

	public void iClickChangePasswordCancleButton() {
		clickElement(driver.findElement(By.linkText("Return to Login")));
	}

	public void iVerifyChagePasswordConfirmation(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".a0-success")), text);
	}

	public void iVerifyResetPasswordText(String text) {
		verifyTextForElement(driver.findElement(By.xpath("//h1[text()='Password Reset']")), text);
	}

	public void iClickOkayButtonForResetPasswordPopupFromAccountLink() {
		clickElement(driver.findElement(By.xpath("//button[text()='Okay']")));
		delay();
	}

	public void iEnteruserEmail(String userName) {
		iFillInText(driver.findElement(By.name("email")), userName);
	}

	public void iEnterPassword(String passWord) {
		iFillInText(driver.findElement(By.name("password")), passWord);
	}

	public void iEnterPasswordFieldForLoginAfterMailVerification(String passWord) {
		iFillInText(driver.findElement(By.name("password")), passWord);
	}

	public void iClickLogInButton() {
		clickElement(driver.findElement(By.xpath("//*[contains(text(),'Log In')]")));
		delay();
	}

	public void iVerifyLogInWidget() {
		isElementVisible(driver.findElement(By.cssSelector(".auth0-lock-content")));
	}
	
	public void iLogInAsRTAUser(String userName, String passWord){
		iEnteruserEmail(userName);
		iEnterPassword(passWord);
		iClickLogInButton();
	}
	
	public void iLogInAsPTAUser(String userName, String passWord){
		iEnteruserEmail(userName);
		iEnterPassword(passWord);
		iClickLogInButton();
	}
	
	public void iShouldSeeEmailTextboxField(){
		isElementVisible(driver.findElement(By.xpath("//input[@name='email']")));
	}
	
	public void iShouldVerifyWatermarkTextAppearingUnderEmailTextboxField(){
		Assert.assertTrue(isElementVisible(driver.findElement(By.xpath("//input[@placeholder='name@domain.com']"))));
	}
	
	public void iShouldSeePasswordTextboxField(){
		isElementVisible(driver.findElement(By.xpath("//input[@name='password']")));
	}
	
	public void iShouldVerifyWatermarkTextAppearingUnderPasswordTextboxField(){
		Assert.assertTrue(isElementVisible(driver.findElement(By.xpath("//input[@placeholder='your password']"))));
	}
	
	public void iShouldSeeForgotPasswordLink(){
		isElementVisible(driver.findElement(By.cssSelector(".auth0-lock-alternative-link")));
	}
	
	public void iShouldSeeLogInButton(){
		isElementVisible(driver.findElement(By.cssSelector(".auth0-lock-submit")));
	}
	
	public void iVerifyTheValidationMessage(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".auth0-lock-error-msg>span")), text);
	}
	
	public void IRefreshThePage(){
		 driver.navigate().refresh();
	 }
	public void iEnterEmailForLogin(String userName){
		iFillInText(driver.findElement(By.name("email")), userName);
	}
	
	public void iVerifyTheErrorMessage(String text){
		verifyTextForElement(driver.findElement(By.xpath("//span[@class='animated fadeInUp']")), text);
	}
}

