package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by aparlapalli on 1/18/17.
 */
public class AuthoPO extends BaseClass {

    public AuthoPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }


    @FindBy(name="email")
    WebElement inputEmail;

    @FindBy(name="password")
    WebElement inputPassword;

    @FindBy(css = ".auth0-lock-submit")
    WebElement loginButton;

    public void AuthO(String email, String passwd) {

        inputEmail.sendKeys(email);
        inputPassword.sendKeys(passwd);
        loginButton.click();
    }

}
