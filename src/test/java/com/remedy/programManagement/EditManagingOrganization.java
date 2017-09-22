package com.remedy.programManagement;

import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;
import com.remedy.resources.DriverScript;
import com.sun.mail.imap.protocol.FetchResponse;

public class EditManagingOrganization extends BaseClass {

	public EditManagingOrganization(WebDriver driver) {
		super(driver);
	}
	WebDriverWait wait = new WebDriverWait(driver, 20);
	
	public void iClickFieldInSearchListOnOrganizationPage(String field) {
		if(field.contains("MONAME"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreateManagingOrganization.orgName+"']")));
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else if(field.contains("ACH"))
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+CreateManagingOrganization.ACHName+"']")));
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{
			clickElement(driver.findElement(By.xpath("//div[text()='"+field+"']")));
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));

		}
	}
	
	public void iClickOnButtonOnParticularOrganization(String button) throws IOException {
		
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
		
	
		
		clickElement(driver.findElement(By.xpath("//button[text()='"+button+"']")));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		/*if(driver.findElement(By.cssSelector(".participant-id")).isDisplayed())
		{
		String fetchedText = driver.findElement(By.cssSelector(".participant-id")).getText();
		String value = fetchedText.substring(fetchedText.indexOf(":")+1, fetchedText.indexOf("|"));
		value = value.trim();
		writeProperty("PARTICIPANT_ID", value);
		}
		clickElement(driver.findElement(By.xpath("//button[text()='"+button+"']")));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));*/

	}
	
	public void iEditAllFieldsOFOrganization(String field1, String field2) {
		driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")).clear();
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), field2);
	}
	
	public void iEditStateFieldForOrganization(String text) {
		delay();
		driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//div[@class='Select-value']")).click();;
		iFillInText(driver.findElement(By.xpath("//div[text()='State']/preceding-sibling::div//input[@role='combobox']")), text);
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}

}
