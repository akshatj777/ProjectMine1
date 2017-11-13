package com.remedy.programManagement;

import java.util.List;
import java.util.Map;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

import cucumber.api.DataTable;



public class SearchOrganization extends BaseClass{
	WebDriverWait wait = new WebDriverWait(driver, 20);

	public SearchOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iSearchFieldOnOrganizationInSearchBox(String text) {
		if(text.contains("MONAME"))
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.orgMOName);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}
		else
		{
			iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), text);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
		}	
	}
	
	public void iSearchWithSearchListFieldOnOrganizationInSearchBox(DataTable table){
		  Map<String, String> data;
		  data=table.asMap(String.class, String.class);
		  Object[] keySet=data.keySet().toArray();
		  for(int i =0; i<data.size();i++)
		  {
		  String value = data.get((String )keySet[i]);
		 
		  if(keySet[i].equals("City")){
		      iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
		      wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  
		      List<WebElement> listItems = driver.findElements(By.cssSelector(".data-table-cell.link-content"));
		      String test = listItems.get(2).getText();
		      Assert.assertEquals(test,value);
		  }
		  else if (keySet[i].equals("PostalCode")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
			  wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  
			  List<WebElement> listItems = driver.findElements(By.cssSelector(".data-table-cell.link-content"));
			  String test = listItems.get(4).getText();
			  Assert.assertEquals(test,value);
		  }
		  else if (keySet[i].equals("Managing Organization Name")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), CreateManagingOrganization.orgMOName);
			  wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  
			  List<WebElement> listItems = driver.findElements(By.cssSelector(".data-table-cell.link-content"));
			  String test = listItems.get(1).getText();
			  Assert.assertEquals(test,value);
		  }
		  else if (keySet[i].equals("State")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
			  wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  
			  List<WebElement> listItems = driver.findElements(By.cssSelector(".data-table-cell.link-content"));
			  String test = listItems.get(3).getText();
			  Assert.assertEquals(test,value);
		  }  
		  else if (keySet[i].equals("Participant_Id")){
			  iFillInText(driver.findElement(By.cssSelector(".text-input-field-organizationFilterTerm")), value);
			  wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//div[@id='global-spinner-overlay']")));
			  
			  List<WebElement> listItems = driver.findElements(By.cssSelector(".data-table-cell.link-content"));
			  String test = listItems.get(0).getText();
			  Assert.assertEquals(test,value);
		  }
	      }
		}
	public void iVerifyFieldInSearchListOnOrganizationHomepage(String text) {
			if(text.contains("MONAME"))
				{
					iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
					isElementPresentOnPage(By.xpath("//div[text()='"+CreateManagingOrganization.orgMOName+"']"));
				}
				else
				{
					iWillWaitToSee(By.cssSelector(".data-table-cell.link-content"));
					isElementPresentOnPage(By.xpath("//div[text()='"+text+"']"));
				}
	}
	public void iVerifySearchBarOnOrganizationPage(String text) {
		iWillWaitToSee(By.cssSelector(".text-input-field-organizationFilterTerm"));
		isElementPresent(By.cssSelector(".text-input-field-organizationFilterTerm"));
	}
	
	public void iVerifytheNewMatchesMessage() {
		getTextForElement(driver.findElement(By.cssSelector(".data-table-overlay-message")));
	}
	
	public void iVerifytheCreateNewManagingOrganizationLink() {
		getTextForElement(driver.findElement(By.cssSelector(".data-table-overlay-link>a")));

	}

}
