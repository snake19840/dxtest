package com.clas;

public class StringUtils {



	public static boolean isBlank(String str) {
        int strLen;
        if (str != null && (strLen = str.length()) != 0) {
            for(int i = 0; i < strLen; ++i) {
                // �ж��ַ��Ƿ�Ϊ�ո��Ʊ����tab
                if (!Character.isWhitespace(str.charAt(i))) {    
                    return false;
                }
            }
            return true;
        } else {
            return true;
        }
    }

	
}
