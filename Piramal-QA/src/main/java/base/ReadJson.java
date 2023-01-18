package base;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.io.FileReader;

/**
 * @author Ajeet Vishwakarma
 * @Date 26/12/2022 - 6:47 PM
 */
public class ReadJson {
    public String readXpathFromJson(String xPathVariable) {
        JSONParser jsonParser = new JSONParser();
        JSONObject jsonObject;
        String locator = null;
        try {
            FileReader fileReader = new FileReader(System.getProperty("user.dir") + "/src/main/resources/iLMS.json");
            jsonObject = (JSONObject) jsonParser.parse(fileReader);

            locator = String.valueOf(jsonObject.get(xPathVariable));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return locator;
    }

}
