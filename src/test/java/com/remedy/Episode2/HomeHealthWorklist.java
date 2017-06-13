package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class HomeHealthWorklist extends BaseClass {

	public HomeHealthWorklist(WebDriver driver) {
		super(driver);
	}

	public void IclickonHomeHealthsubtabonthepatientCardPage() {
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Home Health')]")));

	}
}