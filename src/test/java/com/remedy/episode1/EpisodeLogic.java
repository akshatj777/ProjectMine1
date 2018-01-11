package com.remedy.episode1;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;

import com.remedy.baseClass.BaseClass;

public class EpisodeLogic extends BaseClass {

	public EpisodeLogic(WebDriver driver) {
		super(driver);
	}
  
	public void iclickanchortransitiondelete(int tran) throws InterruptedException {
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div"));
		delay();
		Actions actions=new Actions(driver);
		actions.moveToElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div"))).build().perform();;
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div")));
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div/ul/li[3]/a"));
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div/ul/li[3]/a")));
		iWillWaitToSee(By.xpath("//button[contains(text(),'OK')]"));
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'OK')]")));
		Thread.sleep(3000);
		
	}

	public void Iclickfirsttimingtransitioneditlink(int tran) throws InterruptedException {
		delay();
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div"));
		clickAction(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div")));
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div")));
		Thread.sleep(5000);
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div/ul/li[1]/a")));
	}
	
	public void iVerifyPotentialwithoutendDate(int days) {
		String date=currentdate(days,"MM/dd/yyyy");
		isElementVisible(driver.findElement(By.xpath("//div[contains(text(),'"+date+"') and contains(text(),'..')]")));
	}
	
	public void iShouldSeeDischargeLocationUnderTransition(String text) {
		iVerifyTextFromListOfElement(By.cssSelector(".discharge_location-column"), text);
	}
	
	public void iShouldSeeTextForLOSOnTransitionModal(String text) {
		iWillWaitToSee(By.cssSelector("#nsocelos"));
		iVerifyTextFromListOfElement(By.cssSelector("#nsocelos"), text);
	}
	
}
