package com.remedy.programManagement;


import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import static com.remedy.programManagement.ManagingOrgPO.createNewOrgButton;


/**
 * Created by aparlapalli on 1/24/17.
 */
public class PGPOrgPO extends BaseClass {


    public PGPOrgPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }


    @FindBy(linkText = "PGP")
    WebElement pgpTab;


    public boolean clickOnPgpTab() {

        pgpTab.click();
        return createNewOrgButton.isDisplayed();
    }


}


