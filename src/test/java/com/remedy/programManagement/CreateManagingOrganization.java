package com.remedy.programManagement;

import java.io.IOException;
import java.util.HashMap;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.baseClass.BaseClass;

public class CreateManagingOrganization extends BaseClass {
	public static HashMap<String, String> tempMoOrg = new HashMap<String, String>();
	public static HashMap<String, String> moOrg = new HashMap<String, String>();
    
	public CreateManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyButtonUnderOrganizationTab(String text) {
		iWillWaitToSee(By.xpath("//button[text()='"+text+"']"));
	}
	
	public void iClickOnCreateNewOrgButtonOnProgramManagementHomepage() {
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		clickElement(driver.findElement(By.cssSelector("button[name='createNewOrg']")));
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iVerifyHeaderTextOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".row.headline"), text);
	}
	
	public void iVerifyLabelFieldsOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".input-field-caption"), text);
	}
	
	public void iVerifyRadioButtonLabelOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".radio-button-text"), text);
	}
	
	public void iVerifyLabelDropDownFieldOnCreateOrganizationPage(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".select-field-caption.required")), text);
	}
	
	public void iClickOnButtonOnCreateOrganizationPage(String text) {
		WebElement element = driver.findElement(By.xpath("//button[text()='"+text+"']"));
		scrollIntoViewByJS(element);
		delay();
		clickElement(element);
	}

	public void iVerifyOnButtonOnCreateOrganizationPage(String text) {
		WebElement element = driver.findElement(By.xpath("//button[text()='"+text+"']"));
		scrollIntoViewByJS(element);
		isElementPresent(By.xpath("//button[text()='"+text+"']"));
	}
	
	public void userNavigatedToViewPage() {
		driver.findElement(By.cssSelector(".navLink.noselect")).getText();
	}

	public void iVerifyManadtoryFieldValidationOnCreateOrganizationPage(String text) {
		if(!text.equals("")) {
		iVerifyTextFromListOfElement(By.cssSelector(".error-message>span"), text);
		}
	}
	
	public void iVerifyCreateOrganizationwithDuplicatenameerrormsg(String text) {
		if(!text.equals("")) {
		Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".alert.alert-dismissible.alert-danger")));
		}
	}
	
	public void iEnterDetailsInFieldsOnCreateOrganizationPage(String text, String field) throws IOException {
		if(text.contains("MONAME")) {
			tempMoOrg.put("MONAME",createRandomName(text));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempMoOrg.get("MONAME"));
		}
		else if(text.contains("DUPLICATE_MO"))
		{
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), moOrg.get("MONAME"));
		}
		else if(text.contains("ACHNAME")) {
			CreateACHOrganization.tempAchOrg.put("ACHNAME", createRandomName(text));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreateACHOrganization.tempAchOrg.get("ACHNAME"));
		}
		else if(text.contains("DUPLICATE_ACH"))
		{
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreateACHOrganization.achOrg.get("ACHNAME"));
		}
		else 	
		{
	    	iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), text);	
		}		
	}

	public void iSelectStateFromDropDownOnCreateOrganizationPage(String text) {
		if(!text.equals("")){
		iFillInText(driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//input[@role='combobox']")), text);
		waitTo().until(ExpectedConditions.visibilityOfElementLocated(By.cssSelector(".VirtualizedSelectOption")));
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
		}
	}
	
	public void iVerifyMessageAfterSubmittingCreateOrganizationPage(String msg, String org) {
		if (msg.contains("Success!")){
			if(org.contains("MO")){
				iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
				verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
				moOrg = tempMoOrg;
			}
			else if(org.contains("ACH")){
				iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
				verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
				CreateACHOrganization.achOrg = CreateACHOrganization.tempAchOrg;
			}
	    }
	    else {
	    	iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-danger>div"));
			verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-danger>div")), msg);
	    }
	}
	
	public void iSwitchFocusToButton(String text) {
		driver.findElement(By.xpath("//button[@type='"+text+"']")).sendKeys(Keys.TAB);
		delay();
	}
}
