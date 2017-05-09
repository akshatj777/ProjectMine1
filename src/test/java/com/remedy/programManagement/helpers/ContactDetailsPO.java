package com.remedy.programManagement.helpers;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class ContactDetailsPO extends BaseClass {

    WebDriverWait wait = new WebDriverWait(driver, 10);

    public ContactDetailsPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }

    @FindBy(css = "[name ='organizationName']")
    WebElement inputMOrgName;

    @FindBy(css = "[name ='contactPerson']")
    WebElement inputContactPerson;

    @FindBy(css = "[name ='contactEmail']")
    WebElement inputContactEmail;

    @FindBy(css = "[name ='contactPhone']")
    WebElement inputContactPhone;


    public void orgDetailsForm(String orgName, String contactPerson, String contactEmail, String contactPhone) {

        inputMOrgName.sendKeys(orgName);
        inputContactPerson.sendKeys(contactPerson);
        inputContactEmail.sendKeys(contactEmail);
        inputContactPhone.sendKeys(contactPhone);

    }

}
