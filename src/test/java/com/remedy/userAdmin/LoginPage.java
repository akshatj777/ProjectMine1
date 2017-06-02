package com.remedy.userAdmin;

import com.remedy.baseClass.BaseClass;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

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
		clickElement(driver.findElement(By.cssSelector("button.btn.btn-primary")));
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
}

