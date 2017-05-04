package com.remedy.Episode2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Assert;
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
		//JavascriptExecutor js = ((JavascriptExecutor) driver);
	     WebElement element = driver.findElement(By.cssSelector(".btn.btn-primary.ng-binding.ng-scope"));
	   //  js.executeScript("arguments[0].click();", element);
	     delay();
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
	
	public void IHoverOn_i_IconOnTakeOverPage(String icon){
		moveToTheElement(driver.findElement(By.xpath("//i[contains(@uib-tooltip,'"+icon+"')]")));
		delay();
	}
	
	public void IVerifyTheTextHoverOnCaregiver(){
		String HoverOnCaregiverText = "Identify all caregivers physically and mentally able to provide required support to the patient in a home setting. Caregiver(s) do not necessarily need to reside in the home, but ADL support and treatment needs must be met.";
		WebElement item = driver.findElement(By.xpath("//i[contains(@uib-tooltip,'Caregiver')]"));
        try {
            Assert.assertEquals(item.getAttribute("uib-tooltip"),HoverOnCaregiverText);
        } catch (Exception e) {

        }
	}
	
	public void IClickOnAnticpatedDischargeNeeds(String text){
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'"+text+"')]")));
	}
	
	public void IVerifyTheTextHoverOnPatientsRestorationPotential(){
		String HoverOnPatientsRestorationText = "Restoration potential is defined as the extent to which a patient's condition will improve materially in a reasonable and generally predictable period of time";
		WebElement item = driver.findElement(By.xpath("//i[contains(@uib-tooltip,'Restoration potential')]"));
        try {
            Assert.assertEquals(item.getAttribute("uib-tooltip"),HoverOnPatientsRestorationText);
        } catch (Exception e) {

        }
	}
	
	
}
