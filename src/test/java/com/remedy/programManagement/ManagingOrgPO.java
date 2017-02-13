package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * Created by aparlapalli on 1/19/17.
 */
public class ManagingOrgPO extends BaseClass {

    public ManagingOrgPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }


    @FindBy(linkText = "Managing")
    WebElement managingTab;

    @FindBy(name = "createNewOrg")
    static WebElement createNewOrgButton;

    @FindBy(css = "[class ='row headline']")
    static WebElement createHeader;


    public boolean clickOnManagingTab() {

        managingTab.click();
        return createNewOrgButton.isDisplayed();
    }

    public static void clickOnCreateNewButton() {

        createNewOrgButton.click();

    }

    public static String getHeader() {

        return createHeader.getText();

    }


}
