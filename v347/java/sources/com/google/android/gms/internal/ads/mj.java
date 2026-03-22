package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.ads.AdRequest;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public class mj {
    private static String a(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4) {
            return str;
        }
        return new StringBuilder(String.valueOf(str).length() + 13).append(str).append(" @").append(stackTrace[3].getLineNumber()).toString();
    }

    public static void a(String str, Throwable th) {
        if (a(3)) {
            Log.d(AdRequest.LOGTAG, str, th);
        }
    }

    public static boolean a(int i) {
        return i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i);
    }

    public static void b(String str) {
        if (a(3)) {
            Log.d(AdRequest.LOGTAG, str);
        }
    }

    public static void b(String str, Throwable th) {
        if (a(6)) {
            Log.e(AdRequest.LOGTAG, str, th);
        }
    }

    public static void c(String str) {
        if (a(6)) {
            Log.e(AdRequest.LOGTAG, str);
        }
    }

    public static void c(String str, Throwable th) {
        if (a(5)) {
            Log.w(AdRequest.LOGTAG, str, th);
        }
    }

    public static void d(String str) {
        if (a(4)) {
            Log.i(AdRequest.LOGTAG, str);
        }
    }

    public static void d(String str, Throwable th) {
        if (a(5)) {
            if (th != null) {
                c(a(str), th);
            } else {
                e(a(str));
            }
        }
    }

    public static void e(String str) {
        if (a(5)) {
            Log.w(AdRequest.LOGTAG, str);
        }
    }

    public static void f(String str) {
        d(str, null);
    }
}
