package com.remedy.pageObject;

import com.remedy.baseClass.BaseClass;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

/**
 * Created by salam on 7/29/15.
 */
public class UserAdminHomePage extends BaseClass {

    public UserAdminHomePage(WebDriver driver) {

        super(driver);
    }


    public void clickCreateUserButton() {

        clickElement(driver.findElement(By.cssSelector(".space.space-top-x2")));
    }

    public void enterSerchUserText(String user) {

        iFillInText(driver.findElement(By.xpath("//*[@id='searchBar']/div[1]/div/input")), user);
    }

    public void iClickResetFilterButton() {

        clickElement(driver.findElement(By.cssSelector("#searchBar>div>button")));
    }


    public void iClickOnSearchFilterField() {

        clickElement(driver.findElement(By.cssSelector(".ui-select-toggle")));
    }

    public void iSelectFacilityForFilter(String facility) {

        selectElementByDesc(".ui-select-choices-row", facility);
    }


    public void iClickonCardViewIcon(){

        clickElement(driver.findElement(By.cssSelector(".btn btn-secondary.rp-icon-card-view")));
    }

    public void iClickonTableViewIcon(){

        clickElement(driver.findElement(By.cssSelector(".btn.btn-secondary.rp-icon-table-view")));
    }

    public void iClickOnViewProfileIcon(int inx){

        clickElement(driver.findElements(By.cssSelector(".rp-icon-expand")).get(inx));
    }



    public void iClickViewProfileLinkByIndex(int ind){

        clickElement(driver.findElements(By.linkText("View Profile")).get(ind));
    }

    public void iClickCancelButton(){

        clickElement(driver.findElement(By.cssSelector(".btn.btn-secondary.pull-right")));
    }


}
