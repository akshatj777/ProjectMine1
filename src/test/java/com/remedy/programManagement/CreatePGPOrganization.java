package com.remedy.programManagement;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.remedy.baseClass.BaseClass;

public class CreatePGPOrganization extends BaseClass {

	public CreatePGPOrganization(WebDriver driver) {
		super(driver);
	}
	
	WebDriverWait wait = new WebDriverWait(driver, 20);
	DateFormat df = new SimpleDateFormat("ddMMyyHHmmss");
	Date timestamp = new Date();
	final String time = df.format(timestamp);
	static String orgName;
	
    public void iEnterORGNameOnCreatePGPOrganizationPage(String text, String field) {
    	orgName= text+time+"ORGName";
    	System.out.println(orgName);
    	iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field+"']")), orgName);
    }
}
