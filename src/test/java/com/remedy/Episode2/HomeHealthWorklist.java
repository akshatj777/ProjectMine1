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

	public void Ideletetheactivetransitiontomakethepatientcancelled(String transition_value) throws InterruptedException {
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr["+transition_value+"]/td[contains(@class, 'settings-column')]/div")));
		Thread.sleep(1000);
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr["+transition_value+"]/td[contains(@class, 'settings-column')]/div/ul/li[3]/a")));
		Thread.sleep(2000);
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'OK')]")));
		Thread.sleep(4000);
	
	}
}