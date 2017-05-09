package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreatePGPPO extends BaseClass {

    WebDriverWait wait = new WebDriverWait(driver, 10);

    public CreatePGPPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }

    @FindBy(css = "[name ='hasManagementOrg']")
    List<WebElement> hasManagingOrgButton;

    @FindBy(css = "input[class ='Select-input']")
    WebElement inputMorg;

    @FindBy(css = "[class ='Select-menu-outer']")
    WebElement selectMenu;

    @FindBy(css = ".error-message")
    WebElement errorMsg;


    @FindBy(css = "[name ='organizationName']")
    WebElement inputMOrgName;

    @FindBy(css = "[name ='shortName']")
    WebElement inputShortName;

    @FindBy(css = "[name ='regionMarket.regionSelector']")
    WebElement inputRegion;

    @FindBy(css = "[name ='regionMarket.marketSelector']")
    WebElement inputMarket;

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

    @FindBy(css = "[name ='ein']")
    WebElement inputEin;

    @FindBy(css = "[name ='npi']")
    WebElement inputNpi;

    @FindBy(css = "[class ='col-md-1']")
    WebElement cancelButton;

    @FindBy(css = "[class='col-md-1 col-md-offset-7']")
    WebElement submitButton;


    public void enterAndSelectMorg(int idx, String mOrgName) throws InterruptedException {

        if (idx == 0) {

            hasManagingOrgButton.get(idx).click();
            inputMorg.sendKeys(mOrgName);
            selectAnItemFromComboBoxWKeyPress();
            driver.findElement(By.tagName("body")).click();
        } else {

            hasManagingOrgButton.get(idx).click();


        }
    }


    public void pgpDetailsForm(String OrgName, String shortName, String region, String market) {

        inputMOrgName.sendKeys(OrgName);
        inputShortName.sendKeys(shortName);
        selectDropdownByValue(inputRegion, region);
        selectDropdownByValue(inputMarket, market);

    }


    public void addressForm(String addr1, String addr2, String city, String state, String postalCode) {

        inputAddress1.sendKeys(addr1);
        inputAddress2.sendKeys(addr2);
        inputCity.sendKeys(city);
        selectDropdownByValue(inputState, state);
        inputPostalCode.sendKeys(postalCode);

    }

    public void identifiers(String ein, String npi) {
        inputEin.sendKeys(ein);
        inputNpi.sendKeys(npi);

    }


    public void createPgpOrgWNMorg(String orgName, String shortName, String region, String market, String addr1, String addr2, String city, String state, String postalCode, String ein, String npi) throws InterruptedException {


        enterAndSelectMorg(1, "");
        pgpDetailsForm(orgName, shortName, region, market);
        addressForm(addr1, addr2, city, state, postalCode);
        identifiers(ein, npi);
        scrollToBottomOfPageUsingJS();
        submitButton.click();


    }

    public void createPgpOrgWMorg(String mOrgName, String orgName, String shortName, String region, String market, String addr1, String addr2, String city, String state, String postalCode, String ein, String npi) throws InterruptedException {


        enterAndSelectMorg(0, mOrgName);
        pgpDetailsForm(orgName, shortName, region, market);
        addressForm(addr1, addr2, city, state, postalCode);
        identifiers(ein, npi);
        scrollToBottomOfPageUsingJS();
        submitButton.click();

    }


    public void cancelCreatePgpOrg(String orgName, String shortName, String region, String market, String addr1, String addr2, String city, String state, String postalCode, String ein, String npi) throws InterruptedException {

        enterAndSelectMorg(1, "");
        pgpDetailsForm(orgName, shortName, region, market);
        addressForm(addr1, addr2, city, state, postalCode);
        identifiers(ein, npi);
        scrollToBottomOfPageUsingJS();
        cancelButton.click();

    }


}
