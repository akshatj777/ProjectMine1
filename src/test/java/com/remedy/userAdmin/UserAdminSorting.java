package com.remedy.userAdmin;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;

import cucumber.api.java.en.Then;

public class UserAdminSorting extends BaseClass {
	
	public UserAdminSorting(WebDriver driver) {

		super(driver);
	}
	
	public void iSeeSortByWordUnderProgramAdminHomePage(String Text){
		
        verifyTextForElement(driver.findElement(By.cssSelector(".sort-select-label")), Text);
	
	}
	
	public void iseeByDefaultTheSortFilterIsLastNameA_Z(String Text){
		
		verifyTextForElement(driver.findElement(By.cssSelector(".btn.btn-default.form-control.ui-select-toggle >span:nth-of-type(2)")), Text);
				
	}
	
	public void IShouldbeAbleToClickOnDropDownListForSortingNewestToOldest() throws Throwable{
		
		clickElement(driver.findElement(By.cssSelector(".btn.btn-default.form-control.ui-select-toggle")));
	}
	
    
    public void IVerifyTheFilterForNewestToOldest() throws Throwable{
    	isElementVisible(driver.findElement(By.cssSelector(".ui-select-choices-group")));
    }
	
	public void IShouldBeAbleToSortTheUsersWithNewestOldestSortingOption(){
		
		clickElement(driver.findElement(By.cssSelector(".ui-select-choices-group>div:nth-of-type(3)")));
	}
	
	public void IShouldbeAbleToClickOnDropDownListForSortingOldestToNewest() throws Throwable{
		
		clickElement(driver.findElement(By.cssSelector(".btn.btn-default.form-control.ui-select-toggle")));
	}
	    
    public void IVerifyTheFilterForOldestToNewest() throws Throwable{
    	isElementVisible(driver.findElement(By.cssSelector(".ui-select-choices-group")));
    }
	
	public void IShouldBeAbletoSortTheUsersWithOldestNewestSortingOption(){
		
		clickElement(driver.findElement(By.cssSelector(".ui-select-choices-group>div:nth-of-type(3)")));
	}
	
    public void IShouldbeAbleToClickOnDropDownListForSortingZToA() throws Throwable{
		
		clickElement(driver.findElement(By.cssSelector(".btn.btn-default.form-control.ui-select-toggle")));
	}
	    
    public void IVerifyTheFilterForZToA() throws Throwable{
    	isElementVisible(driver.findElement(By.cssSelector(".ui-select-choices-group")));
    }
	
	public void IShouldBeAbletoSortTheUsersWithZASortingOption(){
		
		clickElement(driver.findElement(By.cssSelector(".ui-select-choices-group>div:nth-of-type(4)")));
	}
		
	public void iVerifySortingOptionAppliedShouldWorkForTheUser(){
		
		isElementVisible(driver.findElement(By.cssSelector("div:nth-of-type(5)>div:nth-of-type(1)>div>div:nth-of-type(1)>div:nth-of-type(2)")));
	}
	
	public void iSeeTheRefreshIconPresentBesidesTheSortingFilter(){
		
		isElementVisible(driver.findElement(By.cssSelector(".btn.btn-reload")));
		
	}
	
	public void iVerifyRefreshButtonShouldWorkForTheUser(){
		
		clickElement(driver.findElement(By.cssSelector(".btn.btn-reload")));
				
	}
	
	public void iverifySortAppliedShouldRetainWhenUserNavigatesToUserPageAndGetsBackTocardpage(){
     
		clickElement(driver.findElement(By.cssSelector(".btn.btn-default.form-control.ui-select-toggle")));
		
		isElementVisible(driver.findElement(By.cssSelector(".ui-select-choices-group")));
		clickElement(driver.findElement(By.cssSelector(".ui-select-choices-group>div:nth-of-type(5)")));
		isElementVisible(driver.findElement(By.cssSelector("div:nth-of-type(5)>div:nth-of-type(1)>div>div:nth-of-type(1)>div:nth-of-type(2)")));
		clickElement(driver.findElement(By.cssSelector(".btn.btn-primary")));
		clickElement(driver.findElement(By.cssSelector(".valentino-icon-x.pull-right")));
		isElementVisible(driver.findElement(By.cssSelector("div:nth-of-type(5)>div:nth-of-type(1)>div>div:nth-of-type(1)>div:nth-of-type(2)")));
		isElementVisible(driver.findElement(By.cssSelector(".btn.btn-default.form-control.ui-select-toggle >span:nth-of-type(2)")));
		
		}
	
	public void iVerifySortShouldWorkCorrectlyWhenSearchIsMadeAndSortingIsAppliedOnTheFilteredResults(String Text){
		//input[placeholder="Search Name or NPI"]
		iFillInText(driver.findElement(By.xpath("//input[@placeholder='Search Name or NPI']")), Text);
		isElementVisible(driver.findElement(By.cssSelector("div:nth-of-type(5)>div:nth-of-type(1)>div>div:nth-of-type(1)>div:nth-of-type(2)")));
		
		
	}
	

}
