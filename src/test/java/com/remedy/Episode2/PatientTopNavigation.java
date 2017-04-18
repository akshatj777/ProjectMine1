package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class PatientTopNavigation extends BaseClass{

	public PatientTopNavigation(WebDriver driver) {
        super(driver);
	}
	
	public void iShouldSeeProductListIcon(){
		isElementVisible(driver.findElement(By.cssSelector(".btn.btn-menu.valentino-icon-spoe")));
	}
	
	public void iClickOnProductListIcon(){
		clickElement(driver.findElement(By.xpath("(//menu-toggle)[1]")));
	}
}
