package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class CompleteCarlform extends BaseClass {

	public CompleteCarlform(WebDriver driver) {
        super(driver);
    }

	public void IverifyCARLbuttonsappearsonthepatientsummary() {
		// TODO Auto-generated method stub
		JavascriptExecutor js = ((JavascriptExecutor) driver);
	     WebElement element = driver.findElement(By.xpath("//button[contains(text(),'Complete CARL')]"));
	     js.executeScript("arguments[0].click();", element);
		 isElementVisible(element);
	}

	public void IclosethepatientsummaryPage() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("body > div.modal-open > div > div > div > div.row.page-nav.ng-scope > div > a")));
	}

	public void IverifyCARLbuttonisappearingonthepatientcardornot() {
		// TODO Auto-generated method stub
		 isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-primary.btn-auto-square.ng-scope")));
	}

	public void IverifytheblankstatusonCARLDocumentontheClinicalDocumentstabinthepatientsummaryPage() {
		// TODO Auto-generated method stub
		
	}

	public void Iselectonthebuttontodeletethetransition() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("a.btn.btn-default.dropdown-toggle")));
		
	}

	public void Iclickonthebuttontodeletethetransition() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'Delete')]")));

		
	}

	public void IclickonOktodeletethetransition() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'OK')]")));
	}
	

	
	
	
	
}
