package com.remedy.pageObject;


import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 7/29/15.
 */
public class LandingPage extends BaseClass{

    public LandingPage(WebDriver driver){

        super(driver);}


    public void iVerifyTextforTiles(String text){

            verifyTextForElement(".spoe-button>p", text);
    }


    public void iClickOnApplicateTile(String tile){

      //  clickElement(driver.findElement(By.cssSelector(tile)));
        selectElementByDesc(".spoe-button>p", tile);

    }






}

