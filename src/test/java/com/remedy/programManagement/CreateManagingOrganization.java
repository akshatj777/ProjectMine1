package com.remedy.programManagement;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
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
	public static String participant_id;
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
	
	public void iClickOnCancelButtonOnCreateOrganizationPage() {
		delay();
		WebElement element = driver.findElement(By.xpath("//button[text()='Cancel']"));
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
		element.click();
	}
	public void iVerifyOnButtonOnCreateOrganizationPage(String text) {
		delay();
		WebElement element = driver.findElement(By.xpath("//button[text()='Submit']"));
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
		element.getText();
		delay();
	}
	
	public void userNavigatedToViewPage() {
		driver.findElement(By.cssSelector(".navLink.noselect")).getText();
	}

	public void iVerifyManadtoryFieldValidationOnCreateOrganizationPage(String text) {
		if(!text.equals("")) {
		boolean bol = isElementPresentOnPage(By.xpath("//span[text()='"+text+"']"));
		Assert.assertTrue(bol);
		System.out.println(text);
		}
	}
	
	public void iVerifyFieldValidationMessageShouldNotAppearOnCreateOrganizationPage(String text) {
		if(!text.equals("")){
		boolean bol = isElementPresentOnPage(By.xpath("//span[text()='"+text+"']"));
		Assert.assertTrue(bol);
		System.out.println(text);
		}
	}
		
	public void iVerifyCreateOrganizationwithDuplicatenameerrormsg(String text) {
		if(!text.equals("")) {
		boolean bol1 = isElementPresentOnPage(By.cssSelector(".alert.alert-dismissible.alert-danger"));
		Assert.assertTrue(bol1);
		System.out.println(text);
		}
	}
	
	public void iEnterDetailsInFieldsOnCreateOrganizationPage(String text, String field) throws IOException {
		if(text.contains("MONAME")) {
		orgName= text+RandomStringUtils.randomAlphabetic(8)+"ORGName";
		writeProperty("MO_NAME", orgName);		
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), orgName);
		}
		
		else if (text.equals(""))
		{	
		}
	    else 	
		{
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), text);	
		}		
	}	

	public void iSelectStateFromDropDownOnCreateOrganizationPage(String text) {
		if(!text.equals("")){
		iFillInText(driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//input[@role='combobox']")), text);
		delay();
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
		}
		/*Select dropdownState = new Select(driver.findElement(By.name("address.stateSelection")));
        dropdownState.selectByVisibleText(text);*/
	}
	
	public void iVerifyMessageAfterSubmittingCreateOrganizationPage(String msg) {
		iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
		verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
	}
	
	public void iVerifyErrorMessageAfterSubmittingCreateOrganizationPage(String msg) {
		iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-danger>div"));
		verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-danger>div")), msg);
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

	public void iSwitchFocusToButton(String text) {
		driver.findElement(By.xpath("//button[@type='"+text+"']")).sendKeys(Keys.TAB);
	}
}
