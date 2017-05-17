package com.remedy.userAdmin;


import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 7/29/15.
 */
public class LandingPage extends BaseClass{

    public LandingPage(WebDriver driver){

        super(driver);}


    public void iVerifyTextforTiles( String text){
        verifyTextForElementfromList(".title>p", text);
    }
    
    public void iClickOnApplicateTile(String tile){
        delay();
        clickElement(driver.findElement(By.xpath(tile)));
        //selectElementByDesc(".title>p", tile);
        //longDelay();
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

