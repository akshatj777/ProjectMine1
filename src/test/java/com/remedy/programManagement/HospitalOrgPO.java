package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

import static com.remedy.programManagement.ManagingOrgPO.createNewOrgButton;

/**
 * Created by aparlapalli on 1/31/17.
 */
public class HospitalOrgPO extends BaseClass {


    public HospitalOrgPO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }


    @FindBy(linkText = "Hospital")
    WebElement hospitalTab;

    @FindBy(css = "[class='n-organizations']")
    List<WebElement> noOfOrganizations;


    public boolean clickOnHospitalab() {

        hospitalTab.click();
        return createNewOrgButton.isDisplayed();
    }


    public String getNoOfOrgs() {

        String orgText;

        if (noOfOrganizations.size() > 0) {

            orgText = noOfOrganizations.get(0).getText();

        } else {

            orgText = "0 Organizations";
        }

        return orgText;

    }


}
