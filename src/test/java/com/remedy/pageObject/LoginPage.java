package com.remedy.pageObject;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 7/29/15.
 */
public class LoginPage extends BaseClass  {

    public LoginPage(WebDriver driver){

        super(driver);
    }




    public void iLoginAsSupperUser(String userName, String passWord) {

        iEnteruserEmail(userName);
        iEnterPassword(passWord);
        iClickOnAccessButton();

    }

    public void IWillWait(){

        delay();
    }

    public void iClickForgotPassword(){

        clickElement(driver.findElement(By.cssSelector(".a0-forgot-pass.a0-btn-small")));
    }

    public void iEnterEmailForResetPssword(String text){

        iFillInText(driver.findElement(By.cssSelector("#a0-reset_easy_email")), text);
    }

    public void iEnterNewPasswordForResetPassword(String text){

        iFillInText(driver.findElement(By.cssSelector("#a0-reset_easy_password")), text);
    }

    public void iEnterConfirmPasswordForResetPassword(String text){

        iFillInText(driver.findElement(By.cssSelector("#a0-reset_easy_repeat_password")), text);

    }

    public void iClickChangePasswordButton(){

        clickElement(driver.findElement(By.cssSelector(".a0-primary.a0-next")));

    }

    public void iClickChangePasswordCancleButton(){

        clickElement(driver.findElement(By.cssSelector(".a0-centered.a0-btn-small.a0-cancel")));

    }

    public void iVerifyResetPasswordText( String text){

    verifyTextForElement(driver.findElement(By.cssSelector(".a0-header.a0-top-header>h1")), text);

    }

    public void iEnteruserEmail(String userName ){

        iFillInText(driver.findElement(By.cssSelector("#a0-signin_easy_email")), userName);


    }

    public void iEnterPassword(String passWord ){

        iFillInText(driver.findElement(By.cssSelector("#a0-signin_easy_password")),passWord);


    }


    public void iClickOnAccessButton(){

        clickElement(driver.findElement(By.cssSelector(".a0-primary.a0-next")));


    }

}

