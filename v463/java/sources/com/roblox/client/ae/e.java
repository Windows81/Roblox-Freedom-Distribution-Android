package com.roblox.client.ae;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {
    public static Date a(String str) throws ParseException {
        String strReplace;
        String str2 = "";
        if (str.contains("+00:00")) {
            str = str.replace("+00:00", "");
        }
        if (str.length() == 19) {
            strReplace = str + ".+00:00";
        } else if (str.contains(".Z")) {
            strReplace = str.replace(".Z", ".+00:00");
        } else if (str.endsWith("Z")) {
            strReplace = str.replace("Z", ".+00:00");
        } else {
            strReplace = str + ".+00:00";
        }
        try {
            if (strReplace.length() > 29) {
                strReplace = strReplace.substring(0, 23) + strReplace.substring(strReplace.length() - 6);
            } else if (strReplace.length() < 29) {
                int length = 29 - strReplace.length();
                for (int i = 0; i < length; i++) {
                    str2 = str2 + "0";
                }
                strReplace = strReplace.substring(0, (3 - length) + 20) + str2 + strReplace.substring(strReplace.length() - 6);
            }
            String str3 = strReplace.substring(0, 26) + strReplace.substring(27);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'.'SSSZ");
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            return simpleDateFormat.parse(str3);
        } catch (IndexOutOfBoundsException unused) {
            throw new ParseException("Invalid length for: " + strReplace, 0);
        }
    }

    public static int a(int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.set(i3, i2, i);
        int i4 = calendar2.get(1) - calendar.get(1);
        return calendar2.get(6) < calendar.get(6) ? i4 - 1 : i4;
    }

    public static long b(String str) {
        try {
            return a(str).getTime();
        } catch (ParseException unused) {
            k.d("rbx.utils", "Exception caught when converting string to date: " + str);
            long jC = c(str);
            k.d("rbx.utils", "Parsing as alternate format: " + jC);
            return jC;
        }
    }

    public static long c(String str) {
        Matcher matcher = Pattern.compile("\\/Date\\((\\-?\\d*?)([\\+\\-]\\d*)?\\)\\/").matcher(str);
        if (matcher.matches()) {
            return Long.valueOf(matcher.group(1)).longValue();
        }
        return 0L;
    }
}
