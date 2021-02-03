package com.liuyang.main;

import java.util.HashMap;
import java.util.Map;

public class HttpStringUtils {

    /**
     * 解析字符串& = 转换为map key value
     * @param queryString 解析的字符串
     * @return
     * @throws Exception 测试抛出异常
     */
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
