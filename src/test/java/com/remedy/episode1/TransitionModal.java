package com.remedy.episode1;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class TransitionModal extends BaseClass {
	 public TransitionModal(WebDriver driver){
		 super(driver);
	    }

	public void iclickEpisodeinitiatorEdit() {
		clickElement(driver.findElement(By.xpath("//td[contains(@class,'Episode Initiator')]/a[contains(text(),'Edit')]")));
		}

	public void iVerifyvalueintable(String value, String table, int row, int column) {
		iWillWaitToSee(By.xpath("//table/tbody/tr["+row+"]/td["+column+"][contains(text(),'"+value+"')]"));
     	}
	 
}
