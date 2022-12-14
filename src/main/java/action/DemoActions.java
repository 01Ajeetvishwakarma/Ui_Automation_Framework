package action;


import base.BaseClass;
import org.openqa.selenium.By;

/**
 * @author Ajeet Vishwakarma
 * 11/16/2022
 */
public class DemoActions extends BaseClass {

    public void userEnterUserName(String name) {
        driver.findElement(By.xpath("//*[@id='username']")).sendKeys(name);
    }
    public void enterPassword(String password) {
        driver.findElement(By.xpath("//*[@id='password123']")).sendKeys(password);
    }


}
