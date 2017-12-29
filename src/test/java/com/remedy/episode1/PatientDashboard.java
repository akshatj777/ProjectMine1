package com.remedy.episode1;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.server.handler.ClickElement;

import com.remedy.Episode2.DischargeCarlForm;
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
	
	public void iEnterPatientsFullNameInPatientSearchBoxUnderActiveTabOnDashboard(){
		String name = DischargeCarlForm.firstname +" "+ DischargeCarlForm.lastname;
		iWillWaitToSee(By.xpath("//div[@class='tab-pane active']//input[@placeholder='Patient Search']"));
		iFillInText(driver.findElement(By.xpath("//div[@class='tab-pane active']//input[@placeholder='Patient Search']")), name);
		clickElement(driver.findElement(By.xpath("//div[@class='tab-pane active']//button[@class='btn btn-primary']")));
	}
	
	public void iShouldSeePatientFirstNameAppearingUnderSearchOnDashboard(){
		iWillWaitToSee(By.xpath("//tbody//td[contains(@class,'first_name-column')]"));
    	String firstName = driver.findElement(By.xpath("//tbody//td[contains(@class,'first_name-column')]")).getText();
    	Assert.assertEquals(DischargeCarlForm.firstname,firstName);
    }
	
	public void iVerifyTaskDescriptionUnderTaskInCarePlan(String text){
		iWillWaitToSee(By.xpath("//div[contains(@class,'collapse-text') and text()='"+text+"']"));
    }
	
	public void iVerifyCountOnTaskNavigationBarIcon(String text){
		String actual = getTextForElement(driver.findElement(By.xpath("//a[i[@class='fa fa-calendar-o']]/span[@class='badge badge-info']")));
		Assert.assertEquals(text,actual);
    }
	
	public void iShouldSeeCountInTaskUnderMyTaskOnDashboard(String count, String field){
		String actual = getTextForElement(driver.findElement(By.xpath("//a[@my-task-tasktype='"+field+"']")));
		Assert.assertEquals(count,actual.trim());
    }
	
	public void iClickOnCompleteTaskCheckboxUnderMyTaskOnDashboard(){
		iWillWaitToSee(By.cssSelector(".btn.button-big.complete-task"));
		clickElement(driver.findElement(By.cssSelector(".btn.button-big.complete-task")));
	}
	
	public void iClickOnMessageIconOnHeaderNavigationBar(){
		iWillWaitToSee(By.cssSelector(".fa.fa-envelope"));
		clickElement(driver.findElement(By.cssSelector(".fa.fa-envelope")));
	}
	
	public void iClickOnSeeAllMessagesUnderMessageOnHeaderNavigationBar(){
		iWillWaitToSee(By.cssSelector("a[href='/secure/message']"));
		clickElement(driver.findElement(By.cssSelector("a[href='/secure/message']")));
	}
	
	public void iClickMenuUnderMessageTabOnDashboard(String text){
		iWillWaitToSee(By.cssSelector("a[data-title='"+text+"']"));
		clickElement(driver.findElement(By.cssSelector("a[data-title='"+text+"']")));
	}
	
	public void iClickButtonUnderMessage(String text){
		iWillWaitToSee(By.xpath("//*[contains(text(),'"+text+"')]"));
		clickElement(driver.findElement(By.xpath("//*[contains(text(),'"+text+"')]")));
	}
	
	public void iShouldSeeTextErrorUnderMessage(String text){
		iWillWaitToSee(By.cssSelector(".help-block.help-block-error"));
		iVerifyTextFromListOfElement(By.cssSelector(".help-block.help-block-error"), text);
	}
	
	public void iEnterRecipientInToFieldUnderComposeMessage(String text){
		iWillWaitToSee(By.cssSelector(".chzn-choices"));
		iFillInText(driver.findElement(By.xpath("//ul[@class='chzn-choices']//input")), text);
	}
	
	public void iClickOnRecipientToAddRecipientInComposeMessage(String text){
		iWillWaitToSee(By.xpath("//li[contains(text(),'"+text+"')]"));
		clickElement(driver.findElement(By.xpath("//li[contains(text(),'"+text+"')]")));
	}
	
	public void iEnterTextInComposeMessage(String text){
		swithToFrame("//iframe[@class='wysihtml5-sandbox']");
		clickElement(driver.findElement(By.xpath("//body[@class='form-control wysihtml5-editor']")));
		iFillInText(driver.findElement(By.xpath("//body[@class='form-control wysihtml5-editor']")), text);
	}
	
	public void iUploadFileToSendMessage(){
		String filePath = System.getProperty("user.dir")
				+ "//src//test//Imports//ECSample.jpeg";
		driver.findElement(By.xpath("//input[@type='file']")).sendKeys(filePath);

	}
	
	public void iClickOnFirstMessageInInbox(){
		iWillWaitToSee(By.xpath("//tbody/tr//td[text()='QA ADMIN']"));
		clickElement(driver.findElement(By.xpath("//tbody/tr//td[text()='QA ADMIN']")));
	}
	
	public void iClickOnGearIconForFirstMessageInInbox(){
		iWillWaitToSee(By.cssSelector(".btn.btn-default.btn-sm"));
		clickElement(driver.findElements(By.cssSelector(".btn.btn-default.btn-sm")).get(1));
	}
	
	public void iSelectOptionForMessage(){
		iWillWaitToSee(By.cssSelector(".move-to-archive-btn"));
		clickElement(driver.findElement(By.cssSelector(".move-to-archive-btn")));
	}
	
	public void iClickOnAlertIconOnHeaderNavigationBar(){
		iWillWaitToSee(By.cssSelector(".fa.fa-bell-o"));
		clickElement(driver.findElement(By.cssSelector(".fa.fa-bell-o")));
	}
	
	public void iClickOnFirstAlertMessageUnderAlert(){
		iWillWaitToSee(By.cssSelector(".dropdown-menu-list.alert-list.scroller a"));
		clickElement(driver.findElements(By.cssSelector(".dropdown-menu-list.alert-list.scroller a")).get(0));
	}
	
	public void iShouldNotSeeAnyCountOnAlertIcon(){
		Assert.assertFalse(isElementPresentOnPage(By.xpath("//a[i[@class='fa fa-bell-o']]/span[@class='badge badge-info']")));
	}

}
