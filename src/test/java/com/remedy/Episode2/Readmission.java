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
	
	public void IswitchtoPatientTransitionsframe() {
		// TODO Auto-generated method stub
		swithToFrame("//iframe[@class='not-showing ng-scope']");
	}
	
	public void IclickontheCreateTransitionButtontoaddanewtransition() {
		// TODO Auto-generated method stub
		  JavascriptExecutor js = ((JavascriptExecutor) driver);
		  WebElement element = driver.findElement(By.cssSelector("#btnNewTransition"));
		  js.executeScript("arguments[0].click();", element);
		  clickElement(element);
	}
	
	public void IclickontheTransitionInfoonaddanewtransition() {
		// TODO Auto-generated method stub
		 JavascriptExecutor js = (JavascriptExecutor) driver;
		  // ((JavascriptExecutor) driver).executeScript("scroll(0,-250);");
		  WebElement element = driver.findElement(By.xpath("//a[contains(text(), 'Transition Info')]"));
		  js.executeScript("arguments[0].click();", element);
		  clickElement(element);
	}

	public void Iselectthecaresettingvalueonaddanewtransition(String caresetting) {
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitFacilityCategory",caresetting);
	}

	public void Iselectthecaretypevalueonaddanewtransition(String caretypevalue) {
		

		  selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_admitCareType", "Inpatient");
	}

	public void Iselectthefacilityvalueonaddanewtransition(String facilityvalue) throws InterruptedException {
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		  WebElement element1 = driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_admitFacility"));

		  js.executeScript("arguments[0].click();", element1);
		  clickElement(element1);
		  Thread.sleep(5000);

		  WebElement element2 = driver.findElement(By.cssSelector("#s2id_autogen9_search"));

		  js.executeScript("arguments[0].click();", element2);
		  element2.sendKeys("Allentown");
		  Thread.sleep(10000);
		  WebElement element3 = driver.findElement(By.xpath("//div[contains(text(), 'Allentown - St Luke')]"));
		  js.executeScript("arguments[0].click();", element3);
		  clickElement(element3);		
	}

	public void IclickontheDiagnosisandDRGtabonaddanewtransitiontoselecttheDRG(String DRGtype) {
		// TODO Auto-generated method stub
	

	}

	public void IselecttheDRGtypeontheDiagnosisandDRGtabonaddanewtransition(String DRGtype) {
		// TODO Auto-generated method stub
		selectDropdownVisibleElement("#bp_personbundle_bpadmissiontype_drgType", "Working");
	}

	public void IselecttheDRGontheDiagnosisandDRGtabonaddanewtransition(String DRG) {
		// TODO Auto-generated method stub
		clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		  iFillInText(driver.findElement(By.cssSelector("#s2id_autogen8_search")), "61");
		  clickElement(driver.findElement(By.cssSelector(
		    "#select2-results-8 > li.select2-results-dept-0.select2-result.select2-result-selectable.select2-highlighted")));
		 }
	

	


	

	
	
	
	
}
