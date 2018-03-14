package com.remedy.programManagement;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class CreateBundlePaymentContracts extends BaseClass{

	public CreateBundlePaymentContracts(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyContractsFieldOnCreateContractsPageUnderPayorOrganiztion(String text){
		verifyTextForElement(driver.findElement(By.cssSelector(".input-field-caption")), text);
	}
	
	public void iVerifyDateFieldsOnCreateContractsPage(String text, String action){
		if(text.contains("Start Date"))
		{
			verifyTextForElement(driver.findElement(By.cssSelector(".required.react-datepicker-field-caption")), text);
		}
		else
		{
			verifyTextForElement(driver.findElement(By.cssSelector(".undefined.react-datepicker-field-caption")), text);
		}
	}
	
//	public void iEnterContractIDOnCreateContractsPage(String text, int num, String action){
//		iFillInText(obj, text);
//	}

}
