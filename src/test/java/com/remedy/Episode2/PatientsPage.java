package com.remedy.Episode2;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by ashish.ranjan on 24-11-2016.
 */
public class PatientsPage extends BaseClass{

    public PatientsPage(WebDriver driver){
        super(driver);
    }

    public void iVerifyTabInFilterBarOnPatientsPage(String elementText){
        verifyTextForElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+elementText+"')]]]")), elementText);
    }

    public void iClickTabInFilterBarOnPatientsPage(String elementTextXpath){
        clickElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+elementTextXpath+"')]]]")));
    }

    public void iVerifyViewSectionOnPatientsPage(String elementText) {
        verifyTextForElement(driver.findElement(By.xpath("//span[text()='View:']")), elementText);
    }

    public void iVerifyViewAsActiveViewOnPatientsPage(By element) {
        verifyElementAttributeContainsValue(driver.findElement(element),"class","active");
    }

    public void iClickViewOnPatientsPage(String viewElement) {
        clickElement(driver.findElement(By.cssSelector(viewElement)));
    }

}
