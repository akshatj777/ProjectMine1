package com.remedy.userAdmin;


import com.remedy.baseClass.BaseClass;

import cucumber.api.java.en.And;

import java.util.Set;

//import org.apache.commons.collections.set.SynchronizedSet;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 7/29/15.
 */
public class LandingPage extends BaseClass{

	public static String parentWindowTitle = null;
    public LandingPage(WebDriver driver){

        super(driver);}

    public void iVerifyTextforTiles(String text){
    	iWillWaitToSee(By.cssSelector(".title>p"));
       	if(text.isEmpty()!=true){
    		verifyTextForElementfromList(".title>p", text);
    	}
    }
       
    public void iClickOnApplicateTile(String tile){
        iWillWaitToSee(By.xpath(tile));
        clickElement(driver.findElement(By.xpath(tile)));
    }

    public void iSwitchToNewWindow(){
    	try
		{
			String parentWindow = driver.getWindowHandle();
			//parentWindowTitle = driver.switchTo().window(parentWindow).getTitle();
			Set<String> handles = driver.getWindowHandles();
			for (String windowHandle : handles) {
				if (!windowHandle.equals(parentWindow)) {
					driver.switchTo().window(windowHandle);
				}
			}
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
    }

    public void iSwitchBackToOldWindow(){
    	try
    	{
    		String parentWindow = driver.getWindowHandle();
            Set<String> handles = driver.getWindowHandles();
            if(!(driver.getWindowHandle().equals(parentWindow)))
            //if(!(driver.switchTo().window(parentWindow).getTitle().equals(parentWindowTitle)))
            {
            	driver.close();
            }
            for (String windowHandle : handles) {
                if (!windowHandle.equals(parentWindow)) {
                    driver.switchTo().window(windowHandle);
                }
            }
            delay();
    	}
    	catch(Exception e)
    	{
    		System.out.println(e.toString());
    	}
    }

    public void iClickOnTheTopUserAccountIconOnRemedyConnectPage (){
    	iWillWaitToSee(By.xpath("//i[@class='btn btn-menu valentino-icon-profile']"));
		clickElement(driver.findElement(By.xpath("//i[@class='btn btn-menu valentino-icon-profile']")));
    }
    
    public void IClickTopUserAccountLink() {
    	iWillWaitToSee(By.xpath("//div[contains(text(),'.com')]/parent::div/i[@class='dropdown icon']"));
		clickElement(driver.findElement(By.xpath("//div[contains(text(),'.com')]/parent::div/i[@class='dropdown icon']")));
    }

    public void iSelectFromTopUserAccountDropDown(String link){
    	iWillWaitToSee(By.cssSelector(".btn.btn-flyout-nav"));
    	selectElementByDesc(".btn.btn-flyout-nav", link);
    }

    public void iVerifyTextForJiraLogInPage(String text){
        verifyTextForElement(driver.findElement(By.xpath("//*[@id='footer']/div/section/ul/li[1]/a")), text);
    }

    public void iVerifyPageLogoText(String text){
        verifyTextForElement(driver.findElement(By.cssSelector(".logo.valentino-icon-reports")), text);
    }

    public void iVerifyTextNotForTiles( String text){
        verifyTextNotPresentForElementFromList(".title>p", text);
    }
    
    public void iClickOnHamburgurMenuOnTop(){
    	iWillWaitToSee(By.xpath("//i[@class='btn btn-menu valentino-icon-spoe']"));
    	clickElement(driver.findElement(By.xpath("//i[@class='btn btn-menu valentino-icon-spoe']")));
    }
}

