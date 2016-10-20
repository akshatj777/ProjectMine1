package com.remedy.baseClass;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;


import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * Created by salam on 7/27/15.
 */
public class BaseClass {


    public WebDriver driver = null;
    protected static long Wait_Time = 2000L;
    protected static long delay_Time = 3000L;
    protected static long LongDelay_Time = 5000L;

    public BaseClass(final WebDriver driver) {

        this.driver = driver;
    }

    public void delay() {
        try {
            Thread.sleep(delay_Time);
        } catch (InterruptedException e) {
            e.printStackTrace();

        }
    }

    public void longDelay() {
        try {
            Thread.sleep(LongDelay_Time);
        } catch (InterruptedException e) {
            e.printStackTrace();

        }
    }

    public boolean isElementVisible(final WebElement ele) {
        long start = System.currentTimeMillis();
        while (true) {
            if (ele.isDisplayed()) {
                return true;
            } else {
                if (System.currentTimeMillis() - start >= Wait_Time) {
                    throw new Error("Timeout reached element not visible");
                } else {
                    try {
                        synchronized (this) {
                            wait(200);
                        }
                    } catch (final InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public WebElement waitFindElement(WebElement parentElement, By by) {

        WebElement ele = null;
        if (parentElement == null) {
            ele = driver.findElement(by);
        } else {
            ele = parentElement.findElement(by);
        }
        isElementVisible(ele);
        return ele;
    }

    public List<WebElement> waitFindElements(WebElement parentElement, By by) {
        if (parentElement == null) {
            return driver.findElements(by);
        }
        return parentElement.findElements(by);


    }

    public WebElement findVisibleElement(WebDriver driver, By by) {
        WebElement ele = driver.findElement(by);
        isElementVisible(ele);
        return ele;
    }

    public WebElement findVisibleElement(WebElement wEle, By by) {
        WebElement ele = wEle.findElement(by);
        isElementVisible(ele);
        return ele;
    }

    public List<WebElement> waitFindElements(WebDriver driver, By by) {

        return driver.findElements(by);
    }

    public boolean isElementEnabled(WebElement ele) {
        boolean clickable = true;
        String attr = ele.getAttribute("class");
        if ((attr != null) && (attr.indexOf("disabled") > -1)) {
            clickable = false;
        }
        return clickable;
    }


    public WebElement getVisibleDropDownParentElement(String parent) {
        List<WebElement> comboListParentElements = waitFindElements(driver, By.cssSelector(parent));
        for (WebElement el : comboListParentElements) {
            if (el.isDisplayed()) {
                return el;
            }
        }
        return null;
    }

    public void selectElementByIndex(String element, int idx) {

        //WebElement drpDwn = getVisibleDropDownParentElement(parent);
        List<WebElement> listItems = driver.findElements(By.cssSelector(element));
        listItems.get(idx).click();
    }

    public void selectElementByDesc(String element, String desc) {
        //  WebElement drpDwn = getVisibleDropDownParentElement(parent);
        List<WebElement> listItems = driver.findElements(By.cssSelector(element));
        for (WebElement item : listItems) {
            //System.out.println(item.getText());
            if (item.getText().equalsIgnoreCase(desc)) {
                item.click();
                delay();
                return;
            }
        }
    }

    public void verifyTextForElementfromList(String element, String itemtext) {

        List<WebElement> listItems = driver.findElements(By.cssSelector(element));

        for (WebElement item : listItems) {
            //System.out.println(item.getText());
            item.getText().equalsIgnoreCase(itemtext);

            /*if (item.getText().equalsIgnoreCase(itemtext)) {
                try {
                    Assert.assertTrue(item.getText().equalsIgnoreCase(itemtext));
                } catch (Exception e) {

                }
            }*/
        }
    }

    public void selectDropdownVisibleElement(String selectElement, String desc) {
        Select select = new Select(driver.findElement(By.cssSelector(selectElement)));
        select.selectByVisibleText(desc);
    }

    public void iFillInText(WebElement obj, String text) {
        if (!isElementVisible(obj)) {
            return;
        }
        obj.clear();
        if ("".equals(text)) {
            return;
        }
        obj.sendKeys(text);
    }


    public void clickElement(WebElement element) {
        if (isElementVisible(element)) {
            element.click();
        }
       /* WebDriverWait wait = new WebDriverWait(driver,10);
        wait.until(ExpectedConditions.visibilityOfElementLocated(by));
        driver.findElement(by).click();*/
    }

    public void iWillWaitToSeeElement(WebElement element, String text) {
        if (isElementVisible(element)) {
            Assert.assertTrue(element.isDisplayed());

        }
    }

    protected void verifyTextForElement(WebElement ele, String text) {
        if (isElementVisible(ele)) {
            Assert.assertEquals(ele.getText(), text);
        }
    }

    public void verifyElementCount(String element, int count) {
        List<WebElement> listItems = driver.findElements(By.cssSelector(element));
        int countelement = listItems.size();
        delay();
            System.out.println(countelement);
            Assert.assertEquals( countelement, count);
        }

    public void elementInformation(WebElement ele) {
        System.out.println("  ");
        System.out.println("************************************");
        System.out.println("tagname " + ele.getTagName());
        System.out.println("text " + ele.getText());
        System.out.println("isdisplayed " + ele.isDisplayed());
        System.out.println("isenabled " + ele.isEnabled());
        System.out.println("value " + ele.getAttribute("value"));
        System.out.println("color " + ele.getAttribute("color"));
        System.out.println("text-align" + ele.getAttribute("text-align"));
        System.out.println("class" + ele.getAttribute("class"));
        System.out.println("class" + ele.getAttribute("style"));

        System.out.println("************************************");

    }

    public  void swithToFrame (String element){

        driver.switchTo().frame(driver.findElement(By.xpath(element)));
    }




    public void switchToNewWindow(){

        String parentWindow = driver.getWindowHandle();
        Set<String> handles =  driver.getWindowHandles();
        for(String windowHandle  : handles)
        {
            if(!windowHandle.equals(parentWindow))
            {
                driver.switchTo().window(windowHandle);
                //
            }
        }
    }

    public void switchBacktoOldWindow () {

        String parentWindow = driver.getWindowHandle();
        Set<String> handles = driver.getWindowHandles();
        driver.close();
        for (String windowHandle : handles) {
            if (!windowHandle.equals(parentWindow)) {
                driver.switchTo().window(windowHandle);

            }
        }
        delay();
    }

    public void verifyTextNotPresentForElementFromList(String element, String itemtext) {

        List<WebElement> listItems = driver.findElements(By.cssSelector(element));
        for (WebElement item : listItems) {
            //item.getText().equalsIgnoreCase(itemtext);
            Assert.assertFalse(item.getText().equalsIgnoreCase(itemtext));
            //Assert.assertNotEquals();
        }
    }

    public void verifyTextForElementFromListByXpath(String element, String itemtext) {

        List<WebElement> listItems = driver.findElements(By.xpath(element));

        for (WebElement item : listItems) {
            //System.out.println(item.getText());
            item.getText().equalsIgnoreCase(itemtext);

            /*if (item.getText().equalsIgnoreCase(itemtext)) {
                try {
                    Assert.assertTrue(item.getText().equalsIgnoreCase(itemtext));
                } catch (Exception e) {

                }
            }*/
        }
    }

    public void selectElementByTextDescByXpath(String element, String desc) {
        List<WebElement> listItems = driver.findElements(By.xpath(element));
        for (WebElement item : listItems) {
            //System.out.println(item.getText());
            if (item.getText().equalsIgnoreCase(desc)) {
                item.click();
                delay();
                return;
            }
        }
    }

}



