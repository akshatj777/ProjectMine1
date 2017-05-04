package com.remedy.Episode2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
		clickElement(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IverifyCARLbuttonisappearingonthepatientcardornot() {
		// TODO Auto-generated method stub
		 isElementVisible(driver.findElement(By.cssSelector("button.btn.btn-primary.btn-auto-square.ng-scope")));
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

	public void IVerifythatClickingonCompleteCARLbuttonCarlformshouldappearasatakeoverpage() {
		
		 isElementVisible(driver.findElement(By.cssSelector("div.takeover-content.container.carl.ng-scope > form")));
		
	}

	public void IVerifythatCarlformshouldappearwithWhitebarwithPatientNameLastFirstnameandxicononthepage(String lastname,String firstname) {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'"+lastname+", "+firstname+"')]")));
		isElementVisible(driver.findElement(By.cssSelector("a.valentino-icon-x.pull-right")));
	}

	public void IVerifythatCarlformshouldappearwithCancellink() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("//a[contains(text(),'Cancel')]")));
		
	}

	public void IVerifythatCarlformshouldappearwithSaveyourprogresslink() {
		// TODO Auto-generated method stub
		
		isElementVisible(driver.findElement(By.cssSelector("//a[contains(text(),'Save your progress')]")));	
		
		
	}

	public void IVerifythatCarlformshouldappearwithformlink() {
		// TODO Auto-generated method stub
		isElementVisible(driver.findElement(By.cssSelector("//a[contains(text(),'review the form')]")));	
		
	}

	public void IVerifythatCarlformshouldappearLeftnavigatordisplayingfoursections() {
		// TODO Auto-generated method stub
		
		List<String> mylist=getTextForElementfromList("span.label-content.ng-binding");
		String[] expectedvalues={"Caregiver","Independence", "Anticipated Discharge Needs","Discharge"};
		List<String> requiredcombolisttext=new ArrayList();
        requiredcombolisttext.addAll(Arrays.asList(expectedvalues));
        verifyarraylist(requiredcombolisttext,mylist);
	}
	
	
	
	
	
	
}
