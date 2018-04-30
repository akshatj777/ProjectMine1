package com.remedy.programManagement;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

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

	public void iEditPriceFieldonEditContarctPage(String text, String field, String field1){
		if(field1.equals("Bundle1 Price1")){
			driver.findElement(By.xpath("//input[@name='contracts[0].contractBundles[0].bundlePrices[0]."+field+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@name='contracts[0].contractBundles[0].bundlePrices[0]."+field+"']")), text);
		}
		else if(field1.equals("Bundle1 Price2")){
			driver.findElement(By.xpath("//input[@name='contracts[0].contractBundles[0].bundlePrices[1]."+field+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@name='contracts[0].contractBundles[0].bundlePrices[1]."+field+"']")), text);
		}
		else if(field1.equals("Bundle2 Price1")){
			driver.findElement(By.xpath("//input[@name='contracts[0].contractBundles[1].bundlePrices[0]."+field+"']")).clear();
			iFillInText(driver.findElement(By.xpath("//input[@name='contracts[0].contractBundles[1].bundlePrices[0]."+field+"']")), text);
		}
	}
	
	public void iClickonReactDatePickerIcononEditContarctPage(String field, int index){
		List<WebElement> datepickericons= driver.findElements(By.xpath("//div//div[@class='react-datepicker-input-field-container start-date-picker ']//a[@class='react-datepicker__close-icon']"));
		scrollIntoViewByJS(datepickericons.get(index));
		datepickericons.get(index).click();
	}
}
