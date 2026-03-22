package com.roblox.client.util;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f7924a = new a("rbx");

    public static int a(String str) {
        return f7924a.a(str);
    }

    public static int a(String str, String str2) {
        return f7924a.a(str, str2);
    }

    public static int b(String str, String str2) {
        return f7924a.b(str, str2);
    }

    public static int c(String str, String str2) {
        return f7924a.c(str, str2);
    }

    public static int b(String str) {
        return f7924a.b(str);
    }

    public static int d(String str, String str2) {
        return f7924a.d(str, str2);
    }

    public static int e(String str, String str2) {
        return f7924a.e(str, str2);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f7925a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f7926b = 6;

        public a(String str) {
            this.f7925a = str;
        }

        public int a(String str) {
            return Log.v(this.f7925a, c(str));
        }

        public int a(String str, String str2) {
            return Log.v(str, c(str2));
        }

        public int b(String str, String str2) {
            return Log.i(str, c(str2));
        }

        public int c(String str, String str2) {
            return Log.d(str, c(str2));
        }

        public int b(String str) {
            return Log.w(this.f7925a, c(str));
        }

        public int d(String str, String str2) {
            return Log.w(str, c(str2));
        }

        public int e(String str, String str2) {
            return Log.e(str, c(str2));
        }

        private String c(String str) {
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
