package com.remedy.episode1;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;

import com.remedy.baseClass.BaseClass;

public class PatientEligiblity extends BaseClass{

	public PatientEligiblity(WebDriver driver) {
		super(driver);
		}

	public void IclickonEligibilitydropdown(String value) {
	delay();
	Actions action=new Actions(driver);
	action.moveToElement(driver.findElement(By.cssSelector("#eligibility_button"))).build().perform();
	iWillWaitToSee(By.cssSelector("#eligibility_button"));  
	clickElement(driver.findElement(By.cssSelector("#eligibility_button")));
       }

	public void Iselectthevaluefromtheeligibilitydropdown(String value) {
		delay();
		if(value.equals("Eligible")){
			iWillWaitToSee(By.cssSelector("a.set_eligibility_value.set_eligibility_eligible"));
			clickElement(driver.findElement(By.cssSelector("a.set_eligibility_value.set_eligibility_eligible")));}
		else if(value.equals("Expired")){
			iWillWaitToSee(By.cssSelector("a.set_eligibility_expired"));
			clickElement(driver.findElement(By.cssSelector("a.set_eligibility_expired")));}
		else if(value.equals("Not Eligible")){
			iWillWaitToSee(By.cssSelector("a.set_eligibility_not_eligible"));
			clickElement(driver.findElement(By.cssSelector("a.set_eligibility_not_eligible")));}
		}

	public void selectDateofDeath(int days) {
		String date=currentdate(days,"MM/dd/yyyy");
		iWillWaitToSee(By.cssSelector("#bp_eligibilitybundle_setexpired_memberDod"));
		setAttributevalue(driver.findElement(By.cssSelector("#bp_eligibilitybundle_setexpired_memberDod")),"value",date);
		}

	public void Ishouldseetag(String tag) {
		iWillWaitToSee(By.xpath("//*[@id='eligibility_button']"));
		verifyTextForElement(driver.findElement(By.xpath("//*[@id='eligibility_button']")),tag);
	}

	public void Ishouldnotseetag(String tag) {
		iWillWaitToSee(By.xpath("//*[@id='eligibility_button']"));
		Assert.assertNotEquals(driver.findElement(By.xpath("//*[@id='eligibility_button']")).getText(),tag);;
		
	}
	
}
