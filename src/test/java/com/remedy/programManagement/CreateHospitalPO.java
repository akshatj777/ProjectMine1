package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.remedy.programManagement.helpers.Commons;

import java.util.List;

/**
 * Created by aparlapalli on 1/31/17.
 */
public class CreateHospitalPO extends BaseClass {


    WebDriverWait wait = new WebDriverWait(driver, 10);

    public CreateHospitalPO(WebDriver driver) {

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
    WebElement inputOrgName;

    @FindBy(css = "[name ='shortName']")
    WebElement inputShortName;


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

    @FindBy(css = "[name ='ccn']")
    WebElement inputCCN;

    @FindBy(css = "[name ='ein']")
    WebElement inputEin;

    @FindBy(css = "[name ='npi']")
    WebElement inputNpi;

    @FindBy(css = "[class ='col-md-1']")
    WebElement cancelButton;

    @FindBy(css = "[class='col-md-1 col-md-offset-7']")
    WebElement submitButton;

    @FindBy(css = "[name ='AddLocation']")
    WebElement addLocationButton;

    @FindBy(css = "[name*='.locationName']")
    List<WebElement> inputLocName;

    @FindBy(css = "input[class ='Select-input']")
    List<WebElement> inputLocType;

    @FindBy(css = "[name*='.regionSelector']")
    List<WebElement> inputLocRegion;

    @FindBy(css = "[name*='.marketSelector']")
    List<WebElement> inputLocMarket;

    @FindBy(css = "input[name*='.address.address1']")
    List<WebElement> inputLocAddress1;

    @FindBy(css = "input[name*='.address.address2']")
    List<WebElement> inputLocAddress2;

    @FindBy(css = "input[name*='.address.city']")
    List<WebElement> inputLocCity;

    @FindBy(css = "[name*='.address.stateSelection']")
    List<WebElement> inputLocState;

    @FindBy(css = "input[name*='.address.postalCode']")
    List<WebElement> inputLocZip;


    public void selectHasorNoManOrg(int idx, String mOrgName) {

        if (idx == 0) {

            hasManagingOrgButton.get(idx).click();
            inputMorg.sendKeys(mOrgName);
//            selectAnItemFromComboBoxWKeyPress();
            driver.findElement(By.tagName("body")).click();
        } else {

            hasManagingOrgButton.get(idx).click();

        }

    }


    public void hospOrgDetailsForm(String name, String shortName, String addr1, String addr2, String city, String state, String postalCode) {

        inputOrgName.sendKeys(name);
        inputShortName.sendKeys(shortName);
        inputAddress1.sendKeys(addr1);
        inputAddress2.sendKeys(addr2);
        inputCity.sendKeys(city);
//        selectDropdownByValue(inputState, state);
        inputPostalCode.sendKeys(postalCode);

    }

    public void hospOrgIdentifiersForm(String ccn, String ein, String npi) {

        inputCCN.sendKeys(ccn);
        inputEin.sendKeys(ein);
        inputNpi.sendKeys(npi);

    }

    public void hospOrgLocationsForm(int idx, String locName, String locType, String regionId, String marketId, String addr1, String addr2, String city, String state, String postalCode) {

        inputLocName.get(idx).sendKeys(locName);
        inputLocType.get(idx).sendKeys(locType);
        inputLocType.get(idx).sendKeys(Keys.ENTER);
        new Select(inputLocRegion.get(idx)).selectByValue(regionId);
        new Select(inputLocMarket.get(idx)).selectByValue(marketId);
        inputLocAddress1.get(idx).sendKeys(addr1);
        inputLocAddress2.get(idx).sendKeys(addr2);
        inputLocCity.get(idx).sendKeys(city);
        new Select(inputLocState.get(idx)).selectByValue(state);
        inputLocZip.get(idx).sendKeys(postalCode);

    }


    public void selectMultiplehospOrgLocTypes(int idx, String locName, String locType, String regionId, String marketId, String addr1, String addr2, String city, String state, String postalCode) {

        inputLocName.get(idx).sendKeys(locName);
        inputLocType.get(idx).sendKeys(locType);
        inputLocType.get(idx).sendKeys(Keys.ENTER);
        inputLocType.get(idx).sendKeys(Keys.ARROW_DOWN);
        inputLocType.get(idx).sendKeys(Keys.ENTER);
        inputLocType.get(idx).sendKeys(Keys.ARROW_DOWN);
        inputLocType.get(idx).sendKeys(Keys.ENTER);
        new Select(inputLocRegion.get(idx)).selectByValue(regionId);
        new Select(inputLocMarket.get(idx)).selectByValue(marketId);
        inputLocAddress1.get(idx).sendKeys(addr1);
        inputLocAddress2.get(idx).sendKeys(addr2);
        inputLocCity.get(idx).sendKeys(city);
        new Select(inputLocState.get(idx)).selectByValue(state);
        inputLocZip.get(idx).sendKeys(postalCode);

    }


    public void addLoc() {

        addLocationButton.click();
    }


    public void cancelCreateHospitalOrg(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String postalCode, String locName, String locType, String marketId, String regionId) throws InterruptedException {

        selectHasorNoManOrg(1, "");
        hospOrgDetailsForm(name, shortName, addr1, addr2, city, state, postalCode);
        hospOrgIdentifiersForm(ccn, ein, npi);
        hospOrgLocationsForm(0, locName, locType, regionId, marketId, addr1, addr2, city, state, postalCode);
//        scrollToBottomOfPageUsingJS();
        cancelButton.click();

    }

    public void createHospitalOrgWOneLoc(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String postalCode, String locName, String locType, String marketId, String regionId) throws InterruptedException {

        selectHasorNoManOrg(1, "");
        hospOrgDetailsForm(name, shortName, addr1, addr2, city, state, postalCode);
        hospOrgIdentifiersForm(ccn, ein, npi);
        hospOrgLocationsForm(0, locName, locType, regionId, marketId, addr1, addr2, city, state, postalCode);
//      scrollToBottomOfPageUsingJS();
        submitButton.click();

    }


    public void createHospitalOrgWOneLocMultipleLocTypes(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String postalCode, String locName, String locType, String marketId, String regionId) throws InterruptedException {

        selectHasorNoManOrg(1, "");
        hospOrgDetailsForm(name, shortName, addr1, addr2, city, state, postalCode);
        hospOrgIdentifiersForm(ccn, ein, npi);
        selectMultiplehospOrgLocTypes(0, locName, locType, regionId, marketId, addr1, addr2, city, state, postalCode);
//        scrollToBottomOfPageUsingJS();
        submitButton.click();

    }


    public void createHospitalOrgNoMorgWMultipleLoc(String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String postalCode, String locName, String locType, String marketId, String regionId, String locAddr1, String locAddr2, String locCity, String locState, String locZip) throws InterruptedException {

        selectHasorNoManOrg(1, "");
        hospOrgDetailsForm(name, shortName, addr1, addr2, city, state, postalCode);
        hospOrgIdentifiersForm(ccn, ein, npi);
//        scrollToBottomOfPageUsingJS();

        for (int i = 0; i < Commons.splitList(locName).size(); i++) {

            hospOrgLocationsForm(i, Commons.splitList(locName).get(i), Commons.splitList(locType).get(i), Commons.splitList(regionId).get(i), Commons.splitList(marketId).get(i), Commons.splitList(locAddr1).get(i), Commons.splitList(locAddr2).get(i), Commons.splitList(locCity).get(i), Commons.splitList(locState).get(i), Commons.splitList(locZip).get(i));
//            scrollToBottomOfPageUsingJS();
            if (i < (Commons.splitList(locName).size()) - 1) {
                addLoc();
            }
        }
        submitButton.click();

    }


    public void createHospOrgWHasMOrgAndMultipleLoc(String mOrgName, String name, String shortName, String ccn, String ein, String npi, String addr1, String addr2, String city, String state, String postalCode, String locName, String locType, String marketId, String regionId, String locAddr1, String locAddr2, String locCity, String locState, String locZip) throws InterruptedException {

        selectHasorNoManOrg(0, mOrgName);
        hospOrgDetailsForm(name, shortName, addr1, addr2, city, state, postalCode);
        hospOrgIdentifiersForm(ccn, ein, npi);
//        scrollToBottomOfPageUsingJS();

        for (int i = 0; i < Commons.splitList(locName).size(); i++) {

            hospOrgLocationsForm(i, Commons.splitList(locName).get(i), Commons.splitList(locType).get(i), Commons.splitList(regionId).get(i), Commons.splitList(marketId).get(i), Commons.splitList(locAddr1).get(i), Commons.splitList(locAddr2).get(i), Commons.splitList(locCity).get(i), Commons.splitList(locState).get(i), Commons.splitList(locZip).get(i));
//            scrollToBottomOfPageUsingJS();
            if (i < (Commons.splitList(locName).size()) - 1) {
                addLoc();
            }
        }
        submitButton.click();

    }

}







