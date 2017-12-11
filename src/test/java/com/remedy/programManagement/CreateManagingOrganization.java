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
	public static String moName;
	public CreateManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyButtonUnderOrganizationTab(String text) {
		iWillWaitToSee(By.xpath("//button[text()='"+text+"']"));
	}
	
	public void iClickOnCreateNewOrgButton() {
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		clickElement(driver.findElement(By.cssSelector("button[name='createNewOrg']")));
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iVerifyHeaderTextOnCreateOrganizationPage(String text) {
		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		iVerifyTextFromListOfElement(By.cssSelector(".row.headline"), text);
	}
	
	public void iVerifyLabelFieldsOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".input-field-caption"), text);
	}
	
	public void iVerifyRadioButtonLabelOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".radio-button-text"), text);
	}
	
	public void iClickOnButtonOnCreateOrganizationPage(String text) {
		WebElement element = driver.findElement(By.xpath("//button[text()='"+text+"']"));
		scrollIntoViewByJS(element);
		delay();
		clickElement(element);
		delay();
	}

	public void iVerifyOnButtonOnCreateOrganizationPage(String text) {
		WebElement element = driver.findElement(By.xpath("//button[text()='"+text+"']"));
		scrollIntoViewByJS(element);
		isElementPresent(By.xpath("//button[text()='"+text+"']"));
	}
	
	public void userNavigatedToViewPage(String org) {
		driver.findElement(By.cssSelector(".navLink.noselect")).getText();
	}

	public void iVerifyManadtoryFieldValidationOnCreateOrganizationPage(String text) {
		if(!text.equals(""))
		{
			delay();
			iVerifyTextFromListOfElement(By.cssSelector(".error-message>span"), text);
		}
	}
	
	public void iVerifyCreateOrganizationwithDuplicatenameerrormsg(String text) {
		if(!text.equals(""))
		{
			Assert.assertTrue(isElementPresentOnPage(By.cssSelector(".alert.alert-dismissible.alert-danger")));
		}
	}
	
	public void iEnterDetailsInFieldsOnCreateOrganizationPage(String text, String field) throws IOException {
		if(text.equals("MONAME")) 
		{
			tempMoOrg.put("MONAME",createRandomName(text));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), tempMoOrg.get("MONAME"));
		}
		else if(text.equals("DUPLICATE_MO"))
		{
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), moOrg.get("MONAME"));
		}
		else if(text.equals("ACHNAME")) {
			CreateACHOrganization.tempAchOrg.put("ACHNAME", createRandomName(text));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreateACHOrganization.tempAchOrg.get("ACHNAME"));
		}
		else if(text.equals("DUPLICATE_ACH"))
		{
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreateACHOrganization.achOrg.get("ACHNAME"));
		}
		else if(text.equals("PGPNAME")) {
			CreatePGPOrganization.tempPGPOrg.put("PGPNAME", createRandomName(text));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreatePGPOrganization.tempPGPOrg.get("PGPNAME"));
		}
		else if(text.equals("DUPLICATE_PGP"))
		{
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreatePGPOrganization.pgpOrg.get("PGPNAME"));
		}
		else if(text.equals("PAYORNAME")) 
		{
			CreatePayorOrganization.tempPayorOrg.put("PAYORNAME", createRandomName(text));
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreatePayorOrganization.tempPayorOrg.get("PAYORNAME"));
		}
		else if(text.equals("DUPLICATE_PAYORNAME"))
		{
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CreatePayorOrganization.payorOrg.get("PAYORNAME"));
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
				
		if(driver.findElements(By.cssSelector(".alert.alert-dismissible.alert-success>a")).size() > 0)	
		{
				if(org.equals("MO"))
				{
					verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
					moOrg.clear();
					moOrg.putAll(tempMoOrg);
					waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				}
				else if(org.equals("ACH - YES"))
				{
					iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
					verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
					
					if(!CreateACHOrganization.tempAchOrg.isEmpty())
						{
							CreateACHOrganization.achOrg.putAll(CreateACHOrganization.tempAchOrg);
							CreateACHOrganization.tempAchOrg.clear();
						}
					waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				}
				else if(org.equals("ACH - NO"))
				{
					iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
					verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
					
					if(!CreateACHOrganization.tempAchOrg.isEmpty())
					{
						CreateACHOrganization.achOrg_noMO.putAll(CreateACHOrganization.tempAchOrg);
						CreateACHOrganization.tempAchOrg.clear();
					}
					waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				}
				else if(org.equals("PGP - YES"))
				{
					iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
					verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
					if(!CreatePGPOrganization.tempPGPOrg.isEmpty())
						{
						CreatePGPOrganization.pgpOrg.putAll(CreatePGPOrganization.tempPGPOrg);
						CreatePGPOrganization.tempPGPOrg.clear();
						}
					waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				}
				else if(org.equals("PGP - NO"))
				{
					iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
					verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
					if(!CreatePGPOrganization.tempPGPOrg.isEmpty())
					{
						CreatePGPOrganization.pgpOrg_noMO.putAll(CreatePGPOrganization.tempPGPOrg);
						CreatePGPOrganization.tempPGPOrg.clear();
					}
					waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
					}
				else if(org.equals("Payor"))
				{
					iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
					verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
					if(!CreatePayorOrganization.tempPayorOrg.isEmpty())
					{
						CreatePayorOrganization.payorOrg.putAll(CreatePayorOrganization.tempPayorOrg);
						CreatePayorOrganization.tempPayorOrg.clear();
					}
					waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
				}
			}
	    	else 
	    	{
	    		iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-danger>div"));
	    		verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-danger>div")), msg);
	    		waitTo().until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	    	}
				
	}
	
	public void iSwitchFocusToButton(String text) {
		driver.findElement(By.xpath("//button[@type='"+text+"']")).sendKeys(Keys.TAB);
		delay();
	}
}
