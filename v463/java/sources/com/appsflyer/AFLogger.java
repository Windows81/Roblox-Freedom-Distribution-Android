package com.appsflyer;

import android.util.Log;
import com.appsflyer.internal.ai;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AFLogger {

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static long f36 = System.currentTimeMillis();

    public static void afInfoLog(String str, boolean z) {
        if (m22(LogLevel.INFO)) {
            Log.i(AppsFlyerLibCore.LOG_TAG, m17(str, false));
        }
        if (z) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141(null, "I", m17(str, true));
        }
    }

    public static void resetDeltaTime() {
        f36 = System.currentTimeMillis();
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static String m17(String str, boolean z) {
        if (!z && LogLevel.VERBOSE.getLevel() > AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel())) {
            return str;
        }
        StringBuilder sb = new StringBuilder("(");
        sb.append(m20(System.currentTimeMillis() - f36));
        sb.append(") [");
        sb.append(Thread.currentThread().getName());
        sb.append("] ");
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static void m16(String str, Throwable th, boolean z) {
        String[] strArr;
        if (m22(LogLevel.ERROR) && z) {
            Log.e(AppsFlyerLibCore.LOG_TAG, m17(str, false), th);
        }
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai aiVar = ai.f184;
        Throwable cause = th.getCause();
        String simpleName = th.getClass().getSimpleName();
        String message = cause == null ? th.getMessage() : cause.getMessage();
        StackTraceElement[] stackTrace = cause == null ? th.getStackTrace() : cause.getStackTrace();
        if (stackTrace == null) {
            strArr = new String[]{message};
        } else {
            String[] strArr2 = new String[stackTrace.length + 1];
            strArr2[0] = message;
            for (int i = 1; i < stackTrace.length; i++) {
                strArr2[i] = stackTrace[i].toString();
            }
            strArr = strArr2;
        }
        aiVar.m141("exception", simpleName, strArr);
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    static void m21(String str) {
        if (m22(LogLevel.WARNING)) {
            Log.w(AppsFlyerLibCore.LOG_TAG, m17(str, false));
        }
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141(null, "W", m17(str, true));
    }

    public static void afRDLog(String str) {
        if (m22(LogLevel.VERBOSE)) {
            Log.v(AppsFlyerLibCore.LOG_TAG, m17(str, false));
        }
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141(null, "V", m17(str, true));
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static boolean m22(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt("logLevel", LogLevel.NONE.getLevel());
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    static void m18(String str) {
        if (!m19()) {
            Log.d(AppsFlyerLibCore.LOG_TAG, m17(str, false));
        }
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141(null, "F", str);
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private static boolean m19() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    public static void afInfoLog(String str) {
        afInfoLog(str, true);
    }

    public static void afErrorLog(String str, Throwable th) {
        m16(str, th, true);
    }

    public static void afErrorLog(String str, Throwable th, boolean z) {
        m16(str, th, z);
    }

    public static void afWarnLog(String str) {
        m21(str);
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static String m20(long j) {
        long hours = TimeUnit.MILLISECONDS.toHours(j);
        long millis = j - TimeUnit.HOURS.toMillis(hours);
        long minutes = TimeUnit.MILLISECONDS.toMinutes(millis);
        long millis2 = millis - TimeUnit.MINUTES.toMillis(minutes);
        long seconds = TimeUnit.MILLISECONDS.toSeconds(millis2);
        return String.format(Locale.getDefault(), "%02d:%02d:%02d:%03d", Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(seconds), Long.valueOf(TimeUnit.MILLISECONDS.toMillis(millis2 - TimeUnit.SECONDS.toMillis(seconds))));
    }

    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);


        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        private int f38;

        LogLevel(int i) {
            this.f38 = i;
        }

        public final int getLevel() {
            return this.f38;
        }
    }

    public static void afDebugLog(String str) {
        if (m22(LogLevel.DEBUG)) {
            Log.d(AppsFlyerLibCore.LOG_TAG, m17(str, false));
        }
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141(null, "D", m17(str, true));
    }
}
