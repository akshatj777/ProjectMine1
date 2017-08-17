package com.remedy.programManagement;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.jboss.netty.channel.socket.ClientSocketChannelFactory;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class CreateManagingOrganization extends BaseClass {

	public CreateManagingOrganization(WebDriver driver) {
		super(driver);
	}
	
	WebDriverWait wait = new WebDriverWait(driver, 20);
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	final String time = df.format(timestamp);
	static String orgName;
	
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
		WebElement element = driver.findElement(By.xpath("//button[text()='"+text+"']"));
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", element);
		element.click();
		delay();
	}
	
	public void iVerifyManadtoryFieldValidationOnCreateOrganizationPage(String text) {
		boolean bol = isElementPresentOnPage(By.xpath("//span[text()='"+text+"']"));
		Assert.assertTrue(bol);
		System.out.println(text);
	}
	
	public void iEnterDetailsInFieldsOnCreateOrganizationPage(String text, String field) {
		if(field.contains("Organization Name")) {
		orgName= text+time+"ORGName";
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), text+time);
		}
		else {
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), text);
		}
	}	
	
	public void iSelectStateFromDropDownOnCreateOrganizationPage(String text) {
		//driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//div[@class='Select-value']")).click();;
		iFillInText(driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//input[@role='combobox']")), text);
		delay();
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}
	
	public void iVerifyMessageAfterSubmittingCreateOrganizationPage(String msg) {
		iWillWaitToSee(By.cssSelector(".alert.alert-dismissible.alert-success>a"));
		System.out.println(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")).getText());
		verifyTextForElement(driver.findElement(By.cssSelector(".alert.alert-dismissible.alert-success>a")), msg);
	}
	
	public void iSearchManagingOrganizationInSearchBox(String mOrg) {
		iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), mOrg+time);
	}

}
