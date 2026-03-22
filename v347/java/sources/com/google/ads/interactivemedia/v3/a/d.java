package com.google.ads.interactivemedia.v3.a;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum d implements e {
    IDENTITY { // from class: com.google.ads.interactivemedia.v3.a.d.1
        @Override // com.google.ads.interactivemedia.v3.a.e
        public String a(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.ads.interactivemedia.v3.a.d.2
        @Override // com.google.ads.interactivemedia.v3.a.e
        public String a(Field field) {
            return d.b(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.ads.interactivemedia.v3.a.d.3
        @Override // com.google.ads.interactivemedia.v3.a.e
        public String a(Field field) {
            return d.b(d.b(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.ads.interactivemedia.v3.a.d.4
        @Override // com.google.ads.interactivemedia.v3.a.e
        public String a(Field field) {
            return d.b(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.ads.interactivemedia.v3.a.d.5
        @Override // com.google.ads.interactivemedia.v3.a.e
        public String a(Field field) {
            return d.b(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        char cCharAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(cCharAt)) {
            sb.append(cCharAt);
            i++;
            cCharAt = str.charAt(i);
        }
        if (i == str.length()) {
            return sb.toString();
        }
        if (!Character.isUpperCase(cCharAt)) {
            return sb.append(a(Character.toUpperCase(cCharAt), str, i + 1)).toString();
        }
        return str;
    }

    private static String a(char c2, String str, int i) {
        if (i >= str.length()) {
            return String.valueOf(c2);
        }
        String strValueOf = String.valueOf(str.substring(i));
        return new StringBuilder(String.valueOf(strValueOf).length() + 1).append(c2).append(strValueOf).toString();
    }
}
