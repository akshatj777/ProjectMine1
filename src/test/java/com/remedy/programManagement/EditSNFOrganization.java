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
			driver.findElements(By.xpath("//input[@placeholder='"+field1+"']")).get(num).clear();
			iFillInText(driver.findElement(By.xpath("//input[@placeholder='"+field1+"']")), field2);
		}
		
	}
}
