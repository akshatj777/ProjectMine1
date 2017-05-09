package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import com.remedy.programManagement.helpers.AddressPO;
import com.remedy.programManagement.helpers.ContactDetailsPO;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.remedy.programManagement.helpers.Commons;

/**
 * Created by aparlapalli on 1/20/17.
 */
public class ManagingOrgPO extends BaseClass {

    WebDriverWait wait = new WebDriverWait(driver, 10);
    AddressPO address = new AddressPO(driver);
    ContactDetailsPO contactDetails = new ContactDetailsPO(driver);
    Commons commonLib = new Commons(driver);
    static String mOrgName, name;


    @FindBy(linkText = "Managing")
    WebElement managingTab;


    public ManagingOrgPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }

    public void clickOnManagingTab() {

        managingTab.click();
    }

    public static String getmOrgName(){

        System.out.println("mOrgName"+mOrgName);
        return mOrgName;
    }

    public void fillMorgForm(String manOrgName, String contactPerson, String contactEmail, String contactPhone, String addr1, String addr2, String city, String state, String postalCode) throws InterruptedException {

        mOrgName = commonLib.generateRandonName(manOrgName);

        contactDetails.orgDetailsForm(mOrgName, contactPerson, contactEmail, contactPhone);
        address.addressDataForm(addr1, addr2, city, state, postalCode);
        scrollToBottomOfPageUsingJS();

    }


}
