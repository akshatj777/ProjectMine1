package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class ExceededSnfLos extends BaseClass {

	public ExceededSnfLos(WebDriver driver) {
		super(driver);
		
	}

	public void IclickonExceedSnflossubtabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Exceeded SNF LOS')]")));	
		
	}

	public void Iselectthedischargefacilityvalueonaddanewtransition(String facilityvalue) throws InterruptedException {
		JavascriptExecutor js = (JavascriptExecutor) driver;
		  WebElement element1 = driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_dischargeFacility"));
		  
		  js.executeScript("arguments[0].click();", element1);
		  clickElement(element1);
		  Thread.sleep(5000);

		  WebElement element2 = driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input"));

		  js.executeScript("arguments[0].click();", element2);
		  element2.sendKeys(facilityvalue);
		  Thread.sleep(10000);
		  WebElement element3 = driver.findElement(By.cssSelector("li.select2-highlighted"));
		  js.executeScript("arguments[0].click();", element3);
		  clickElement(element3);	
		
	}

	public void IclickontheCancelButtononAddanewtransition() {
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Cancel')]")));	
		
	}

}
