package com.remedy.episode1;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

public class PatientCarePlan extends BaseClass
{
	public PatientCarePlan(WebDriver driver) 
	{
		super(driver);
	}
	public void iClickOnUnderPatientListPage() throws Throwable 
	{
		clickElement(driver.findElement(By.xpath("//*[@id='patientsList']/div/div/span/div[1]/a/div/div[1]")));
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
		isElementVisible(driver.findElement(By.xpath("//*[@id='ui-care-plan-container']/div[1]/div/div/a")));
	}
	public void iClickOnAssignCarePlan() throws Throwable 
	{
		clickElement(driver.findElement(By.xpath("//*[@id='ui-care-plan-container']/div[1]/div/div/a")));
	}
}
