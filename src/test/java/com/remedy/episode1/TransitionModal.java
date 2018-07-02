package com.remedy.episode1;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.remedy.baseClass.BaseClass;

public class TransitionModal extends BaseClass {
	public TransitionModal(WebDriver driver) {
		super(driver);
	}

	Actions action = new Actions(driver);

	public void iclickEpisodeinitiatorEdit() {
		delay();
		action.moveToElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr/td/a"))).build().perform();
		longDelay();
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr/td/a")));
	}

	public void iVerifyvalueintable(String value, String table, int row, int column) {
		iWillWaitToSee(By.xpath("//table/tbody/tr[" + row + "]/td[" + column + "][contains(text(),'" + value + "')]"));
	}

	public void iSelectonehourlaterorbefore(int days, int time, String later, String tranistion) throws java.text.ParseException {
		iWillWaitToSee(By.xpath("//*[@id='bp_personbundle_bpadmissiontype_admitDate']"));
		String date3 = currentdate(days, "MM/dd/yyyy");
		String date = driver.findElement(By.xpath("//*[@id='bp_personbundle_bpadmissiontype_admitDate']")).getAttribute("value");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm");
		Date myDateTime = null;
		myDateTime = simpleDateFormat.parse(date);
		Calendar cal = new GregorianCalendar();
		cal.setTime(myDateTime);
		cal.add(Calendar.HOUR_OF_DAY, time);
		String[] newDate = cal.getTime().toString().split(" ");
		String date1 = date3 + " " + newDate[3].substring(0, 5);
		setAttributevalue(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate")), "value",date1);
	}

	public void iclickStartCARLtoollink(int tran) throws InterruptedException {
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran + "]/td[contains(@class, 'settings-column')]/div"));
		longDelay();
		Actions actions = new Actions(driver);
		actions.moveToElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran + "]/td[contains(@class, 'settings-column')]/div"))).build().perform();
		delay();
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran + "]/td[contains(@class, 'settings-column')]/div")));
		Thread.sleep(5000);
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran + "]/td[contains(@class, 'settings-column')]/div/ul/li[6]/a")));
	}

	public void IClickOnDropDownOnTransitionModal(String text) {
		longDelay();
		longDelay();
		iWillWaitToSee(By.cssSelector("#bp_personbundle_bpadmissiontype_admit" + text));
		new Actions(driver).moveToElement(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admit" + text))).build().perform();
		clickElement(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admit" + text)));
	}

	public void IVerifyOptionUnderDropdownTextOnTransitionModal(String text) {
		iWillWaitToSee(By.xpath("//option[text()='" + text + "']"));
	}

	public void IShouldNotSeeDropDownOnTransitionModal(String text) {
		isElementPresentOnPage(By.cssSelector("#bp_personbundle_bpadmissiontype_admit" + text));
	}

	public void iclickoncancelbutton() {
		longDelay();
		new Actions(driver).moveToElement(driver.findElement(By.xpath("//button[contains(text(),'Cancel')]"))).build().perform();
		clickElement(driver.findElement(By.xpath("//button[contains(text(),'Cancel')]")));
	}

	public void iverifyDRG(String drg, String type, int n) {
		delay();
		if (type.equals(" ")) {
			iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + n+ "]/td[9]/div/table/tbody/tr[2]/td[2][contains(text(),'" + drg + "')]"));
			isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + n+ "]/td[9]/div/table/tbody/tr[2]/td[2][contains(text(),'" + drg + "')]")));
			new WebDriverWait(driver, 05).until(ExpectedConditions.invisibilityOfElementLocated(By.xpath("//*[@id='ui-transitions-table']/tbody/tr["+ n + "]/td[9]/div/table/tbody/tr[2]/td[2][contains(text(),'" + drg+ "')]/b[contains(text(),'(BPCI)')]")));
		} else {
			iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + n+ "]/td[9]/div/table/tbody/tr[2]/td[2][contains(text(),'" + drg + "')]/b[contains(text(),'" + type+ "')]"));
			isElementVisible(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + n+ "]/td[9]/div/table/tbody/tr[2]/td[2][contains(text(),'" + drg + "')]/b[contains(text(),'" + type+ "')]")));
		}
	}

}
