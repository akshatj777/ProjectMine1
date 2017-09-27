package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PatientTopNavigation extends BaseClass {

	public PatientTopNavigation(WebDriver driver) {
		super(driver);
	}

	public void iShouldSeeProductListIcon() {
		isElementVisible(driver.findElement(By.cssSelector(".btn.btn-menu.valentino-icon-spoe")));
	}

	public void iClickOnProductListIcon() {
		clickElement(driver.findElement(By.xpath("(//menu-toggle)[1]")));
	}

	public void iScrollPageToTop() {
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		WebElement element = driver.findElement(By.cssSelector("div.row>h2"));
		js.executeScript("arguments[0].scrollIntoView(true);", element);
	}
}
