package com.remedy.userAdmin;


import com.remedy.baseClass.BaseClass;


import java.util.concurrent.TimeUnit;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
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
		driver.manage().timeouts().implicitlyWait(10,TimeUnit.MILLISECONDS);
		iEnteruserEmail(userName);
		iEnterPassword(passWord);
		iClickLogInButton();
		}

	public void iClickForgotPassword() {
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'remember your password')]")));
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

		iWillWaitToSee(By.xpath("//div[@class='sso-reset-password-text-container']/p[contains(text(),'"+text+"')]"));
		Assert.assertTrue(isElementPresentOnPage(By.xpath("//div[@class='sso-reset-password-text-container']/p[contains(text(),'"+text+"')]")));
	}

	public void iClickOkayButtonForResetPasswordPopupFromAccountLink() {
		iWillWaitToSee(By.cssSelector(".btn.btn-primary.hide-sso-messages"));

		WebElement element = driver.findElement(By.cssSelector(".btn.btn-primary.hide-sso-messages"));
		((JavascriptExecutor) driver).executeScript("arguments[0].click();", element);
		delay();
	}

	public void iEnteruserEmail(String userName) {

		if(userName.equals("Remedy Technical Administrator"))
		{
			iWillWaitToSee(By.name("email"));

			iFillInText(driver.findElement(By.name("email")), CreateUserPage.usersEmailPerRole.get("Super Admin-Remedy Technical Administrator").get(userName));
		}
		else if(userName.equals("Partner Technical Administrator"))
		{

			iWillWaitToSee(By.name("email"));

			iFillInText(driver.findElement(By.name("email")), CreateUserPage.usersEmailPerRole.get("Super Admin-Partner Technical Administrator").get(userName));
		}
		else if(userName.equals("Downstream Provider"))
		{

			iWillWaitToSee(By.name("email"));

			iFillInText(driver.findElement(By.name("email")), CreateUserPage.usersEmailPerRole.get("Super Admin-Downstream Provider").get(userName));
		}
		else
		{

			iWillWaitToSee(By.name("email"));

			iFillInText(driver.findElement(By.name("email")), userName);
		}
	}

	public void iEnterPassword(String passWord) {
		iWillWaitToSee(By.name("password"));
		iFillInText(driver.findElement(By.name("password")), passWord);
	}

	public void iEnterPasswordFieldForLoginAfterMailVerification(String passWord) {
		iFillInText(driver.findElement(By.name("password")), passWord);
	}

	public void iClickLogInButton() {
		iWillWaitToSee(By.xpath("//*[contains(text(),'Log In')]"));
		clickElement(driver.findElement(By.xpath("//*[contains(text(),'Log In')]")));

	}

	public void iVerifyLogInWidget() {
		iWillWaitToSee(By.cssSelector(".auth0-lock-content"));
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

	
	public void iShouldSeeTextInResetPassword(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".auth0-global-message.auth0-global-message-success")), text);
	}
	
	public void iClickSendEmailButton() {
		clickElement(driver.findElement(By.xpath("//*[contains(text(),'Send email')]")));
		delay();
	}
}


