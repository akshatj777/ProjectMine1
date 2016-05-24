package com.remedy.RemedyU;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 5/6/16.
 */
public class RemedyUHomePage extends BaseClass {

    public RemedyUHomePage(WebDriver driver){

        super(driver);
    }


    public void iverifyRemedyUpageHeader(String text ){

        verifyTextForElement(driver.findElement(By.cssSelector("..logo.valentino-icon-reports")), text);

    }
}
