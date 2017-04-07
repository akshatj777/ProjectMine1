package com.remedy.userAdmin;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.remedy.baseClass.BaseClass;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by salam on 7/30/15.
 */
public class CreateUserPage extends BaseClass{


	public final static DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	public final static Date timestamp = new Date();
	public final static String time = df.format(timestamp);

		
    public CreateUserPage(WebDriver driver){

        super(driver);
    }

    public void iClickOrganizationalField(){

        clickElement(driver.findElement(By.xpath("//form/fieldset[1]/div/div[1]/div[1]/div[1]/span")));
    }
    
    public void iClickPayerField(){
    	clickElement(driver.findElement(By.xpath("//div[@placeholder='Select']/span")));
    }


    public void selectOrganizationalRole(String desc){


        selectElementByDesc(".ui-select-choices-row-inner", desc);
    }
    
    public void selectPayerFromData(String desc){

    	//JavascriptExecutor js = ((JavascriptExecutor) driver);
    	//WebElement element = driver.findElement(By.cssSelector(".ui-select-match.ng-scope.btn-default-focus"));  
    	//js.executeScript("arguments[0].scrollIntoView(true);", element);
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

    
    
    public final static String iGenerateEmail(String text){

    	final String mail=text+time;
    	final String email="user"+mail+"@mailinator.com";
		return email;
	   	    
    }
    
    
    
    public void iEnterEmail(String text){
    	
    	iFillInText(driver.findElement(By.xpath("//form/fieldset/div/div[2]/input")), iGenerateEmail(text));
    }
    
    public void iEnterPhone( String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset/div/div[5]/input")), text);
    }

    public void iClickHealthSystemField(){

        clickElement(driver.findElement(By.xpath("//form/fieldset[2]/div[3]/div/div[1]/div[1]/div[1]/span")));
    }

    public void iEnterHealthSystemSerachText(String text){

        iFillInText(driver.findElement(By.xpath("//form/fieldset[2]/div[3]/div/div[1]/div[1]/input[1]")), text);
    }

    public void iSelectHealthSystem(String desc){

        selectElementByDesc(".ui-select-choices-row-inner", desc);

    }

    public void iClickCreateButton (){

        clickElement(driver.findElement(By.cssSelector(".btn.btn-primary")));
    }

    public void iVerifyOrganizationalRoleRequiredMessageText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[1]/div[2]/span/span")), text);
    }

    public void iVerifyFirstNameRequiredText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[3]/div/span/span")), text);
    }

    public void iVerifyLastNameRequiredText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[4]/div/span/span")), text);
    }

    public void iVerifyEmailRequiredText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[2]/div/span/span")), text);
    }

    public void iVerifyPhoneValidationMessageText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset/div/div[5]/div/span/span")), text);
    }

    public void iVerifyNPIValidationMessageText(String text){

        verifyTextForElement(driver.findElement(By.xpath("//form/fieldset[1]/div/div[6]/div/span/span")), text);
    }


    public void iClickTryAgainButton (){

        clickElement(driver.findElement(By.cssSelector(".btn.btn-secondary")));
    }

    public void iverifyCreateUserPageHeader (String header){

       verifyTextForElement(driver.findElement(By.cssSelector(".ng-scope>h2")), header );
    }

    public void iEnterProviderSerachText(String text){

        clickElement(driver.findElement(By.xpath("//div[@class='table-select-search']//input")));
        iFillInText(driver.findElement(By.xpath("//div[@class='table-select-search']//input")), text);
    }

    public void iCheckAllProviderForTheHealthSystem (){

        clickElement(driver.findElement(By.cssSelector(".checkbox")));
    }

    public void iclickAllAppsfortheRole (){

       clickAllElementofAlistbyXpath("//div/label/span[2]");
    }


  

}