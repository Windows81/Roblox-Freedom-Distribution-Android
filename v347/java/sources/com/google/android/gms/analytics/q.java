package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.q;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class q<T extends q> {
    public static String a(Object obj) {
        return a(obj, 0);
    }

    private static String a(Object obj, int i) {
        if (i > 10) {
            return "ERROR: Recursive toString calls";
        }
        if (obj == null) {
            return "";
        }
        if (obj instanceof String) {
            return TextUtils.isEmpty((String) obj) ? "" : obj.toString();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() == 0 ? "" : obj.toString();
        }
        if (obj instanceof Long) {
            return ((Long) obj).longValue() == 0 ? "" : obj.toString();
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue() == 0.0d ? "" : obj.toString();
        }
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue() ? "" : obj.toString();
        }
        if (obj instanceof List) {
            StringBuilder sb = new StringBuilder();
            if (i > 0) {
                sb.append("[");
            }
            int length = sb.length();
            for (Object obj2 : (List) obj) {
                if (sb.length() > length) {
                    sb.append(", ");
                }
                sb.append(a(obj2, i + 1));
            }
            if (i > 0) {
                sb.append("]");
            }
            return sb.toString();
        }
        if (!(obj instanceof Map)) {
            return obj.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        int length2 = 0;
        boolean z = false;
        for (Map.Entry entry : new TreeMap((Map) obj).entrySet()) {
            String strA = a(entry.getValue(), i + 1);
            if (!TextUtils.isEmpty(strA)) {
                if (i > 0 && !z) {
                    sb2.append("{");
                    z = true;
                    length2 = sb2.length();
                }
                if (sb2.length() > length2) {
                    sb2.append(", ");
                }
                sb2.append((String) entry.getKey());
                sb2.append('=');
                sb2.append(strA);
            }
        }
        if (z) {
            sb2.append("}");
        }
        return sb2.toString();
    }

    public static String a(Map map) {
        return a(map, 1);
    }

    public abstract void a(T t);
}
