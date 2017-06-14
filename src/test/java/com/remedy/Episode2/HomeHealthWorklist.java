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

	public void Ideletetheactivetransitiontomakethepatientcancelled() throws InterruptedException {
		clickElement(driver.findElement(By.cssSelector("#ui-transitions-table > tbody > tr:nth-child(2) > td:nth-child(10) > div")));
		Thread.sleep(5000);
		clickElement(driver.findElement(By.cssSelector("td.settings-column.center.cursor-default > div > ul > li:nth-child(3) > a")));
		Thread.sleep(5000);
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'OK')]")));
		Thread.sleep(10000);
	
	}
}