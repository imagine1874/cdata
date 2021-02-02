package com.liuyang.main;

import java.util.HashMap;
import java.util.Map;

public class HttpStringUtils {

    public static Map<String, String> parseQueryToMap(String queryString) throws Exception {
        // ""
        Map<String, String> paramsMap = new HashMap<>();
        try {
            if (queryString == null || queryString.length() == 0) {
                return paramsMap;
            }
        String[] keyValues = queryString.split("&");// ["aaaAAA", "bbb======BBB"]
        for (String keyValue: keyValues) {
            String[] kyvs = keyValue.split("=");
            //["bbb","","BBB"]
            String key = kyvs[0];
            String value = "";
            if (kyvs.length > 1) {
                value = kyvs[kyvs.length-1];
            }
            paramsMap.put(key, value);
        }
    } catch (Exception ex) {
            ex.printStackTrace();
            throw ex;
        }
        return paramsMap;
    }

}
