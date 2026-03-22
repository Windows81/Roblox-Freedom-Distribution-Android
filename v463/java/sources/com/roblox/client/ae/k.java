package com.roblox.client.ae;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f5644a = new a("rbx");

    public static int a(String str) {
        return f5644a.a(str);
    }

    public static int a(String str, String str2) {
        return f5644a.a(str, str2);
    }

    public static int b(String str, String str2) {
        return f5644a.b(str, str2);
    }

    public static int c(String str, String str2) {
        return f5644a.c(str, str2);
    }

    public static int b(String str) {
        return f5644a.b(str);
    }

    public static int d(String str, String str2) {
        return f5644a.d(str, str2);
    }

    public static int c(String str) {
        return f5644a.c(str);
    }

    public static int e(String str, String str2) {
        return f5644a.e(str, str2);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f5645a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5646b = 6;

        public int c(String str, String str2) {
            return 0;
        }

        public a(String str) {
            this.f5645a = str;
        }

        public int a(String str) {
            return Log.v(this.f5645a, d(str));
        }

        public int a(String str, String str2) {
            return Log.v(str, d(str2));
        }

        public int b(String str, String str2) {
            return Log.i(str, d(str2));
        }

        public int b(String str) {
            return Log.w(this.f5645a, d(str));
        }

        public int d(String str, String str2) {
            return Log.w(str, d(str2));
        }

        public int c(String str) {
            return Log.e(this.f5645a, d(str));
        }

        public int e(String str, String str2) {
            return Log.e(str, d(str2));
        }

        private String d(String str) {
            return a(6) + str;
        }

        private String a(int i) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            return (stackTrace == null || stackTrace.length <= i) ? "[STACKTRACE MISMATCH]: " : String.format("[%s.%s()-%d]: ", a(stackTrace[i]), stackTrace[i].getMethodName(), Integer.valueOf(stackTrace[i].getLineNumber()));
        }

        private String a(StackTraceElement stackTraceElement) {
            String className = stackTraceElement.getClassName();
            int iLastIndexOf = className.lastIndexOf(46);
            return iLastIndexOf == -1 ? className : className.substring(iLastIndexOf + 1);
        }
    }
}
