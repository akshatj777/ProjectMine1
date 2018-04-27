package com.remedy.programManagement;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class EditBundlePaymentContract extends BaseClass {

	public EditBundlePaymentContract(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyPriceFieldisEditable(String text){
		isElementEnabled(driver.findElement(By.xpath("//input[@placeholder='"+text+"']")));
	}
	
	public void iVerifyDropdownBoxisnotEditable(String text){
		isElementEnabled(driver.findElement(By.xpath("//span[text()='"+text+"']")));
	}
	
	public void iVerifyContractIdFieldisnotEditable(String text){
		Assert.assertEquals("true",driver.findElement(By.xpath("//input[@class='text-input-field-contracts[0].contractId']")).getAttribute("disabled"));
	}

}
