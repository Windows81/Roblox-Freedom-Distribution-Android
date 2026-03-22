package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class eb {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f4948b = "Volley";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f4947a = Log.isLoggable("Volley", 2);

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final boolean f4949a = eb.f4947a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final List<fb> f4950b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f4951c = false;

        a() {
        }

        public final synchronized void a(String str) {
            this.f4951c = true;
            long j = this.f4950b.size() == 0 ? 0L : this.f4950b.get(this.f4950b.size() - 1).f5002c - this.f4950b.get(0).f5002c;
            if (j > 0) {
                long j2 = this.f4950b.get(0).f5002c;
                eb.b("(%-4d ms) %s", Long.valueOf(j), str);
                long j3 = j2;
                for (fb fbVar : this.f4950b) {
                    long j4 = fbVar.f5002c;
                    eb.b("(+%-4d) [%2d] %s", Long.valueOf(j4 - j3), Long.valueOf(fbVar.f5001b), fbVar.f5000a);
                    j3 = j4;
                }
            }
        }

        public final synchronized void a(String str, long j) {
            if (this.f4951c) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f4950b.add(new fb(str, j, SystemClock.elapsedRealtime()));
        }

        protected final void finalize() throws Throwable {
            if (this.f4951c) {
                return;
            }
            a("Request on the loose");
            eb.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }

    public static void a(String str, Object... objArr) {
        if (f4947a) {
            Log.v(f4948b, d(str, objArr));
        }
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(f4948b, d(str, objArr), th);
    }

    public static void b(String str, Object... objArr) {
        Log.d(f4948b, d(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e(f4948b, d(str, objArr));
    }

    private static String d(String str, Object... objArr) {
        String string;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                string = "<unknown>";
                break;
            }
            if (!stackTrace[i].getClass().equals(eb.class)) {
                String className = stackTrace[i].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                String strSubstring2 = strSubstring.substring(strSubstring.lastIndexOf(36) + 1);
                String methodName = stackTrace[i].getMethodName();
                string = new StringBuilder(String.valueOf(strSubstring2).length() + 1 + String.valueOf(methodName).length()).append(strSubstring2).append(".").append(methodName).toString();
                break;
            }
            i++;
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), string, str);
    }
}
