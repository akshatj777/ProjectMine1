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

		clickElement(driver.findElement(By.cssSelector("a.forgot-password")));
	}

	public void iEnterEmailForResetPssword(String text) {

		iFillInText(driver.findElement(By.name("email")), text);
	}

	public void iEnterNewPasswordForResetPassword(String text) {

		iFillInText(driver.findElement(By.name("password")), text);
	}

	public void iEnterConfirmPasswordForResetPassword(String text) {

		iFillInText(driver.findElement(By.name("confirmPassword")), text);

	}

	public void iClickChangePasswordButton() {

		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Change Password')]")));

	}

	public void iClickChangePasswordCancleButton() {

		clickElement(driver.findElement(By.linkText("Return to Login")));

	}

	public void iVerifyChagePasswordConfirmation(String text) {

		verifyTextForElement(driver.findElement(By.cssSelector(".a0-success")), text);
	}

	public void iVerifyResetPasswordText(String text) {

		verifyTextForElement(driver.findElement(By.cssSelector("h1.page-auth-title.divider-horz")), text);
	}

	public void iEnteruserEmail(String userName) {

		iFillInText(driver.findElement(By.cssSelector(".login-form>input:nth-child(1)")), userName);

	}

	public void iEnterPassword(String passWord) {

		iFillInText(driver.findElement(By.name("password")), passWord);
	}

	public void iClickLogInButton() {

		clickElement(driver.findElement(By.xpath("//*[contains(text(),'Log In')]")));
		delay();

	}

	public void iVerifyLogInWidget() {

		isElementVisible(driver.findElement(By.cssSelector(".login-form")));
	}
	
	
}
