package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
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
		iFillInText(driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input")), DRG);
		Thread.sleep(5000);
		clickElement(driver.findElement(By.cssSelector("li.select2-highlighted")));
	}

	public void IselectthefacilityvalueStamfordonaddanewtransition(String facilityvalue) throws InterruptedException {
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

	public void Iscrolldownthepagetomaketheelementvisible() {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("window.scrollBy(100,0)", "");
	}

	public void Iclickondatepickerbuttontoselecttheadmitdate() {
		WebElement element = driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate"));
		clickElement(element);
	}
}