package com.remedy.Episode2;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.remedy.baseClass.BaseClass;

public class OtherWorklist extends BaseClass {

	public OtherWorklist(WebDriver driver) {
		super(driver);
		
	}

	public void IclickonOthersubtabonthepatientCardPage() {
  		 clickElement(driver.findElement(By.xpath("//span[contains(text(),'Other')]")));

		}

	public void IclickontheCancelbuttononDischargeInfoonAddatransition() {
		
		 clickElement(driver.findElement(By.cssSelector("button.btn.btn-default")));
	}
		
	}