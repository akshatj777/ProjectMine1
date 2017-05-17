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
    
    public void iTurnOffShareFile(){
    	clickElement(driver.findElement(By.xpath("//span[text()='Share File']/following-sibling::div//span[text()='Off']")));
    }
   
    public void iClickPayerField(){
    	clickElement(driver.findElement(By.xpath("//div[@placeholder='Select']/span")));
    }

    public void selectOrganizationalRole(String desc){
       selectElementByDesc(".ui-select-choices-row-inner", desc);
    }
    
    public void selectPayerFromData(String desc){
      selectElementByDesc(".ui-select-choices-row-inner", desc);
    }

    public void iEnterNPI(String text){
    	 if ("".equals(text)){
    		 return;
    	}
    	else{

        iFillInText(driver.findElement(By.xpath("//form/fieldset[1]/div/div[6]/input")), text);
    
    	}
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
    
    public void iEnterEmailForLoginAfterPasswordMailVerification(String text){
    	iFillInText(driver.findElement(By.xpath("//input[@type='email']")), iGenerateEmail(text));
    }
    
    public void iEnterPasswordFieldForLoginAfterPasswordVerification(String Password){
    	iFillInText(driver.findElement(By.name("password")), Password);
    }
    
    public void iEnterPhone( String text){
        iFillInText(driver.findElement(By.xpath("//form/fieldset/div/div[5]/input")), text);
    }
    
    public void iEnterTheEmailToGeneratePassword(String text){
    	iFillInText(driver.findElement(By.xpath("//input[@type='email']")), iGenerateEmail(text));
    }
    
    public void iClickOnSendEmailButton(){
    	clickElement(driver.findElement(By.xpath("//button[@type='submit']")));
    }
    
    public void iClickOnTheEmailReceivedToChangeYourPassword(){
    	clickElement(driver.findElement(By.xpath("//div[contains(text(),' Remedy QA')]")));
    }
    
    public void iClickOnChangeMyPasswordLink(){
    	driver.switchTo().frame(driver.findElement(By.xpath("//*[@id='publicshowmaildivcontent']")));
    	clickElement(driver.findElement(By.xpath("//a[contains(text(),'Change my password')]")));
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
    
    public void iShouldSeeDifferentTilesForDifferentUserRole(String role){
    	isElementVisible(driver.findElement(By.cssSelector(".title>p")));
    }
    
    public void iClickOnECTwoTileUnderSpecificUserLoginPage(String text) throws InterruptedException{
    	clickElement(driver.findElement(By.xpath("//div[@class='title']/p[text()='"+text+"']")));
    	Thread.sleep(6000);
    	isElementVisible(driver.findElement(By.cssSelector(".page-title.row")));
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
    
    public void iVerifyTheDropdownListForUser(){
    	isElementVisible(driver.findElement(By.cssSelector(".align-right>ul")));
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

   public void iClickOnContinueToDashboardMessage(){
	   clickElement(driver.findElement(By.xpath("//button[text()='Continue to my dashboard']")));
   }
  

}