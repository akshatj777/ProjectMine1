package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

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
		JavascriptExecutor js = (JavascriptExecutor) driver;
		iWillWaitToSee(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg"));
		Actions actions = new Actions(driver);
		actions.moveToElement(driver.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_drg"))).click().perform();
		iWillWaitToSee(By.cssSelector("#select2-drop > div > input.select2-input"));
		WebElement element2 = driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input"));
		js.executeScript("arguments[0].click();", element2);
		iFillInText(element2,DRG);
		iWillWaitToSee(By.cssSelector("li.select2-highlighted"));
		actions.moveToElement(driver.findElement(By.cssSelector("li.select2-highlighted"))).click().perform();
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

	public void IclickonthePostAcutetabonthepatientCardPageJavaScript() {

		try {
			WebDriverWait wait = new WebDriverWait(driver, 15);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//span[contains(text(),'Post Acute')]")));
			wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//span[contains(text(),'Post Acute')]"))).click();
		}   catch (WebDriverException wde) {
			scrollToElement(driver.findElement(By.xpath("//span[contains(text(),'Post Acute')]")));
			driver.findElement(By.xpath("//span[contains(text(),'Post Acute')]")).click();
		}
	}

	private void scrollToElement(WebElement el) {
		if (driver instanceof JavascriptExecutor) {
			((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", el);
		}
	}

	public void Ireloadmypage() {
		driver.navigate().refresh();

	}

}