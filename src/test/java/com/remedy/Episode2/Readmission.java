package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class Readmission extends BaseClass {

	public Readmission(WebDriver driver) {
        super(driver);
	}


	public void IclickontheTransitionssubtabonthePatientSummaryPage() {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Transitions')]")));
	}
	
      public void Iselectthecaresettingvalueonaddanewtransition(String caresetting) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory",caresetting);
	}

	public void Iselectthecaretypevalueonaddanewtransition(String caretypevalue) {
		

		  selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType",caretypevalue);
	}

	public void Iselectthefacilityvalueonaddanewtransition(String facilityvalue) throws InterruptedException {
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		  WebElement element1 = driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"));

		  js.executeScript("arguments[0].click();", element1);
		  clickElement(element1);
		  Thread.sleep(5000);

		  WebElement element2 = driver.findElement(By.cssSelector("#s2id_autogen9_search"));

		  js.executeScript("arguments[0].click();", element2);
		  element2.sendKeys(facilityvalue);
		  Thread.sleep(10000);
		  WebElement element3 = driver.findElement(By.cssSelector("li.select2-highlighted"));
		  js.executeScript("arguments[0].click();", element3);
		  clickElement(element3);		
	}



	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition(String DRGtype) {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType",DRGtype);
	}

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition(String DRG) {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		  iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")),DRG);
		  clickElement(driver.findElement(By.cssSelector("li.select2-highlighted")));
		 }
	

	


	

	
	
	
	
}
