package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import com.remedy.programManagement.helpers.AddressPO;
import com.remedy.programManagement.helpers.ContactDetailsPO;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class CreatePayorPO extends BaseClass {


    WebDriverWait wait = new WebDriverWait(driver, 10);
    AddressPO address = new AddressPO(driver);
    ContactDetailsPO contactDetails = new ContactDetailsPO(driver);


    public CreatePayorPO(WebDriver driver) {

        super(driver);

    }


    @FindBy(css = "[name ='ein']")
    WebElement inputEin;


    public void identifiersForm(String ein) {

        inputEin.sendKeys(ein);
    }


    public void fillPayorOrgForm(String pOrgName, String contactPerson, String contactEmail, String contactPhone, String addr1, String addr2, String city, String state, String postalCode, String ein) throws InterruptedException {

        String orgName = generateRandonName(pOrgName);
        contactDetails.orgDetailsForm(orgName, contactPerson, contactEmail, contactPhone);
        address.addressDataForm(addr1, addr2, city, state, postalCode);
        identifiersForm(ein);
        scrollToBottomOfPageUsingJS();

    }

}
