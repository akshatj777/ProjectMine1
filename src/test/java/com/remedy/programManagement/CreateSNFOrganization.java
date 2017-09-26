package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import com.remedy.baseClass.BaseClass;

public class CreateSNFOrganization extends BaseClass {

	public CreateSNFOrganization(WebDriver driver) {
		super(driver);		
	}

	public void iSelectManagingOrgNameInHasAManagingOrganizationDropDownInSNFOrg(String text) {
		clickElement(driver.findElement(By.xpath("//div[@class='radio-button-']/following-sibling::div//div[@class='Select-input']")));
		delay();
		iFillInText(driver.findElement(By.xpath("//div[@class='radio-button-']/following-sibling::div//input[@role='combobox']")), text);
        clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption.VirtualizedSelectFocusedOption"),text);
	}
	

    public void iVerifyLocationOnSNFOrganizationPage(String text) {
    	iVerifyTextFromListOfElement(By.cssSelector(".col-md-11.location-indcator"), text);
	}
    
    public void iEnterLocationNameForLocationOnSNFOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].locationName']")), text);
    }
    
    public void iEnterAddress1ForLocationOnSNFOrg(String add1, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.address1']")), add1);
    }
    
    public void iEnterLocationTypeForLocationOnSNFOrg(String text, int num) {
    	num = num-1;
    	driver.findElements(By.xpath("//div[text()='Location Type']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
    	delay();
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
    }	
    
    public void iEnterAddress2ForLocationOnSNFOrg(String add2, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.address2']")), add2);
    }
    
    
    public void iEnterRegionForLocationOnSNFOrg(String text, int num) {
	    num = num-1;
	    driver.findElements(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);    
    }
    
    public void iEnterCityForLocationOnSNFOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.city']")), text);
    }
    
    public void iEnterMarketForLocationOnSNFOrg(String text, int num) {
	    num = num-1;
	    driver.findElements(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);  
    }
    
    public void iEnterStateForLocationOnSNFOrg(String text, int num) {
    	num = num-1;
    	driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//input[@role='combobox']")).sendKeys(text);
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
    }
    
    public void iEnterZipForLocationOnSNFOrg(String text, int num) {
    	num = num-1;
    	iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address.postalCode']")), text);
    }
    
}
