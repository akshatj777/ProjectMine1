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

    public void deleteAllEmails() {

        clickElement(driver.findElement(By.cssSelector(".igif.lmenudelall")));
        clickElement(driver.findElement(By.xpath("//*[@id='delmenu']/ul/li[3]/a")));
        //selectElementByDesc("#delmenu>ul>li", desc);

    }



    public void iClickCheckForNewMail (){

        clickElement(driver.findElement(By.xpath("//*[@id='lrefr']/span/span")));
    }


    public void iClickOnConfirmPasswordLink(){

        clickElement(driver.findElement(By.xpath("//*[@id='mailmillieu']/div[2]//tr/td/p[2]/strong/a")));
    }

}
