package com.remedy.episode1;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.server.handler.ClickElement;

import com.remedy.baseClass.BaseClass;


public class PatientDashboard extends BaseClass {

	public PatientDashboard(WebDriver driver) {
		super(driver);
	}
	
	public void iverifySelectedTabOnPatientDashboard(String text){
		String actual = getTextForElement(driver.findElement(By.cssSelector(".ui-nav-tab.active")));
		Assert.assertEquals(text, actual);
	}
	
	public void iverifyPatientsAreAppearingOnPatientDashboard(){
		iWillWaitToSee(By.xpath("//tr[contains(@class,'ui-dashboard-patients-tr')]"));
	}
	
	public void iClickOnListOptionUnderOpenFilter(String text){
		clickSingleElementFromList(By.xpath("//li[a[@data-name='create']]//a"), text);
	}
	
	public void iClickOnTabOnNavigationTabOnPatientDashboard(String text){
		clickSingleElementFromList(By.cssSelector(".nav.nav-tabs>li>a"), text);
	}
	
	public void iEnterTextInFilterNameOnNewFilter(String text){
		driver.findElement(By.cssSelector("#filter_name")).sendKeys(text);
	}
	
	public void iClickOnSelectAllCheckboxOnPatientDashboard(){
		clickAction(driver.findElement(By.cssSelector("#check-all-patients")));
	}
	
	public void iClickOnGearIconOnTopOnPatientDashboard(){
		iWillWaitToSee(By.xpath("//div[contains(@class,'active')]//a[@class='dropdown-toggle btn btn-primary']"));
		clickAction(driver.findElement(By.xpath("//div[contains(@class,'active')]//a[@class='dropdown-toggle btn btn-primary']")));
	}
	
	public void iClickOnOptionPresentUnderGearMenuOnTopOnPatientDashboard(String text){
		iWillWaitToSee(By.xpath("//div[@class='btn-group pull-right']//li//a"));
		clickSingleElementFromList(By.xpath("//div[@class='btn-group pull-right']//li//a"), text);
	}
	
	public void iClickOnFilterNameUnderPatientsMenu(String text){
		iWillWaitToSee(By.cssSelector(".filter-name"));
		clickSingleElementFromList(By.cssSelector(".filter-name"), text);
	}
	
	public void iShouldSeeFilterUnderBookmark(String text){
		iWillWaitToSee(By.cssSelector(".bookmarks_filter_widget-view.bookmarks-circle>h3"));
		iVerifyTextFromListOfElement(By.cssSelector(".bookmarks_filter_widget-view.bookmarks-circle>h3"), text);
	}
	
	public void iClickOnGearIconUnderBookmark(String text){
		iWillWaitToSee(By.xpath("//h3[text()='"+text+"']/preceding-sibling::a/i"));
		clickElement(driver.findElement(By.xpath("//h3[text()='"+text+"']/preceding-sibling::a/i")));
	}
	
	public void iEnterTextInTitleFieldInBookmark(String text){
		iWillWaitToSee(By.xpath("//div[@class='bookmarks_filter_widget-edit bookmarks-circle']//div[@class='input-group']/input"));
		driver.findElement(By.xpath("//div[@class='bookmarks_filter_widget-edit bookmarks-circle']//div[@class='input-group']/input")).sendKeys(text);
	}
	
	public void iClickOnButtonEditBookmark(String text){
		iWillWaitToSee(By.xpath("//div[@class='bookmarks_filter_widget-edit bookmarks-circle']//div[@class='input-group']/input"));
		clickElement(driver.findElement(By.cssSelector(".btn.btn-default.btn-sm.bookmarks-circle-"+text)));
	}

}
