package action;

import base.BaseClass;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;

import java.time.Duration;
import java.util.List;

/**
 * @author Ajeet Vishwakarma
 * @Date 23/12/2022 - 11:34 AM
 */

public class CreateCaseActions extends BaseClass {

    private static final Logger logger = LogManager.getLogger(CreateCaseActions.class);

    /**Random random = new Random();
    int randomNumber = random.nextInt(10000000);*/
    String randomNumber = getRandomNumber(7);

    public void clickOnButton(String element) throws InterruptedException {
        Thread.sleep(1000);
        /*driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));*/
        WebElement getElement = driver.findElement(By.xpath(element));
        Actions actions = new Actions(driver);
        actions.moveToElement(getElement).click().build().perform();
    }

    public void enterValue(String value, String locator) throws InterruptedException {
        Thread.sleep(1000);
//        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
        driver.findElement(By.xpath(locator)).sendKeys(value);
    }

    public void getTitle(String value, String title) throws InterruptedException {
        WebElement getTextElm = driver.findElement(By.xpath(title));
        System.out.println(getTextElm.getText());
        Assert.assertEquals(getTextElm.getText(), value);
        Thread.sleep(3000);
//        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
    }

    public void selectValue(String value, String locator) {
        Actions actions = new Actions(driver);
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
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

    public void randomValue(String value, String locator) throws InterruptedException {
        Thread.sleep(1000);
        /*driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(3));*/
        driver.findElement(By.xpath(locator)).sendKeys(value + randomNumber);
    }

    public void scrollDown() {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,450)", "");
    }

    public void userEnterDate(String date, String element) {
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(3));
        driver.findElement(By.id(element)).sendKeys(date);
    }

    public void scrollDownBy(String pixel) throws InterruptedException {
        Thread.sleep(1000);
        JavascriptExecutor js = (JavascriptExecutor) driver;
//        js.executeScript("arguments[0].scrollIntoView()", getElement);
        js.executeScript("window.scroll(0," + pixel + ")");
    }


}
