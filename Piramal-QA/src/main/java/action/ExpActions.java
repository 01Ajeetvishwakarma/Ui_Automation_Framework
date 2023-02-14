package action;

import base.BaseClass;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Ajeet Vishwakarma
 * @Date 09/02/2023 - 10:42 AM
 */
public class ExpActions extends BaseClass {

    public void brokenLinks()
    {
        List<WebElement> totalLinks = driver.findElements(By.tagName("a"));
        System.out.println("Total links are: "+totalLinks.size());

        List<String> urlList = new ArrayList<>();

        for (WebElement url:totalLinks) {
            String urlNames = url.getAttribute("href");
//            urlList.add(urlNames);
            checkBrokenUrl(urlNames);
        }
    }
    public static void checkBrokenUrl(String linkUrl)
    {
        try {
            URL url = new URL(linkUrl);
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() >= 400)
            {
                System.out.println(linkUrl+" -----> "+httpURLConnection.getResponseMessage()+" is a broken link ");
            }else {
                System.out.println(linkUrl+" -----> "+httpURLConnection.getResponseMessage());
            }
        } catch (Exception e) {

        }
    }

}
