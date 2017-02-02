package com.remedy.episode1;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 5/10/16.
 */
public class PatientsListPage extends BaseClass {

    public PatientsListPage(WebDriver driver){

        super(driver);
    }


    public void iverifyPatientListPageheader(String text ){

        verifyTextForElement(driver.findElement(By.cssSelector(".ec2-embed-patient-name")), text);

    }
    
    public void iClickOnTheLeftNavigatorPresentOnTheEpisodeDashboardPage(String text){
    	clickElement(driver.findElement(By.cssSelector("a#patientsListOpenClose")));
    }
    
    public void iShouldSeeInThePatientsDropdownMenu(String text){
    	isElementVisible(driver.findElement(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]")));	
    }

    public void iClickOnInThePatientsDropdownMenu(String text){
    	clickElement(driver.findElement(By.xpath("//ul[@id='patientsFilter']//*[contains(text(),'"+text+"')]")));
    }

    public void iClickOnPinToDashboardInToPinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(2)>a")));
    }
    
    public void iClickOnUnpinFromDashboardInToPinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(2)>a")));
    }
    
    public void iClickOnPinToBookmarksInToPinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(3)>a")));
    }
    
    public void iClickOnUnpinFromBookmarksInToUnpinTheFilterToDashboard(String text){
    	clickElement(driver.findElement(By.cssSelector("a[data-name='Inpatient Episodes']~ul>li:nth-child(3)>a")));
    }
}
