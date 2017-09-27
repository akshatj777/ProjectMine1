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
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + transition_value+ "]/td[contains(@class, 'settings-column')]/div"));
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + transition_value+ "]/td[contains(@class, 'settings-column')]/div")));
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + transition_value+ "]/td[contains(@class, 'settings-column')]/div/ul/li[3]/a"));
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + transition_value+ "]/td[contains(@class, 'settings-column')]/div/ul/li[3]/a")));
		iWillWaitToSee(By.xpath("//button[contains(text(),'OK')]"));
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'OK')]")));
		Thread.sleep(3000);
	}
}