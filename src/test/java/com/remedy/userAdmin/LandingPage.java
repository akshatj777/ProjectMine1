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
    	iWillWaitToSee(By.cssSelector(".title>p"));
       	if(text.isEmpty()!=true){
    		verifyTextForElementfromList(".title>p", text);
    	}
    }
       
    public void iClickOnApplicateTile(String tile){
        delay();
        clickElement(driver.findElement(By.xpath(tile)));
    }

    public void iSwitchToNewWindow(){
    	delay();
        switchToNewWindow();
    }

    public void iSwitchBackToOldWindow(){
    	delay();
        switchBacktoOldWindow();
    }
    
    public void iClickProfileIconOnRemedyConnectPage(){
    	clickElement(driver.findElement(By.cssSelector(".btn.btn-menu.valentino-icon-profile")));
    }
    
    public void iSelectValueFromProfileIconDropDown(String text){
    	clickSingleElementFromList(By.cssSelector(".btn.btn-flyout-nav"), text);
    }

    public void iClickOnTheTopUserAccountIcon (){
        delay();
        if (driver.findElements(By.xpath("//div[@class='ui dropdown menu-profile-btn']")).size()>0){
         clickElement(driver.findElement(By.xpath("//div[@class='ui dropdown menu-profile-btn']")));
        }
        else{
            clickElement(driver.findElement(By.xpath("//menu-dropdown[contains(@class,'flex-item item-dropdown-right')]")));
        }
       }
    
    public void iClickOnTheTopUserAccountIconAndClickOnButton(String button){
        delay();
        if (driver.findElements(By.xpath("//div[@class='ui dropdown menu-profile-btn']")).size()>0){
         clickElement(driver.findElement(By.xpath("//div[@class='ui dropdown menu-profile-btn']")));
        }
        else{
            clickElement(driver.findElement(By.xpath("//menu-dropdown[contains(@class,'flex-item item-dropdown-right')]")));
        }
        clickElement(driver.findElement(By.xpath("//a[contains(text(),'Log Out')]")));
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

