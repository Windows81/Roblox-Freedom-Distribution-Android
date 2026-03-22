package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Object f5930a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static com.google.android.gms.c.b f5931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f5932c;

    public static void a(Context context, Intent intent) {
        bj bjVarE = r.a(context).e();
        if (intent == null) {
            bjVarE.e("AnalyticsReceiver called with null intent");
            return;
        }
        String action = intent.getAction();
        bjVarE.a("Local AnalyticsReceiver got", action);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            boolean zA = br.a(context);
            Intent intent2 = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent2.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            intent2.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            synchronized (f5930a) {
                context.startService(intent2);
                if (zA) {
                    try {
                        if (f5931b == null) {
                            com.google.android.gms.c.b bVar = new com.google.android.gms.c.b(context, 1, "Analytics WakeLock");
                            f5931b = bVar;
                            bVar.a(false);
                        }
                        f5931b.a(1000L);
                    } catch (SecurityException e) {
                        bjVarE.e("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                    }
                }
            }
        }
    }

    public static boolean a(Context context) {
        com.google.android.gms.common.internal.w.a(context);
        if (f5932c != null) {
            return f5932c.booleanValue();
        }
        boolean zA = ca.a(context, "com.google.android.gms.analytics.AnalyticsReceiver", false);
        f5932c = Boolean.valueOf(zA);
        return zA;
    }
}
