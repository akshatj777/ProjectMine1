package com.remedy.programManagement;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by aparlapalli on 1/18/17.
 */
public class HomePagePO extends BaseClass {

    public HomePagePO(WebDriver driver) {

        super(driver);
        PageFactory.initElements(driver, this);

    }


    @FindBy(css = "h1")
    WebElement homePageHeader;

    @FindBy(linkText = "Organization")
    WebElement organizationLink;


    @FindBy(id = "login-button")
    WebElement loginButton;

    @FindBy(css = "h3")
    WebElement organizationHeader;

    @FindBy(css = ".organization-type-selector ul ")
    List<WebElement> orgTypeSelectors;
    List<String> orgTypesSelectorList = new ArrayList<>();


    public void clickOnLoginButton() {

        loginButton.click();
    }


    public String getHomePageHeader() {

        return homePageHeader.getText();
    }


    public String getLoginButtonText() {

        return loginButton.getText();
    }


    public void clickOnOrganizationLink() {

        organizationLink.click();
    }


    public String getOrganizationHeader() {

        return organizationHeader.getText();

    }


    public List<String> getOrgTypesSelectors() {

        for (WebElement orgType : orgTypeSelectors) {

            orgTypesSelectorList.add(orgType.getText());
        }

        return orgTypesSelectorList;
    }

}
