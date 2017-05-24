package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class HomeLimitedServicesWorklist extends BaseClass {

	public HomeLimitedServicesWorklist(WebDriver driver) {
        super(driver);
	}

	public void IclickonthePostAcutetabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Post Acute')]")));
	}

	public void IclickonforwardarrowbuttontonavigatetoHomewithLimitedServicestabonthepatientCardPage() {
	    clickElement(driver.findElement(By.cssSelector("i.flex-right.right-arrow.valentino-icon-caret-right.ng-scope")));
		
	}

	public void IclickonHomewithLimitedServicessubtabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Home With Limited Services')]")));
		
	}

	public void IselecttheDRGvalueontheDiagnosisandDRGtabonaddanewtransition(String DRG) throws InterruptedException {
		     clickElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg")));
		     Thread.sleep(5000);
			  iFillInText(driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input")),DRG);
			  Thread.sleep(5000);
			  clickElement(driver.findElement(By.cssSelector("li.select2-highlighted")));
			 }
		
	}
	
	
	
	

