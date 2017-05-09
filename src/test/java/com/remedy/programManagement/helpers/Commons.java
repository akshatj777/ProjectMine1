package com.remedy.programManagement.helpers;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.remedy.baseClass.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * Created by aparlapalli on 2/2/17.
 */
public class Commons extends BaseClass{




    @FindBy(name = "createNewOrg")
    static WebElement createNewOrgButton;

    @FindBy(css = "[class ='row headline']")
    static WebElement createHeader;


    @FindBy(css = "[class ='col-md-1']")
    WebElement cancelButton;

    @FindBy(css = "[class='col-md-1 col-md-offset-7']")
    WebElement submitButton;

    @FindBy(css = "a[href^='#/organization-viewer/']")
    WebElement messageText;

    @FindBy(css = "[class='close']")
    WebElement closeButton;

    @FindBy(css = "[name ='hasManagementOrg']")
    List<WebElement> hasManagingOrgButton;

    @FindBy(css = "input[class ='Select-input']")
    WebElement inputMorg;


    public Commons(WebDriver driver) {
        super(driver);
        PageFactory.initElements(driver, this);
    }


    public static void clickOnCreateNewButton() {

        createNewOrgButton.click();

    }

    public static String getHeader() {

        return createHeader.getText();

    }

    public boolean getCreateNewButtonStatus() {

        return createNewOrgButton.isDisplayed();
    }

    public String getSucessMessage() {

        return messageText.getText();
    }

    public void closeMessage() {

        closeButton.click();
    }

    public void submitForm() throws InterruptedException {

        submitButton.click();

    }

    public void cancelForm() throws InterruptedException {

        cancelButton.click();

    }



    // to split data from cucumber file if there are multiple values for a field
    public static List<String> splitList(String dataToSplit) {

        // List<String> dataNoSplit = new ArrayList<>();

        return Lists.newArrayList(Splitter.on(",").trimResults().split(dataToSplit));

    }


    public void enterAndSelectMorg(int idx, String orgName) throws InterruptedException {

        if (idx == 0) {

            hasManagingOrgButton.get(idx).click();
            inputMorg.sendKeys(orgName);
            selectAnItemFromComboBoxWKeyPress();
            driver.findElement(By.tagName("body")).click();
        } else {

            hasManagingOrgButton.get(idx).click();


        }
    }


    //to generate timestamp
    public String generateRandonName(String cucmberData) {

        DateFormat df = new SimpleDateFormat("MMddyyyyHHmmss");
        String name ="";

        Date date = new Date();
        String timeStamp = df.format(date);

        String convertedName = convertIntToChar(timeStamp);
        name = cucmberData + convertedName;
        return name;
    }


    //to convert timestamp each digit to char
    public String convertIntToChar(String timeStamp) {

        List<String>  charRep = Arrays.asList("a","b","c","d","e","f","g","h","i","j") ;

        String newTimeStamp = "";

        for (int i = 0; i < timeStamp.length(); i++) {

            Integer ind = Character.getNumericValue(timeStamp.charAt(i));
            newTimeStamp = newTimeStamp + charRep.get(ind);


        }
        return newTimeStamp;
    }
}
