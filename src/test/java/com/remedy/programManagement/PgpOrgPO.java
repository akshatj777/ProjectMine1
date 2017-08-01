package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import com.remedy.programManagement.helpers.AddressPO;
import com.remedy.programManagement.helpers.Commons;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class PgpOrgPO extends BaseClass {

    WebDriverWait wait = new WebDriverWait(driver, 10);
    AddressPO address = new AddressPO(driver);
    Commons commonLib = new Commons(driver);


    public PgpOrgPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }

    @FindBy(linkText = "PGP")
    WebElement pgpTab;

    @FindBy(css = "[class ='Select-menu-outer']")
    WebElement selectMenu;

    @FindBy(css = "[name ='organizationName']")
    WebElement inputMOrgName;

    @FindBy(css = "[name ='shortName']")
    WebElement inputShortName;

    @FindBy(css = "[name ='regionMarket.regionSelector']")
    WebElement inputRegion;

    @FindBy(css = "[name ='regionMarket.marketSelector']")
    WebElement inputMarket;

    @FindBy(css = "[name ='ein']")
    WebElement inputEin;

    @FindBy(css = "[name ='npi']")
    WebElement inputNpi;

    public void clickOnPgpTab() {

        pgpTab.click();

    }


    public void pgpDetailsForm(String OrgName, String shortName, String region, String market) {

        inputMOrgName.sendKeys(OrgName);
        inputShortName.sendKeys(shortName);
//        selectDropdownByValue(inputRegion, region);
//        selectDropdownByValue(inputMarket, market);

    }


    public void identifiers(String ein, String npi) {

        inputEin.sendKeys(ein);
        inputNpi.sendKeys(npi);

    }

    public void pgpOrgForm(String pOrgName, String shortName, String region, String market, String addr1, String addr2, String city, String state, String postalCode, String ein, String npi) throws InterruptedException {

        String orgName = commonLib.generateRandonName(pOrgName);
        pgpDetailsForm(orgName, shortName, region, market);
        address.addressDataForm(addr1, addr2, city, state, postalCode);
        identifiers(ein, npi);
//        scrollToBottomOfPageUsingJS();

    }

}
