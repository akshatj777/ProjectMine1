package com.remedy.programManagement;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;
import com.remedy.resources.DriverScript;

public class CreateManagingOrganization extends BaseClass {

	WebDriverWait wait = new WebDriverWait(driver, 20);
	DateFormat datef = new SimpleDateFormat("ddMMyy");
	Date ts = new Date();
	String timef = datef.format(ts);
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	final String time = df.format(timestamp);
	public static String orgName;
	public static String editedOrgName;
	public static String ACHName;
	public static String SNFName;
	public static String PAYORName;
	public static String PGPName;
	public static String HHAName;
	public static String editedACHName;
	public static String editedHHAName;
	public static String editedSNFName;
	public static String editedPAYORName;
	public static String editedPGPName;
	public static String CCN;
	public static String EIN;
	public static String NPI;
	public CreateManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyButtonUnderOrganizationTab(String text) {
		iWillWaitToSee(By.xpath("//button[text()='"+text+"']"));
	}
	
	public void iClickOnCreateNewOrgButtonOnProgramManagementHomepage() {
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		clickElement(driver.findElement(By.cssSelector("button[name='createNewOrg']")));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
	}
	
	public void iVerifyHeaderTextOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".row.headline"), text);
	}
	
	public void iVerifyLabelFieldsOnCreateOrganizationPage(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".input-field-caption"), text);
	}
	
	public void iVerifyLabelDropDownFieldOnCreateOrganizationPage(String text) {
		verifyTextForElement(driver.findElement(By.cssSelector(".select-field-caption.required")), text);
	}
	
	public void iClickOnButtonOnCreateOrganizationPage(String text) {
		delay();
		WebElement element = driver.findElement(By.xpath("//button[text()='Submit']"));
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
		element.click();
		delay();
		// longDelay(); 
	}
	
	public void iVerifyManadtoryFieldValidationOnCreateOrganizationPage(String text) {
		if(!text.equals(null)) {
		boolean bol = isElementPresentOnPage(By.xpath("//span[text()='"+text+"']"));
		Assert.assertTrue(bol);
		System.out.println(text);
		}

	}
	
	public void iEnterDetailsInFieldsOnCreateOrganizationPage(String text, String field) throws IOException {
		if(text.contains("MONAME")) {
		orgName= text+RandomStringUtils.randomAlphabetic(8)+"ORGName";
		writeProperty("MO_NAME", orgName);		
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), orgName);
		}
		else if (text.contains("ACH"))
		{
			ACHName = text+RandomStringUtils.randomAlphabetic(8)+"ORGName";
			System.out.println(ACHName);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), ACHName);
		}
		else if (text.contains("SNF"))
		{
			SNFName = text+RandomStringUtils.randomAlphabetic(8)+"ORGName";
			System.out.println(SNFName);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), SNFName);
		}
		else if (text.contains("PAYOR"))
		{
			PAYORName = text+RandomStringUtils.randomAlphabetic(8)+"ORGName";
			System.out.println(PAYORName);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), PAYORName);
		}
		
		else if (text.contains("PGP"))
		{
			PGPName = text+RandomStringUtils.randomAlphabetic(8)+"ORGName";
			System.out.println(PGPName);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), PGPName);
		}
		
		else if (text.contains("HHA"))
		{
			HHAName = text+RandomStringUtils.randomAlphabetic(8)+"ORGName";
			System.out.println(HHAName);
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), HHAName);
		}
		else if (text.equals(""))
		{	
		}
	    else 	
		{
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), text);	
		}
			
	}	
	
	public void iEnterCNNorNPIorEINIdOnCreateOrganizationPage(String field) {
		CCN = (int)(Math.random()*10000)+timef;
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), CCN);
	}
	
	public void iEnterEINIdOnCreateOrganizationPage(String field) {
		EIN = (int)(Math.random()*10000)+timef;
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), EIN);
	}
	
	public void iEnterNPIOnCreateOrganizationPage(String field) {
		NPI = (int)(Math.random()*10000)+timef;
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), NPI);
	}
	public void iSelectStateFromDropDownOnCreateOrganizationPage(String text) {
		iFillInText(driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//input[@role='combobox']")), text);
		delay();
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
        
		/*Select dropdownState = new Select(driver.findElement(By.name("address.stateSelection")));
        dropdownState.selectByVisibleText(text);*/
	}
	
	public void iVerifyMessageAfterSubmittingCreateOrganizationPage(String msg) {
		iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
		verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
	}
	
	public void iSearchManagingOrganizationInSearchBox(String mOrg) {
		iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), mOrg+time);
	}
	
	public void iFetchParticipantIdAssignedToOrganization() {
		try
		{
			String fetchedText = driver.findElement(By.cssSelector(".participant-id")).getText();
			String value = fetchedText.substring(fetchedText.indexOf(":")+1, fetchedText.indexOf("|"));
			value = value.trim();
			writeProperty("PARTICIPANT_ID", value);
		} catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
