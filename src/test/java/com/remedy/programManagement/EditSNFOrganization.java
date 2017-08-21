package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class EditSNFOrganization extends BaseClass{

	public EditSNFOrganization(WebDriver driver) {
		super(driver);
	}
	
	public void iEditAllFieldsForLocationOFSelectedOrganization(String field1,String field2,int num) {
		if(field1.equals("Location Name")){
		num = num-1;
		driver.findElements(By.xpath("//input[@placeholder='"+field1+"']")).get(num).clear();
		driver.findElements(By.xpath("//input[@placeholder='"+field1+"']")).get(num).sendKeys(field2);
	    }
		else {
			num = num-1;
			driver.findElements(By.xpath("//input[@name='locations["+num+"].address."+field1+"']")).get(num).clear();
			iFillInText(driver.findElement(By.xpath("//input[@name='locations["+num+"].address."+field1+"']")), field2);
		}
		
	}
	
	public void iEditLocationTypeForLocation(String text, int num) {
		num = num-1;
		driver.findElements(By.xpath("//div[input[@name='locations[0].locationTypeSelector']]//span[text()='×']")).get(0).click();
		driver.findElements(By.xpath("//div[text()='Location Type']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
    	delay();
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text); 
	}
	
	public void iEditRegionForLocation(String text, int num) {
		num = num-1;
	    driver.findElements(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}
	
    public void iEditMarketForLocation(String text, int num) {
	    num = num-1;
	    driver.findElements(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).get(num).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}
	
	public void iEditLocationStateForLocation(String text, int num) {
		num = num-1;
    	driver.findElement(By.xpath("//div//input[@name='locations["+num+"].address.stateSelection']/following-sibling::div//input[@role='combobox']")).sendKeys(text);
    	clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}
}
