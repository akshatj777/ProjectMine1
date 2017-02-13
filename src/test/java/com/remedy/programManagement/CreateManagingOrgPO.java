package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.Alert;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreateManagingOrgPO extends BaseClass {

    WebDriverWait wait = new WebDriverWait(driver, 10);

    public CreateManagingOrgPO(WebDriver driver) {

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

    @FindBy(css = "[name ='address.address1']")
    WebElement inputAddress1;

    @FindBy(css = "[name ='address.address2']")
    WebElement inputAddress2;

    @FindBy(css = "[name ='address.city']")
    WebElement inputCity;

    @FindBy(css = "[name ='address.stateSelection']")
    WebElement inputState;

    @FindBy(css = "[name ='address.postalCode']")
    WebElement inputPostalCode;

    @FindBy(css = "[class ='col-md-1']")
    WebElement cancelButton;

    @FindBy(css = "[class='col-md-1 col-md-offset-7']")
    WebElement submitButton;

    @FindBy(css = "a[href^='#/organization-viewer/']")
    WebElement messageText;

    @FindBy(css = "[class='close']")
    WebElement closeButton;


    public void enterManOrgDetails(String mOrgName, String contactPerson, String contactEmail, String contactPhone) {

        inputMOrgName.sendKeys(mOrgName);
        inputContactPerson.sendKeys(contactPerson);
        inputContactEmail.sendKeys(contactEmail);
        inputContactPhone.sendKeys(contactPhone);

    }


    public void enterAddress(String addr1, String addr2, String city, String state, String postalCode) {

        inputAddress1.sendKeys(addr1);
        inputAddress2.sendKeys(addr2);
        inputCity.sendKeys(city);
        selectDropdownByValue(inputState, state);
        inputPostalCode.sendKeys(postalCode);

    }

    public String getSucessMessage() {

        return messageText.getText();
    }

    public void closeMessage() {

        closeButton.click();
    }

    public void createMorg(String mOrgName, String contactPerson, String contactEmail, String contactPhone, String addr1, String addr2, String city, String state, String postalCode) throws InterruptedException {

        enterManOrgDetails(mOrgName, contactPerson, contactEmail, contactPhone);
        enterAddress(addr1, addr2, city, state, postalCode);
        submitButton.click();

    }


    public void cancelCreateMorg(String mOrgName, String contactPerson, String contactEmail, String contactPhone, String addr1, String addr2, String city, String state, String postalCode) {

        enterManOrgDetails(mOrgName, contactPerson, contactEmail, contactPhone);
        enterAddress(addr1, addr2, city, state, postalCode);
        cancelButton.click();
    }


}
