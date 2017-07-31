package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class PostAcuteFacility extends BaseClass {

	public PostAcuteFacility(WebDriver driver) {
		super(driver);

	}

	public void IclickonPostAcuteFacilitysubtabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Post-Acute Facility')]")));

	}

}
