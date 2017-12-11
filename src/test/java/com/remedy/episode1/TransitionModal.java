package com.remedy.episode1;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import com.remedy.baseClass.BaseClass;
import com.steadystate.css.parser.ParseException;

public class TransitionModal extends BaseClass {
	 public TransitionModal(WebDriver driver){
		 super(driver);
	    }

	public void iclickEpisodeinitiatorEdit() {
		clickElement(driver.findElement(By.xpath("//td[contains(@class,'Episode Initiator')]/a[contains(text(),'Edit')]")));
		}

	public void iVerifyvalueintable(String value, String table, int row, int column) {
		iWillWaitToSee(By.xpath("//table/tbody/tr["+row+"]/td["+column+"][contains(text(),'"+value+"')]"));
     	}

	public void iSelectonehourlaterorbefore(int time,String later,String tranistion) throws java.text.ParseException {
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr["+tranistion+"]/td[3]"));
		String date=getTextForElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr["+tranistion+"]/td[3]")));
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
		Date myDateTime = null;
		myDateTime = simpleDateFormat.parse(date);
	    System.out.println("This is the Actual Date:"+myDateTime);
	    Calendar cal = new GregorianCalendar();
	    cal.setTime(myDateTime);

	    //Adding 21 Hours to your Date
	    cal.add(Calendar.HOUR_OF_DAY, time);
	    System.out.println("This is Hours Added Date:"+cal.getTime());
	    String newDate=simpleDateFormat.format(cal.getTime()).toString();
	    System.out.println("dd/MM/yyyy HH:mm:"+cal.getTime().toString());
	    setAttributevalue(driver.findElement(By.cssSelector("#bp_personbundle_bpadmissiontype_admitDate")),"value",newDate);
	}

	public void iclickStartCARLtoollink(int tran) throws InterruptedException {
		iWillWaitToSee(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div"));
		clickAction(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div")));
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[" + tran+ "]/td[contains(@class, 'settings-column')]/div")));
		Thread.sleep(5000);
		clickElement(driver.findElement(By.xpath("//*[@id='ui-transitions-table']/tbody/tr[1]/td[contains(@class, 'settings-column')]/div/ul/li[6]/a")));
		}
	 
}
