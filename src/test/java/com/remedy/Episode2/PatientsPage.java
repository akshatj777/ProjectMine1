package com.remedy.Episode2;

import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

/**
 * Created by ashish.ranjan on 24-11-2016.
 */
public class PatientsPage extends BaseClass{

    public PatientsPage(WebDriver driver){
        super(driver);
    }

    public void iVerifyTabInFilterBarOnPatientsPage(String elementText){
        verifyTextForElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+elementText+"')]]]")), elementText);
    }

    public void iClickTabInFilterBarOnPatientsPage(String elementTextXpath){
        clickElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'"+elementTextXpath+"')]]]")));
    }

    public void iVerifyViewSectionOnPatientsPage(String elementText) {
        verifyTextForElement(driver.findElement(By.xpath("//span[text()='View:']")), elementText);
    }

    public void iVerifyViewAsActiveViewOnPatientsPage(By element) {
        verifyElementAttributeContainsValue(driver.findElement(element),"class","active");
    }

    public void iVerifyToHaveViewOptionOnPatientsPage(By element , String viewOptions) {
        verifyElementAttributeContainsValue(driver.findElement(element),"ng-click", viewOptions);
    }

    public void iClickViewOnPatientsPage(String viewElement) {
        clickElement(driver.findElement(By.cssSelector(viewElement)));
    }

    public void iEnterInPatientSearchFieldOnPatientsPage(String patientName){
        iFillInText(driver.findElement(By.xpath("//div[@placeholder='Search Name']/div/input")), patientName);
    }

    public void iVerifyPatientSearchedResultContainsTextOnPatientPage(String patientNameText){
        verifyTextForElementFromListByXpath("//div[@class='card-header-content']/div/h3", patientNameText);
    }

    public void iVerifyFilterButtonOnPatientPage(String elementText) {
        verifyTextForElement(driver.findElement(By.xpath("//button[span[span[contains(text(),'Filters')]]]")), elementText);
    }

    public void iVerifySeeAsPlaceholderForSearchOnPatientPage(String elementText) {
        verifyElementAttributeContainsValue(driver.findElement(By.cssSelector("i.valentino-icon-search ~ input")), "placeholder", elementText);
    }

    public void iVerifyTheTotalPatientCountOnPatientPage(){
        isElementVisible(driver.findElement(By.cssSelector("div.ng-scope>div>strong.ng-binding")));
    }

    public void i_should_see_link(String ExportText){
        verifyTextForElement(driver.findElement(By.cssSelector(".export-link>a")), ExportText);
    }

    public void i_should_see_text_is_present(String SortByText){
        verifyTextForElement(driver.findElement(By.xpath("//strong[@class='sort-select-label']")), SortByText);
    }

    public void i_should_see_Refresh_button_is_present(){
        isElementVisible(driver.findElement(By.cssSelector("button.btn-reload")));
    }

}
