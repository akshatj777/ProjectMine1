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
	
	public void iClickandSearchWithInvalidNameonDropdownBox(String text){
		if(text.equalsIgnoreCase("InvalidSearchOrganizationName"))
		{
			driver.findElement(By.xpath("//div[text()='Search Name or CCN']/parent::span/following-sibling::span[@class='Select-arrow-zone']")).click();
			longDelay();
			driver.findElement(By.xpath("//div[text()='Search Name or CCN']/following-sibling::div/input")).sendKeys(text);
			longDelay();
		}
		else if(text.equalsIgnoreCase("InvalidSearchBundle"))
		{
			delay();
			scrollIntoViewByJS(driver.findElement(By.xpath("//div[text()='Select a Bundle']/parent::span/following-sibling::span[@class='Select-arrow-zone']")));
			driver.findElement(By.xpath("//div[text()='Select a Bundle']/parent::span/following-sibling::span[@class='Select-arrow-zone']")).click();
			delay();
			iWillWaitToSee(By.xpath("//div[text()='Select a Bundle']/following-sibling::div/input"));
			driver.findElement(By.xpath("//div[text()='Select a Bundle']/following-sibling::div/input")).sendKeys(text);
			longDelay();
		}
	}

//	public void iEnterPriceDetailsInCreateContractPage(String text, String field, String field1){
//		if(field1.equals("")){
//			iFillInText(obj, text);
//		}
//	}
}
