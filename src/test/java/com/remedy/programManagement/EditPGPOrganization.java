package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class EditPGPOrganization extends BaseClass {
	
	public EditPGPOrganization(WebDriver driver) {
		super(driver);
	}

	public void iEditRegionForSelectedOrganization(String text, String org){
		driver.findElement(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}

	public void iEditMarketForSelectedOrganization(String text, String org){
		driver.findElement(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).sendKeys(text);
	    delay();
	    clickSingleElementFromList(By.cssSelector(".VirtualizedSelectOption"),text);
	}
}
