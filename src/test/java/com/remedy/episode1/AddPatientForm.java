package com.remedy.episode1;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 5/10/16.
 */
public class AddPatientForm extends BaseClass {


    public AddPatientForm(WebDriver driver){

        super(driver);
    }


    public void iverifyPatientFormHeadr(String text ){

        verifyTextForElement(driver.findElement(By.cssSelector(".clearfix>h2")), text);

    }



    public void iclickAddPatientButton(){

        clickElement(driver.findElement(By.cssSelector("#patient-add-button")));


    }
}
