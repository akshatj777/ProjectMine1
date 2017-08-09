package com.remedy.userAdmin;


import com.remedy.baseClass.BaseClass;
//import org.apache.commons.collections.set.SynchronizedSet;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 7/29/15.
 */
public class LandingPage extends BaseClass{

    public LandingPage(WebDriver driver){

        super(driver);}

    public void iVerifyTextforTiles(String text){
    
       	if(text.isEmpty()!=true){
    		verifyTextForElementfromList(".title>p", text);
    	}
    }
       
    public void iClickOnApplicateTile(String tile){
        delay();
        iWillWaitToSee(By.xpath(tile));
        clickElement(driver.findElement(By.xpath(tile)));
        delay();
    }

    public void iSwitchToNewWindow(){
        switchToNewWindow();
    }

    public void iSwitchBackToOldWindow(){
        switchBacktoOldWindow();
    }

    public void iClickOnTheTopUserAccountIcon (){
        clickElement(driver.findElement(By.cssSelector(".valentino-icon-profile")));
    }

    public void iSelectFromTopUserAccountDropDown(String link){
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
    	clickElement(driver.findElement(By.xpath("//i[@class='btn btn-menu valentino-icon-spoe']")));
    }
}

