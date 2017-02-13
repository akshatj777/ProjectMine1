package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import static com.remedy.programManagement.ManagingOrgPO.createNewOrgButton;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class PayorOrgPO extends BaseClass {

    public PayorOrgPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }


    @FindBy(linkText = "Payor")
    WebElement payorTab;


    public boolean clickOnPayorTab() {

        payorTab.click();
        return createNewOrgButton.isDisplayed();
    }


}
