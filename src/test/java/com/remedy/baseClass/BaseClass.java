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

    protected void delay() {
        try {
            Thread.sleep(delay_Time);
        } catch (InterruptedException e) {
            e.printStackTrace();

        }
    }

    protected void longDelay() {
        try {
            Thread.sleep(LongDelay_Time);
        } catch (InterruptedException e) {
            e.printStackTrace();

        }
    }




    protected boolean isElementVisible(final WebElement ele) {
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

    protected WebElement waitFindElement(WebElement parentElement, By by) {

        WebElement ele = null;
        if (parentElement == null) {
            ele = driver.findElement(by);
        } else {
            ele = parentElement.findElement(by);
        }
        isElementVisible(ele);
        return ele;
    }

    protected List<WebElement> waitFindElements(WebElement parentElement, By by) {
        if (parentElement == null) {
            return driver.findElements(by);
        }
        return parentElement.findElements(by);

        
    }


    protected WebElement findVisibleElement(WebDriver driver, By by) {
        WebElement ele = driver.findElement(by);
        isElementVisible(ele);
        return ele;
    }

    protected WebElement findVisibleElement(WebElement wEle, By by) {
        WebElement ele = wEle.findElement(by);
        isElementVisible(ele);
        return ele;
    }

    protected List<WebElement> waitFindElements(WebDriver driver, By by) {
        return driver.findElements(by);
    }

    protected boolean isElementEnabled(WebElement ele) {
        boolean clickable = true;
        String attr = ele.getAttribute("class");
        if ((attr != null) && (attr.indexOf("disabled") > -1)) {
            clickable = false;
        }
        return clickable;
    }


    protected WebElement getVisibleDropDownParentElement(String parent) {
        List<WebElement> comboListParentElements = waitFindElements(driver, By.cssSelector(parent));
        for (WebElement el : comboListParentElements) {
            if (el.isDisplayed()) {
                return el;
            }
        }
        return null;
    }

    protected void selectElementByIndex(String element, int idx) {

        //WebElement drpDwn = getVisibleDropDownParentElement(parent);
        List<WebElement> listItems = driver.findElements(By.cssSelector(element));
        listItems.get(idx).click();
    }

    protected void selectElementByDesc(String element, String desc) {
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


    protected void verifyTextForElementfromList(String element, String itemtext) {

        List<WebElement> listItems = driver.findElements(By.cssSelector(element));
        for (WebElement item : listItems) {
            //System.out.println(item.getText());
            item.getText().equalsIgnoreCase(itemtext);
        }
    }

    protected void selectDropdownVisibleElement(String selectElement, String desc) {

        Select select = new Select(driver.findElement(By.cssSelector(selectElement)));
        select.selectByVisibleText(desc);
    }

    protected void iFillInText(WebElement obj, String text) {
        if (!isElementVisible(obj)) {
            return;
        }
        obj.clear();
        if ("".equals(text)) {
            return;
        }
        obj.sendKeys(text);
    }


    protected void clickElement(WebElement element) {
        if (isElementVisible(element)) {
            element.click();
        }
       /* WebDriverWait wait = new WebDriverWait(driver,10);
        wait.until(ExpectedConditions.visibilityOfElementLocated(by));
        driver.findElement(by).click();*/

    }


    protected void iWillWaitToSeeElement(WebElement element, String text) {
        if (isElementVisible(element)) {
            Assert.assertTrue(element.isDisplayed());

        }

    }

    protected void verifyTextForElement(WebElement ele, String text) {
        if (isElementVisible(ele)) {
            Assert.assertEquals(ele.getText(), text);
        }

    }


    protected void verifyElementCount(String element, int count) {
        List<WebElement> listItems = driver.findElements(By.cssSelector(element));
        int countelement = listItems.size();
        delay();
            System.out.println(countelement);
            Assert.assertEquals( countelement, count);
        }






    protected void elementInformation(WebElement ele) {
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

    protected  void swithToFrame (String element){

        driver.switchTo().frame(driver.findElement(By.xpath(element)));
    }




    protected void switchToNewWindow(){


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


    protected void switchBacktoOldWindow () {

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

}



