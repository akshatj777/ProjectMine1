package com.remedy.programManagement;

import java.util.HashMap;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class CreatePGPOrganization extends BaseClass{
	public static HashMap<String, String> tempPGPOrg = new HashMap<String, String>();
	public static HashMap<String, String> pgpOrg = new HashMap<String, String>();
	public static HashMap<String, String> pgpOrg_noMO = new HashMap<String, String>();
	public static String oldPGP_WithoutMO;
	public static String oldPGP_WithMO;
	
	public CreatePGPOrganization(WebDriver driver) {
		super(driver);
	}

	public void iSelectRegionOnOrganizationPage(String text, String field){
		if(!text.isEmpty()){
    	    driver.findElement(By.xpath("//div[text()='Region']/preceding-sibling::div//input[@role='combobox']")).sendKeys(text);
    	    clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    	}
	}
	
	public void iSelectMarketOnOrganizationPage(String text, String field){
		if(!text.isEmpty()){
    	    driver.findElement(By.xpath("//div[text()='Market']/preceding-sibling::div//input[@role='combobox']")).sendKeys(text);;
    	    clickElement(driver.findElement(By.xpath("//div[(contains(@class,'VirtualizedSelectOption')) and text()='"+text+"']")));
    	}
	}
}