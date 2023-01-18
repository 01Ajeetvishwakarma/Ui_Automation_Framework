package action;

import base.BaseClass;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import java.util.List;
import java.util.Random;

/**
 * @author Ajeet Vishwakarma
 * @Date 23/12/2022 - 11:34 AM
 */

public class CreateCaseActions extends BaseClass {

    private static final Logger logger = LogManager.getLogger(CreateCaseActions.class);

    Random random = new Random();
    int randomNumber = random.nextInt(10000000);

    public void clickOnButton(String element) throws InterruptedException {
        Thread.sleep(1000);
        WebElement getElement = driver.findElement(By.xpath(element));
        Actions actions = new Actions(driver);
        actions.moveToElement(getElement).click().build().perform();
    }
    public void enterValue(String value,String locator) throws InterruptedException {
        Thread.sleep(2000);
        driver.findElement(By.xpath(locator)).sendKeys(value);
    }
    public void getTitle(String value , String title) throws InterruptedException
    {
      WebElement getTextElm=  driver.findElement(By.xpath(title));
      System.out.println(getTextElm.getText());
      Assert.assertEquals(getTextElm.getText(),value);
      Thread.sleep(3000);
    }
    public void selectValue(String value, String locator) throws InterruptedException {
        Actions actions = new Actions(driver);
        Thread.sleep(1000);
        List<WebElement> elementList = driver.findElements(By.xpath(locator));
        for (WebElement getElement : elementList) {
            if (getElement.getText().equalsIgnoreCase(value)) {
                actions.moveToElement(getElement).click().build().perform();
                break;
            }
        }
    }
    public void ableToSeeMessage(String message, String element) {
        WebElement webElement = driver.findElement(By.xpath(element));
        Assert.assertEquals(webElement.getText(), message);
        logger.info(webElement.getText());
    }
    public void randomValue(String value,String locator) throws InterruptedException {
        Thread.sleep(1000);
        driver.findElement(By.xpath(locator)).sendKeys(value+randomNumber);
    }

    public void scrollDown()
    {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,350)", "");
    }

}
