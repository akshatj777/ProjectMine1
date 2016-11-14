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


}
