package com.remedy.episode1;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import com.remedy.baseClass.BaseClass;

public class PatientCarePlan extends BaseClass
{
	public PatientCarePlan(WebDriver driver) 
	{
		super(driver);
	}
	public void iClickOnUnderPatientListPage() throws Throwable 
	{
		clickElement(driver.findElement(By.xpath("//*[@id='patientsList']/div/div/span/div[5]/a/div/div[1]")));
	}
	public void iShouldSeeDetails(String text) throws Throwable 
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='page-content-frame']/h3/span[1]")));
	}
	public void iShouldSeeCarePlanpresentonthestudentdetailspage() throws Throwable 
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='carePlanButton']")));
	}
	public void iClickOnCarePlan() throws Throwable 
	{
		clickElement(driver.findElement(By.xpath("//*[@id='carePlanButton']")));
	}
	public void iShouldSeeAssignCarePlanUnderCarePlanPage() throws Throwable 
	{
		isElementVisible(driver.findElement(By.cssSelector("#ui-care-plan-container div.row.header-nav-line a")));
	}
	public void iClickOnAssignCarePlan() throws Throwable 
	{
		clickElement(driver.findElement(By.cssSelector("#ui-care-plan-container div.row.header-nav-line a")));
	}
	public void iShouldSeePresentOnTheAssignCarePlanPage(String text) throws Throwable 
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignCarePlanModal']/div/div[1]/h4")));
	}
	public void iShouldSeePresentInThePopup(String text) throws Throwable 
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignCarePlanModal']/div/div[2]/div/div[1]/div/div/a[1]")));
	}
	public void iShouldSeeTextOnThePopup(String text) throws Throwable 
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignCarePlanModal']/div/div[2]/div/div[1]/div/div/a[2]")));
	}
	public void iShouldSeeUnderThePlans(String text) throws Throwable
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='assignCarePlanModal']/div/div[2]/div/div[3]/div/div[2]/div/div/div[1]/h4")));
	}
	public void iAssignWith(String text, String number) throws Throwable 
	{
		iFillInText(driver.findElement(By.cssSelector("input.form-control.input-medium.ng-pristine.ng-valid")), number);
	}
	public void iSelectTheCheckboxInThePlan() throws Throwable
	{
//		WebElement element=driver.findElement(By.xpath("//*[@id='assignCarePlanModal']/div/div[2]/div/div[3]/div/div[2]/div/div/div[1]/div/span/input"));
//		clickElement(element);
		WebElement element = driver.findElement(By.xpath("//input[@ng-model='carePlan.selected']"));
		JavascriptExecutor executor = (JavascriptExecutor)driver;
		executor.executeScript("arguments[0].click();", element);
	}
	public void iClickOnSaveButton() throws Throwable
	{
		clickElement(driver.findElement(By.xpath("//*[@id='assignCarePlanModal']/div/div[3]/button[1]")));
	}
	public void iClickOnAppointmentsUnderCarePlan() throws Throwable
	{
		clickElement(driver.findElement(By.xpath("//*[@id='careFlowAppointmentsTab']")));
	}
	public void iShouldSeeNewApointmentButton() throws Throwable
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='appointmentsList']/h3/a")));
	}
	public void iClickOnNewAppointmentButton() throws Throwable
	{
		clickElement(driver.findElement(By.xpath("//*[@id='appointmentsList']/h3/a")));
	}
	public void iShouldSeePresentOnTheNewAppointmentPage(String text) throws Throwable
	{
		isElementVisible(driver.findElement(By.xpath("//*[@id='editAppointment']/div[1]/h4")));
	}
	public void iAssignUnderContact(String number) throws Throwable
	{
		iFillInText(driver.findElement(By.xpath("//*[@id='bp_personbundle_bpappointmenttype_contact']")), number);
	}
	public void iAssignUnderContactPhone(String number) throws Throwable
	{
		iFillInText(driver.findElement(By.xpath("//*[@id='bp_personbundle_bpappointmenttype_contact_phone']")), number);
	}
	public void iAssignUnderFacility(String text) throws Throwable
	{
		iFillInText(driver.findElement(By.xpath("//*[@id='bp_personbundle_bpappointmenttype_facility']")), text);
	}
	public void iClickOnScheduleAppointmentButton() throws Throwable
	{
		clickElement(driver.findElement(By.xpath("//*[@id='editAppointment']/div[3]/button[1]")));
	}
}
