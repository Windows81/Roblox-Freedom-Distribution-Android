package com.google.android.gms.internal.measurement;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Object f4130a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static com.google.android.gms.e.a f4131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Boolean f4132c;

    public static void a(Context context, Intent intent) {
        bw bwVarE = ae.a(context).e();
        if (intent == null) {
            bwVarE.e("AnalyticsReceiver called with null intent");
            return;
        }
        String action = intent.getAction();
        bwVarE.a("Local AnalyticsReceiver got", action);
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            boolean zA = ce.a(context);
            Intent intent2 = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent2.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            intent2.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            synchronized (f4130a) {
                context.startService(intent2);
                if (zA) {
                    try {
                        if (f4131b == null) {
                            com.google.android.gms.e.a aVar = new com.google.android.gms.e.a(context, 1, "Analytics WakeLock");
                            f4131b = aVar;
                            aVar.a(false);
                        }
                        f4131b.a(1000L);
                    } catch (SecurityException unused) {
                        bwVarE.e("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                    }
                }
            }
        }
    }

    public static boolean a(Context context) {
        com.google.android.gms.common.internal.aa.a(context);
        Boolean bool = f4132c;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zA = cn.a(context, "com.google.android.gms.analytics.AnalyticsReceiver", false);
        f4132c = Boolean.valueOf(zA);
        return zA;
    }
}
