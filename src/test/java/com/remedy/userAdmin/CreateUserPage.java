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

        clickElement(driver.findElement(By.xpath("//form/fieldset[1]/div/div[1]/div[1]/div[1]/span")));
    }


    public void selectOrganizationalRole(String desc){


        selectElementByDesc(".ui-select-choices-row-inner", desc);
    }

    public void iEnterNPI(String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset[1]/div/div[6]/input")), text);
    }

    public void iEnterFirstName(String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset[1]/div/div[3]/input")), text);
    }

    public void iEnterLasttName(String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset[1]/div/div[4]/input")), text);
    }

    public void iEnterEmail(String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset/div/div[2]/input")), text);
    }

    public void iEnterPhone( String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset/div/div[5]/input")), text);
    }

    public void iClickFacilityField(){

        clickElement(driver.findElement(By.xpath("//form/fieldset[2]/div[1]/div/div[1]/div[1]/div[1]/span")));
    }

    public void iEnterFacilitySerachText(String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset[2]/div[1]/div/div[1]/div[1]/input[1]")), text);
    }

    public void iSelectFacility (String desc){

        selectElementByDesc(".ui-select-choices-row-inner", desc);
        delay();
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

    public void iverifyCreateUserPageHeader (String header){

       verifyTextForElement(driver.findElement(By.cssSelector(".ng-scope>h2")), header );
    }

    public void iEnterProviderSerachText(String text){

        clickElement(driver.findElement(By.xpath("//form/fieldset[2]/div[1]/div/div[2]/div/div[1]/input")));
        iFillInText(driver.findElement(By.xpath("//form/fieldset[2]/div[1]/div/div[2]/div/div[1]/input")), text);
    }

    public void iCheckAllProviderForTheHealthSystem (){

        clickElement(driver.findElement(By.cssSelector(".select-all-checkbox")));
    }



}