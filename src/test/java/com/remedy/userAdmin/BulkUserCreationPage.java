package com.remedy.userAdmin;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebElement;
import org.openqa.selenium.support.ui.Select;


/**
 * Created by salam on 10/30/16.
 */
public class BulkUserCreationPage extends BaseClass{

    public BulkUserCreationPage (WebDriver driver ){
        super( driver);

    }


    public void iUplaodFile(){


        String filepath =  (System.getProperty("user.dir") + "/src/test/java/com/remedy/resources/bulkUserCreation.txt");
        WebElement elem = driver.findElement(By.cssSelector(".button-import>button"));
        elem.sendKeys(filepath);


    }

    public void iVerifySuccssfulUserCreationMessage(String text){

        verifyTextForElement(driver.findElement(By.xpath("//div[5]/div/div/div/div[2]/div/div[2]/div/span[2]")), text);
    }





}
