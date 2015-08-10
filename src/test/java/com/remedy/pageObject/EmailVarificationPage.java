package com.remedy.pageObject;

import com.remedy.baseClass.BaseClass;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by salam on 8/6/15.
 */
public class EmailVarificationPage extends BaseClass {

    public EmailVarificationPage(WebDriver driver){

        super(driver);
    }



    public void iEnterVerificationEmai(String email){

     iFillInText(driver.findElement(By.cssSelector("#login")), email);
    }



    public void iClickCheckInBoxButton(){

        clickElement(driver.findElement(By.cssSelector(".sbut")));
    }

    public void switcToFrame(String element){

        swithToFrame(element);


    }

    public void SelectNewEmail(){

        driver.findElement(By.cssSelector(".lms"));
    }

    public void clickConfirmAccountLink(){

        clickElement(driver.findElement(By.xpath("//*[@id='mailmillieu']//td/p[3]/a")));

    }

    public void deleteAllEmails(String desc) {

        clickElement(driver.findElement(By.cssSelector(".igif.lmenudelall")));
        selectElementByDesc("#delmenu>ul>li", desc);

    }

    public void iswitchtoLogInPage() {

        switchToNewWindow();
    }



    public void iswitchBacktoEmailPage() {

        switchBacktoOldWindow();
    }





}
