package steps;

import base.BaseClass;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/**
 * @author Ajeet Vishwakarma
 * @created 17/11/2022 - 10:43 AM
 */

public class Hooks extends BaseClass {


    @Before
    public void setUp() throws IOException {
        String propertyFile = System.getProperty("user.dir") + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + "application.properties";
        prop = new Properties();
        FileInputStream fis = new FileInputStream(propertyFile);

        prop.load(fis);
        String browserName = prop.getProperty("browser");

        if (browserName.equals("chrome")) {
            driver = WebDriverManager.chromedriver().create();
        } else if (browserName.equals("firefox")) {
            driver = WebDriverManager.firefoxdriver().create();
        } else if (browserName.equals("IE")) {
            driver = WebDriverManager.iedriver().create();
        }
        driver.manage().window().maximize();
        //launch the application
        driver.get(prop.getProperty("url"));
    }

    /*@After
    public void tearDown()
    {
        driver.quit();
    }*/

    @After
    public static void tearDown(Scenario scenario) {

        //validate if scenario has failed
        if (scenario.isFailed() || (scenario.getStatus().toString().equals("SKIPPED"))) {
            final byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image/png", scenario.getName());
            /*System.getProperty("user.dir") + File.separator + "ScreenShots" + File.separator + LocalDate.now().format(DateTimeFormatter.ofPattern("MMMM_dd_yyyy")) + File.separator + "demo.png";*/
        }
        driver.quit();
    }




    /*@After(order = 1)
    public void takeScreenShotOnFailure(Scenario scenario)
    {
        if (scenario.isFailed())
        {
            TakesScreenshot takesScreenshot = (TakesScreenshot)driver;
            byte[] screen = takesScreenshot.getScreenshotAs(OutputType.BYTES);
            scenario.attach(screen,"image/png","screenshot");
        }
    }

    @After(order = 0)
    public void tearDown()
    {
        driver.close();
    }*/

}

