package com.remedy.userAdmin;

import com.remedy.baseClass.BaseClass;
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

        iFillInText(driver.findElement(By.cssSelector(".elastic-input")), user);
        delay();
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



    public void iSeeUserAdminPageHeader(String pageHeader){

        verifyTextForElement(driver.findElement(By.cssSelector(".page-title-text")), pageHeader);
    }


   /* public void iSeeFirstNameinUserCard(String firstname){

        verifyContainTextForanElement(driver.findElement(By.cssSelector(".card-header-content>div>h3>span:nth-of-type(2)")), firstname);
    }*/

    public void iSelectSortOption(String desc){

        clickElement(driver.findElement( By.cssSelector(".sort-select")));
        selectElementByDesc(".ui-select-choices-row",  desc );
        delay();
    }

    public void iSeeSortOrderDefaultOption(String defaultoption){

        verifyTextForElement(driver.findElement(By.cssSelector(".sort-select")), defaultoption);
    }


    public void iVerifyUserCardCount(int cardCount){

        verifyElementCount(".card-view-body", cardCount);
    }


    public void iClickLoadMoreButton(){

        clickElement(driver.findElement(By.cssSelector(".btn.btn-auto-rounded")));
        longDelay();
    }


    public void iverifyFirstNameText(String firstName){

       verifyTextForElement(driver.findElement(By.xpath("//div[1]/div/div/h3/span[2]/span[1]")), firstName);
        longDelay();
    }

    public void iverifyLastNameText(String lastName){

        verifyTextForElement(driver.findElement(By.xpath("//div[1]/div/div/h3/span[1]/span[1]")), lastName);
        longDelay();
    }


    public void iverifyOrganizationalRoleForAUser(String OrganizationalRole){

        verifyTextForElement(driver.findElement(By.xpath("//div/div[4]/div[1]/div/div[2]/div[1]/div/div")), OrganizationalRole);
        longDelay();
    }


}
