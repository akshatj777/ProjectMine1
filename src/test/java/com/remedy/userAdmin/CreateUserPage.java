package com.remedy.userAdmin;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 7/30/15.
 */
public class CreateUserPage extends BaseClass{

    public CreateUserPage(WebDriver driver){

        super(driver);
    }

    public void iClickOrganizationalField(){

        clickElement(driver.findElement(By.xpath("//div[1]/div/div[1]/div/div/div/span")));
    }

    public void iEnterSearchTextForOrganizationalRole(String text){

        iFillInText(driver.findElement(By.xpath("//div[1]/div/div[1]/div/div/input[1]")), text);
    }


    public void selectOrganizationalRole(String desc){


        selectElementByDesc(".ui-select-choices-row", desc);
    }

    public void iEnterNPI(String text){

        iFillInText(driver.findElement(By.xpath("//div[2]/div[1]/rp-input/div/input")), text);
    }

    public void iEnterFirstName(String text){

        iFillInText(driver.findElement(By.xpath("//div[2]/rp-input/div/input")), text);
    }

    public void iEnterLasttName(String text){

        iFillInText(driver.findElement(By.xpath("//div[3]/rp-input/div/input")), text);
    }

    public void iEnterEmail(String text){

        iFillInText(driver.findElement(By.xpath("//div[4]/rp-input/div/input")), text);
    }

    public void iEnterPhone( String text){

        iFillInText(driver.findElement(By.xpath("//div[3]/div/rp-input/div/input")), text);
    }

    public void iClickFacilityField(){

        clickElement(driver.findElement(By.xpath("//div[3]/div/div/div/span")));
    }

    public void iEnterFacilitySerachText(String text){

        iFillInText(driver.findElement(By.xpath("//div[3]/div/div/input[1]")), text);
    }

    public void iSelectFacility (String desc){


        selectElementByDesc(".ui-select-choices-row-inner", desc);
    }

    public void iClickCreateButton (){

        clickElement(driver.findElement(By.cssSelector(".btn.btn-primary")));
    }

    public void iVerifyOrganizationalRoleRequiredMessageText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//div[1]/div/div/div[2]")), text);
    }

    public void iVerifyFirstNameRequiredText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//div[2]/rp-input/div/div[2]")), text);
    }

    public void iVerifyLastNameRequiredText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//div[3]/rp-input/div/div[2]")), text);
    }

    public void iVerifyEmailRequiredText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//div[4]/rp-input/div/div[2]")), text);
    }

    public void iVerifyPhoneValidationMessageText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//div[3]/div/rp-input/div/div[2]")), text);
    }

    public void iClickTryAgainButton (){

        clickElement(driver.findElement(By.cssSelector(".btn.btn-secondary")));
    }

}