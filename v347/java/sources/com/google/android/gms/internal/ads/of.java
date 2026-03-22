package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class of {
    private static long a(String str) {
        try {
            return a().parse(str).getTime();
        } catch (ParseException e) {
            eb.a(e, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    public static agm a(atf atfVar) {
        boolean z;
        boolean z2;
        long j;
        long j2;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = atfVar.f4477c;
        long j3 = 0;
        long j4 = 0;
        String str = map.get("Date");
        long jA = str != null ? a(str) : 0L;
        String str2 = map.get("Cache-Control");
        if (str2 != null) {
            String[] strArrSplit = str2.split(",");
            z = false;
            long j5 = 0;
            long j6 = 0;
            for (String str3 : strArrSplit) {
                String strTrim = str3.trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j6 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    try {
                        j5 = Long.parseLong(strTrim.substring(23));
                    } catch (Exception e2) {
                    }
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z = true;
                }
            }
            j3 = j6;
            j4 = j5;
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        String str4 = map.get("Expires");
        long jA2 = str4 != null ? a(str4) : 0L;
        String str5 = map.get("Last-Modified");
        long jA3 = str5 != null ? a(str5) : 0L;
        String str6 = map.get("ETag");
        if (z2) {
            j2 = jCurrentTimeMillis + (1000 * j3);
            j = z ? j2 : (1000 * j4) + j2;
        } else if (jA <= 0 || jA2 < jA) {
            j = 0;
            j2 = 0;
        } else {
            j = (jA2 - jA) + jCurrentTimeMillis;
            j2 = j;
        }
        agm agmVar = new agm();
        agmVar.f3961a = atfVar.f4476b;
        agmVar.f3962b = str6;
        agmVar.f = j2;
        agmVar.e = j;
        agmVar.f3963c = jA;
        agmVar.f3964d = jA3;
        agmVar.g = map;
        agmVar.h = atfVar.f4478d;
        return agmVar;
    }

    static String a(long j) {
        return a().format(new Date(j));
    }

    private static SimpleDateFormat a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
