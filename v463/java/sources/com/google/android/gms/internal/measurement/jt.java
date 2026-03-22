package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class jt {
    private static HashMap<String, String> f;
    private static Object k;
    private static boolean l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Uri f4636c = Uri.parse("content://com.google.android.gsf.gservices");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Uri f4637d = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f4634a = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f4635b = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f4638e = new AtomicBoolean();
    private static final HashMap<String, Boolean> g = new HashMap<>();
    private static final HashMap<String, Integer> h = new HashMap<>();
    private static final HashMap<String, Long> i = new HashMap<>();
    private static final HashMap<String, Float> j = new HashMap<>();
    private static String[] m = new String[0];

    private static <T> T a(HashMap<String, T> map, String str, T t) {
        synchronized (jt.class) {
            if (!map.containsKey(str)) {
                return null;
            }
            T t2 = map.get(str);
            if (t2 != null) {
                t = t2;
            }
            return t;
        }
    }

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (jt.class) {
            a(contentResolver);
            Object obj = k;
            if (f.containsKey(str)) {
                String str3 = f.get(str);
                return str3 != null ? str3 : null;
            }
            for (String str4 : m) {
                if (str.startsWith(str4)) {
                    if (!l || f.isEmpty()) {
                        f.putAll(a(contentResolver, m));
                        l = true;
                        if (f.containsKey(str)) {
                            String str5 = f.get(str);
                            return str5 != null ? str5 : null;
                        }
                    }
                    return null;
                }
            }
            Cursor cursorQuery = contentResolver.query(f4636c, null, null, new String[]{str}, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(1);
                        if (string != null && string.equals(null)) {
                            string = null;
                        }
                        a(obj, str, string);
                        return string != null ? string : null;
                    }
                } finally {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            }
            a(obj, str, (String) null);
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        }
    }

    private static Map<String, String> a(ContentResolver contentResolver, String... strArr) {
        Cursor cursorQuery = contentResolver.query(f4637d, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (cursorQuery == null) {
            return treeMap;
        }
        while (cursorQuery.moveToNext()) {
            try {
                treeMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
            } finally {
                cursorQuery.close();
            }
        }
        return treeMap;
    }

    private static void a(ContentResolver contentResolver) {
        if (f == null) {
            f4638e.set(false);
            f = new HashMap<>();
            k = new Object();
            l = false;
            contentResolver.registerContentObserver(f4636c, true, new ju(null));
            return;
        }
        if (f4638e.getAndSet(false)) {
            f.clear();
            g.clear();
            h.clear();
            i.clear();
            j.clear();
            k = new Object();
            l = false;
        }
    }

    private static void a(Object obj, String str, String str2) {
        synchronized (jt.class) {
            if (obj == k) {
                f.put(str, str2);
            }
        }
    }

    public static boolean a(ContentResolver contentResolver, String str, boolean z) {
        Object objB = b(contentResolver);
        Boolean bool = (Boolean) a(g, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String strA = a(contentResolver, str, (String) null);
        if (strA != null && !strA.equals("")) {
            if (f4634a.matcher(strA).matches()) {
                bool = true;
                z = true;
            } else if (f4635b.matcher(strA).matches()) {
                bool = false;
                z = false;
            } else {
                Log.w("Gservices", "attempt to read gservices key " + str + " (value \"" + strA + "\") as boolean");
            }
        }
        HashMap<String, Boolean> map = g;
        synchronized (jt.class) {
            if (objB == k) {
                map.put(str, bool);
                f.remove(str);
            }
        }
        return z;
    }

    private static Object b(ContentResolver contentResolver) {
        Object obj;
        synchronized (jt.class) {
            a(contentResolver);
            obj = k;
        }
        return obj;
    }
}
