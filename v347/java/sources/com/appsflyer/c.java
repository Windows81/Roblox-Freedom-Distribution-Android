package com.appsflyer;

import android.util.Log;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f2186a = System.currentTimeMillis();

    public enum a {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);

        private int g;

        a(int i) {
            this.g = i;
        }

        public final int a() {
            return this.g;
        }
    }

    public static void a(String str, boolean z) {
        if (a(a.INFO)) {
            Log.i("AppsFlyer_4.8.3", e(str));
        }
        if (z) {
            y.a().b("I", d(str, true));
        }
    }

    public static void a() {
        f2186a = System.currentTimeMillis();
    }

    private static String e(String str) {
        return d(str, false);
    }

    private static String d(String str, boolean z) {
        if (z || a.VERBOSE.a() == g.a().b()) {
            return "(" + a(System.currentTimeMillis() - f2186a) + ") " + str;
        }
        return str;
    }

    static void b(String str, boolean z) {
        if (a(a.DEBUG)) {
            Log.d("AppsFlyer_4.8.3", e(str));
        }
        if (z) {
            y.a().b("D", d(str, true));
        }
    }

    static void a(String str, Throwable th, boolean z, boolean z2) {
        if (a(a.ERROR) && z2) {
            Log.e("AppsFlyer_4.8.3", e(str), th);
        }
        if (z) {
            y.a().a(th);
        }
    }

    static void c(String str, boolean z) {
        if (a(a.WARNING)) {
            Log.w("AppsFlyer_4.8.3", e(str));
        }
        if (z) {
            y.a().b("W", d(str, true));
        }
    }

    public static void a(String str) {
        if (a(a.VERBOSE)) {
            Log.v("AppsFlyer_4.8.3", e(str));
        }
        y.a().b("V", d(str, true));
    }

    private static boolean a(a aVar) {
        return aVar.a() <= g.a().b();
    }

    public static void b(String str) {
        b(str, true);
    }

    public static void c(String str) {
        a(str, true);
    }

    public static void a(String str, Throwable th) {
        a(str, th, true, false);
    }

    public static void d(String str) {
        c(str, true);
    }

    static String a(long j) {
        long hours = TimeUnit.MILLISECONDS.toHours(j);
        long millis = j - TimeUnit.HOURS.toMillis(hours);
        long minutes = TimeUnit.MILLISECONDS.toMinutes(millis);
        long millis2 = millis - TimeUnit.MINUTES.toMillis(minutes);
        long seconds = TimeUnit.MILLISECONDS.toSeconds(millis2);
        return String.format(Locale.getDefault(), "%02d:%02d:%02d:%03d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(TimeUnit.MILLISECONDS.toMillis(millis2 - TimeUnit.SECONDS.toMillis(seconds))));
    }
}
