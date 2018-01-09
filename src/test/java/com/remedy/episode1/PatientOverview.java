package com.remedy.episode1;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;

import com.remedy.Episode2.DischargeCarlForm;
import com.remedy.baseClass.BaseClass;

public class PatientOverview extends BaseClass {
	public PatientOverview(WebDriver driver) {
		super(driver);
	}
	
	public void iVerifyPatientsFullNameOnOverview(){
		String name = DischargeCarlForm.firstname +" "+ DischargeCarlForm.lastname;
    	String actual = driver.findElement(By.cssSelector(".col-md-6.ec2-embed-patient-name")).getText().trim();
    	Assert.assertTrue(actual.equalsIgnoreCase(name));
	}
	
	public void iShouldSeeDetailsOnPatientsOverviewPage(String text) {
		if (text.contains("SSN")){
			String value = driver.findElement(By.cssSelector(".ec2-embed-patient-ssn")).getText();
			String sSN= DischargeCarlForm.final_ssn;
			sSN=sSN.substring(5, 9);
			String expected = "SSN xxx-xx-"+sSN;
			Assert.assertTrue(value.contains(expected));
		}
		List<WebElement> element = driver.findElements(By.cssSelector("div.row>ul>li"));
		String value = null;
		for (WebElement webElement : element) {
			if(webElement.getText().trim().contains(text)){
				value=webElement.getText().trim();
			}
		}
		Assert.assertTrue(value.contains(text));
	}
	
	public void iClickOnGearIconOnPatientOverviewPage(){
		longDelay();
		longDelay();
//		scrollIntoViewByJS(driver.findElements(By.cssSelector("h3 .fa.fa-cog")).get(0));
		clickElement(driver.findElement(By.cssSelector("h3 .fa.fa-cog")));
	}
	
	public void iClickOnOptionUnderPatientOverviewGearIcon(String text){
		iWillWaitToSee(By.xpath("//div[@class='pull-right open']//li//a"));
//		clickSingleElementFromList(By.xpath("//div[@class='pull-right open']//li//a"), text);
		clickElement(driver.findElement(By.xpath("//div[@class='pull-right open']//li//a[contains(text(),'"+text+"')]")));
		delay();
//		waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".loading-message.loading-message-boxed"))));
	}
	
	public void iClickOnButtonUnderPatientOverview(String button){
		delay();
		if(button.equalsIgnoreCase("Join Care Team")){
			clickElement(driver.findElement(By.xpath("//a[contains(@href,'assignMyself')]")));
		}
		else
//		clickSingleElementFromList(By.xpath("//div[@class='pull-right open']//li//a"), button);
		clickSingleElementFromList(By.xpath("//div[@class='row header-nav-line']//a"), button);
//		clickElement(driver.findElement(By.xpath("//a[contains(@href,'assignMyself')]")));
//		waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector(".loading-message.loading-message-boxed"))));
//		waitTo().until(ExpectedConditions.invisibilityOf(driver.findElement(By.cssSelector("#ui-assign-clinician-table_processing"))));
	}
	
	public void iSelectFirstFacilityCheckboxOnAssignTeamMemberModal(){
		driver.findElements(By.cssSelector(".add_checkbox-column.sorting_1>span>input")).get(0).click();
	}
	
	public void iEnterDetailsInFieldUnderAddFamilyModal(String text, String field){
		iFillInText(driver.findElement(By.cssSelector("#relative_careteam_member_type_person_"+field)), text);
	}
	
	public void IEditFieldUnderPatientDetails(String field, String text){
		longDelay();
		iWillWaitToSee(By.xpath("//div[@class='col-md-9']"));
		driver.findElement(By.xpath("//div[@class='col-md-9']//input[@id='BP_patientType_"+field+"']/..")).click();
		iFillInText(driver.findElement(By.cssSelector(".form-control.input-medium.pull-left")), text);
		delay();
	}
	
	public void ISelectDropDownUnderEditPatientDetails(String text, String field){
		clickElement(driver.findElement(By.cssSelector("div[name='BP_patientType["+field+"]']")));
		delay();
		clickSingleElementFromList(By.cssSelector("#BP_patientType_"+field+" option"), text);
		delay();
	}
	
	public void iClickOnButtonUnderPatientDetails(String text){
		if(text.equalsIgnoreCase("submit")){
			iWillWaitToSee(By.cssSelector(".btn.blue.editable-submit i"));
			clickElement(driver.findElement(By.cssSelector(".btn.blue.editable-submit i")));
		}
		else{
			clickElement(driver.findElement(By.cssSelector(".btn.default.editable-cancel i")));
		}
		longDelay();
	}
	
	public void iClickOnButtonUnderMedicalRecordOnPatientOverview(String button){
		clickElement(driver.findElement(By.xpath("//a[contains(text(),'"+button+"')]")));
	}
	
	public void iEnterDetailsOnFieldUnderMedicalRecord(String text, String field){
		iFillInText(driver.findElement(By.cssSelector(field)), text);
	}
	
	public void iClickOnButtonForSubmitOnPage(String button){
		delay();
		delay();
		clickSingleElementFromList(By.xpath("//*[contains(@id,'submit')]"), button);
	}
	
	public void iShouldSeeTextUnderSectionOnMedicalRecord(String text, String field){
		iWillWaitToSee(By.xpath("//div[h3[contains(text(),'"+field+"')]]//*[contains(text(),'"+text+"')]"));
	}
	
	public void iClickOnTextUnderMedicalRecord(String text){
		iWillWaitToSee(By.xpath("//span[contains(text(),'Drug')]"));
		clickElement(driver.findElement(By.xpath("//span[contains(text(),'Drug')]")));
	}
	
	public void iShouldSeeButtonUnderRecentActivity(String text){
		iVerifyTextFromListOfElement(By.xpath("//h3[contains(text(),'Recent Activity')]//button"), text); 
	}
	
	public void iClickOnButtonUnderRecentActivity(String text){
		clickSingleElementFromList(By.xpath("//h3[contains(text(),'Recent Activity')]//button"), text); 
	}
	
	public void iShouldSeeTextInNotificationColumnOnRecentActivityNotificationTab(String text){
		iWillWaitToSee(By.xpath("//div[@id='notificationsBlock']//tbody/tr[1]/td[3][contains(text(),'"+text+"')]"));
	}
	
	public void iShouldSeeTextInByColumnOnRecentActivityNotificationTab(String text){
		iWillWaitToSee(By.xpath("//div[@id='notificationsBlock']//tbody/tr[1]/td[4][contains(text(),'"+text+"')]"));
	}

	public void iVerifyAppointmentsUnderCarePlanOnPatientPage(String text){
		iWillWaitToSee(By.cssSelector(".panel-title"));
		String actual = getTextForElement(driver.findElement(By.cssSelector(".panel-title")));
		Assert.assertEquals(text, actual.trim());
	}
	
	public void ishouldSeeAssignedFormsUnderCarePlanOnPatientPage(String text){
		iWillWaitToSee(By.cssSelector("#assignedForms .caption.ng-binding"));
		String actual = getTextForElement(driver.findElement(By.cssSelector("#assignedForms .caption.ng-binding")));
		Assert.assertEquals(text, actual.trim());
	}
	
	public void ishouldSeePhysicianCardUnderCareTeamOnPatientPage(){
		iWillWaitToSee(By.cssSelector(".col-md-12 .panel-body"));
	}

}