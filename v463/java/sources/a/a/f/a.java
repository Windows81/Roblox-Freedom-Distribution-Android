package a.a.f;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f404a = b.OFF;

    public static int a(String str, String str2) {
        if (f404a.ordinal() <= b.DEBUG.ordinal()) {
            return Log.d(a(str), str2);
        }
        return 0;
    }

    public static int b(String str, String str2) {
        if (f404a.ordinal() <= b.WARN.ordinal()) {
            return Log.w(a(str), str2);
        }
        return 0;
    }

    public static int c(String str, String str2) {
        if (f404a.ordinal() <= b.ERROR.ordinal()) {
            return Log.e(a(str), str2);
        }
        return 0;
    }

    public static int a(String str, String str2, Throwable th) {
        if (f404a.ordinal() <= b.ERROR.ordinal()) {
            return Log.e(a(str), str2, th);
        }
        return 0;
    }

    private static String a(String str) {
        return "BacktraceLogger: " + str;
    }
}
