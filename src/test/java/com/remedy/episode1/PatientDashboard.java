package com.remedy.episode1;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.server.handler.ClickElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.seleniumhq.jetty9.server.Iso88591HttpWriter;

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
	
	public void iClearTitleFieldUnderBookMark(){
		iWillWaitToSee(By.xpath("//div[@class='bookmarks_filter_widget-edit bookmarks-circle']//div[@class='input-group']/input"));
		driver.findElement(By.xpath("//div[@class='bookmarks_filter_widget-edit bookmarks-circle']//div[@class='input-group']/input")).clear();
	}
	
	
	public void iClickOnButtonEditBookmark(String text){
		iWillWaitToSee(By.xpath("//div[@class='bookmarks_filter_widget-edit bookmarks-circle']//div[@class='input-group']/input"));
		clickElement(driver.findElement(By.xpath("//div[@class='bookmarks_filter_widget-edit bookmarks-circle']/div[@class='pull-right']/a[contains(@class,'-"+text+"')]")));
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
		clickElement(driver.findElements(By.cssSelector(".btn.button-big.complete-task")).get(0));
	}
	
	public void iClickOnMessageIconOnHeaderNavigationBar(){
    	waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".dataTables_processing"))));
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
		iWillWaitToSee(By.xpath("//button[contains(text(),'"+text+"')]"));
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'"+text+"')]")));
	}
	
	public void iClickOnReplyButtonForMessage(){
		iWillWaitToSee(By.cssSelector(".btn.blue.reply-btn"));
		clickElement(driver.findElement(By.cssSelector(".btn.blue.reply-btn")));
	}
	
	public void iClickOnAddFilesButtonUnderMessage(){
		iWillWaitToSee(By.xpath("//span[text()='Add files...']"));
		clickElement(driver.findElement(By.cssSelector(".btn.green.fileinput-button")));
	}
	
	public void iShouldSeeTextErrorUnderMessage(String text){
		iWillWaitToSee(By.cssSelector(".help-block.help-block-error"));
		iVerifyTextFromListOfElement(By.cssSelector(".help-block.help-block-error"), text);
	}
	
	public void iEnterRecipientInToFieldUnderComposeMessage(String text){
		delay();
		iWillWaitToSee(By.cssSelector(".chzn-choices"));
		clickElement(driver.findElement(By.xpath("//ul[@class='chzn-choices']")));
		iFillInText(driver.findElement(By.xpath("//ul[@class='chzn-choices']//input")), text);
	}
	
	public void iClickOnRecipientToAddRecipientInComposeMessage(String text){
		iWillWaitToSee(By.cssSelector("#messageRecipients_chzn_o_0"));
//		iWillWaitToSee(By.xpath("//li[contains(text(),'"+text+"')]"));
		clickElement(driver.findElement(By.cssSelector("#messageRecipients_chzn_o_0")));
//		clickElement(driver.findElement(By.xpath("//li[contains(text(),'"+text+"')]")));
	}
	
	public void iEnterTextInComposeMessage(String text){
		swithToFrame("//iframe[@class='wysihtml5-sandbox']");
		clickElement(driver.findElement(By.xpath("//body[@class='form-control wysihtml5-editor']")));
		iFillInText(driver.findElement(By.xpath("//body[@class='form-control wysihtml5-editor']")), text);
	}
	
	public void iUploadFileToSendMessage(String text){
		String filePath = System.getProperty("user.dir")
				+ "//src//test//Imports//"+text;
		driver.findElement(By.xpath("//input[@type='file']")).sendKeys(filePath);
		delay();
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
		iWillWaitToSee(By.xpath("//div[contains(@class,'open')]//a"));
		clickElement(driver.findElement(By.xpath("//div[contains(@class,'open')]//a")));
	}
	
	public void iClickOnAlertIconOnHeaderNavigationBar(){
		longDelay();
		iWillWaitToSee(By.cssSelector(".fa.fa-bell-o"));
		clickElement(driver.findElement(By.cssSelector(".fa.fa-bell-o")));
	}
	
	public void iClickOnFirstAlertMessageUnderAlert(){
		iWillWaitToSee(By.cssSelector(".dropdown-menu-list.alert-list.scroller a"));
		clickElement(driver.findElements(By.cssSelector(".dropdown-menu-list.alert-list.scroller a")).get(0));
	}
	
	public void iShouldNotSeeAnyCountOnAlertIcon(){
		try{
			Assert.assertFalse(isElementPresentOnPage(By.xpath("//a[i[@class='fa fa-bell-o']]/span[@class='badge badge-info']")));
		}
		catch (Exception e){
			driver.navigate().refresh();
			Assert.assertFalse(isElementPresentOnPage(By.xpath("//a[i[@class='fa fa-bell-o']]/span[@class='badge badge-info']")));
		}
	}
	
	public void iShouldSeeTextUnderBodyForMessage(String text){
		waitTo().until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(By.cssSelector("iframe.wysihtml5-sandbox")));
		iWillWaitToSee(By.xpath("//body[contains(text(),'"+text+"')]"));
		switchToParentFrame();
	}
	
	public void iVerifyFilePresentUnderAttachment(String text){
		iWillWaitToSee(By.xpath("//a[text()='"+text+"']"));
	}
	
	public void iVerifyFileNotPresentUnderAttachment(String text){
		delay();
		Assert.assertFalse(isElementPresentOnPage(By.xpath("//a[text()='"+text+"']")));
	}
	
	public void iDeleteFilePresentUnderAttachment(String text){
		iWillWaitToSee(By.xpath("//td[a[text()='"+text+"']]/..//td[@class='delete']"));
		clickElement(driver.findElement(By.xpath("//td[a[text()='"+text+"']]/..//td[@class='delete']")));
	}
	
	public void iClickOnFirstGearIcon(){
		iWillWaitToSee(By.cssSelector(".fa.fa-cog"));
		clickElement(driver.findElements(By.cssSelector(".fa.fa-cog")).get(0));
	}
	
	public void iClickOnSelectAllMessageCheckbox(){
		iWillWaitToSee(By.cssSelector("#check-all-messages"));
		clickElement(driver.findElement(By.cssSelector("#check-all-messages")));
	}



}
