package com.remedy.programManagement.commons;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class AddressPO extends BaseClass {

    WebDriverWait wait = new WebDriverWait(driver, 10);

    public AddressPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }




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





    public void fillingAddressData(String addr1, String addr2, String city, String state, String postalCode) {

        inputAddress1.sendKeys(addr1);
        inputAddress2.sendKeys(addr2);
        inputCity.sendKeys(city);
        selectDropdownByValue(inputState, state);
        inputPostalCode.sendKeys(postalCode);

    }


}
