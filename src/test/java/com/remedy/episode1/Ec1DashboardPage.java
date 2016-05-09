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


}
