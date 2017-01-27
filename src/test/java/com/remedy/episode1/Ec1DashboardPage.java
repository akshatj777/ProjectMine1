package com.remedy.episode1;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 5/6/16.
 */
public class Ec1DashboardPage extends BaseClass{


    public Ec1DashboardPage(WebDriver driver){

        super(driver);
    }



    public void iverifyPageHeader(String text ){

        verifyTextForElement(driver.findElement(By.cssSelector(".ec2-embed-patient-name")), text);


    }

    public void iexapndsPatiensListTab(){

        clickElement(driver.findElement(By.cssSelector("#patientsListOpenClose")));


    }

    public void iclickPatiensList(){

        clickElement(driver.findElement(By.cssSelector("#patientsFilter>li:nth-child(1)")));
        delay();


    }

    public void iverifyMyPatient(String text ){

        verifyTextForElement(driver.findElement(By.cssSelector("#ui-nav-tab-dashboard-filter_myPatients")), text);


    }

    public void iclickOnAddPainetButton(){

        clickElement(driver.findElement(By.cssSelector("#patient-add-button")));
        delay();

    }


    public void iverifyEc1DashboardHeaderText(String text ){

        verifyTextForElement(driver.findElement(By.cssSelector(".ec2-embed-patient-name")), text);


    }
    
    public void iShouldSeeUserProfileIconOnProductTilePage(){
    	isElementVisible(driver.findElement(By.cssSelector("menu-toggle.flex-right")));
    }
    
    public void iClickOnTheUserProfileIconPresentOnTheProductTilePage(){
        clickElement(driver.findElement(By.cssSelector("menu-toggle.flex-right")));
    }
    public void iClickOnLogoutButtonPresentOnTheUserProfileDropDown(){
    	clickElement(driver.findElement(By.xpath("//a[contains(text(),'Log Out')]")));
    }
    
    public void iShouldSeeAlertsPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage(){
    	isElementVisible(driver.findElement(By.cssSelector("li#header_notification_bar")));
    }

    public void iShouldSeeMessegesPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage(){
    	isElementVisible(driver.findElement(By.cssSelector("li#header_inbox_bar")));
    }
    
    public void iShouldSeeNotificationsPresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage(){
    	isElementVisible(driver.findElement(By.cssSelector("li#header_task_count_bar")));
    }
    
    public void iShouldSeeUserProfilePresentOnTheTopNavBarPresentOnTheEpisodeDashboardPage(){
    	isElementVisible(driver.findElement(By.cssSelector("span.username")));
    }
    
    public void iShouldSeeInTheLeftNavigatorPresentOnTheEpisodeDashboardPage(String text){
    	isElementVisible(driver.findElement(By.xpath("//span[@class='title'and text()='Dashboard']")));
    }
    
    public void iShouldSeeRefreshButtonIsPresentOnTheEpisodeDashboardPage(){
    	isElementVisible(driver.findElement(By.cssSelector("a.refreshPatientsListContainer")));
    }
    
    public void iShouldSeeUserProfileIconOnTheEpisodeDashboardPage(){
    	isElementVisible(driver.findElement(By.cssSelector("span.username")));
    }
    
    public void iMoveTheMouseToUserProfileIcon(){
    	moveToTheElement(driver.findElement(By.cssSelector("span.username")));
    }
    
    public void iClickOnReturnOnRemedyConnectPresentOn_TheUserProfileDropdown(){
    	clickElement(driver.findElement(By.cssSelector("a#navbar-dropdown-menu-logout")));
    }
    

}
