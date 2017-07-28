package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
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
		WebElement element1 = driver
				.findElement(By.cssSelector("#s2id_bp_personbundle_bpadmissiontype_dischargeFacility"));
		js.executeScript("arguments[0].click();", element1);
		clickElement(element1);
		Thread.sleep(2000);
		WebElement element2 = driver.findElement(By.cssSelector("#select2-drop > div > input.select2-input"));
		js.executeScript("arguments[0].click();", element2);
		element2.sendKeys(facilityvalue);
		Thread.sleep(3000);
		WebElement element3 = driver.findElement(By.cssSelector("li.select2-highlighted"));
		js.executeScript("arguments[0].click();", element3);
		clickElement(element3);
	}

	public void IclickontheCancelButtononAddanewtransition() {
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Cancel')]")));
	}

	public void ISelectadmittingfacilitylistpresentontheAddPatientpage(String facility) {
		iFillInText(driver.findElement(By.cssSelector("div.select2-search>input.select2-input")), facility);
		longDelay();
		clickElement(driver.findElement(By.cssSelector("li.select2-highlighted")));
	}

	public void IclickontheAnticipatedquickactionbuttonontheExceededSNFLOS() {
		clickElement(driver.findElement(By.xpath("//button[contains(@uib-tooltip,'Anticipated Discharge')]")));
	}

	public void Iselectthemostrecentdatefromthedatepicker() {

		clickElement(driver.findElement(By.cssSelector("td.day.active")));
	}

	public void Iclickondatepickerbuttontoselecttheadmitdateonnewtransition() {
		try {
			WebDriverWait wait = new WebDriverWait(driver, 15);
			wait.until(ExpectedConditions
					.visibilityOfElementLocated(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate")));
			wait.until(ExpectedConditions
					.elementToBeClickable(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate"))).click();
		} catch (WebDriverException wde) {
			scrollToElement(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate")));
			driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate")).click();
		}
	}

	private void scrollToElement(WebElement el) {
		if (driver instanceof JavascriptExecutor) {
			((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", el);
		}
	}

	public void IverifyLOSisbelowtheELOSonthepatientcardpage() {
		boolean flag= false;
		String Los_value = driver.findElement(By.cssSelector("span.text-emphasized.ng-binding.ng-scope")).getText();
		String minimum_Elos_value = driver.findElement(By.cssSelector(" span:nth-child(5).text-emphasized.ng-binding.ng-scope"))
				.getText();
		int Los = Integer.parseInt(Los_value);
		int Elos = Integer.parseInt(minimum_Elos_value);
		if (Los < Elos) {
			flag = true;
		}
	}
}
