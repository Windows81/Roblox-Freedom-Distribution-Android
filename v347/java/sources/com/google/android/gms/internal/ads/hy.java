package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class hy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference<ThreadPoolExecutor> f5099a = new AtomicReference<>(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5100b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("mGmpAppIdLock")
    private String f5101c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f5102d = new AtomicBoolean(false);
    private final AtomicInteger e = new AtomicInteger(-1);
    private final AtomicReference<Object> f = new AtomicReference<>(null);
    private final AtomicReference<Object> g = new AtomicReference<>(null);
    private ConcurrentMap<String, Method> h = new ConcurrentHashMap(9);

    private static Bundle a(Context context, String str, boolean z) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e) {
            String strValueOf = String.valueOf(str);
            jd.b(strValueOf.length() != 0 ? "Invalid event ID: ".concat(strValueOf) : new String("Invalid event ID: "), e);
        }
        if (z) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    private final Object a(String str, Context context) {
        if (!a(context, "com.google.android.gms.measurement.AppMeasurement", this.f, true)) {
            return null;
        }
        try {
            return h(context, str).invoke(this.f.get(), new Object[0]);
        } catch (Exception e) {
            a(e, str, true);
            return null;
        }
    }

    private final void a(Context context, String str, Bundle bundle) {
        if (a(context) && a(context, "com.google.android.gms.measurement.AppMeasurement", this.f, true)) {
            try {
                l(context).invoke(this.f.get(), "am", str, bundle);
            } catch (Exception e) {
                a(e, "logEventInternal", true);
            }
        }
    }

    private final void a(Exception exc, String str, boolean z) {
        if (this.f5102d.get()) {
            return;
        }
        jd.e(new StringBuilder(String.valueOf(str).length() + 30).append("Invoke Firebase method ").append(str).append(" error.").toString());
        if (z) {
            jd.e("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.f5102d.set(true);
        }
    }

    private final boolean a(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception e) {
                a(e, "getInstance", z);
                return false;
            }
        }
        return true;
    }

    private final void b(Context context, String str, String str2) {
        if (a(context, "com.google.android.gms.measurement.AppMeasurement", this.f, true)) {
            try {
                g(context, str2).invoke(this.f.get(), str);
                jd.a(new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length()).append("Invoke Firebase method ").append(str2).append(", Ad Unit Id: ").append(str).toString());
            } catch (Exception e) {
                a(e, str2, false);
            }
        }
    }

    private final Method g(Context context, String str) {
        Method method = this.h.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.h.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a(e, str, false);
            return null;
        }
    }

    private final Method h(Context context, String str) {
        Method method = this.h.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.h.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a(e, str, false);
            return null;
        }
    }

    private final Method i(Context context, String str) {
        Method method = this.h.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.h.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a(e, str, false);
            return null;
        }
    }

    private final Method l(Context context) {
        Method method = this.h.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.h.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e) {
            a(e, "logEventInternal", true);
            return null;
        }
    }

    public final void a(Context context, String str) {
        if (a(context)) {
            b(context, str, "beginAdUnitExposure");
        }
    }

    public final void a(Context context, String str, String str2) {
        if (a(context)) {
            a(context, str, a(context, str2, "_ac".equals(str)));
        }
    }

    public final void a(Context context, String str, String str2, String str3, int i) {
        if (a(context)) {
            Bundle bundleA = a(context, str, false);
            bundleA.putString("_ai", str2);
            bundleA.putString("type", str3);
            bundleA.putInt("value", i);
            a(context, "_ar", bundleA);
            jd.a(new StringBuilder(String.valueOf(str3).length() + 75).append("Log a Firebase reward video event, reward type: ").append(str3).append(", reward value: ").append(i).toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(android.content.Context r5) {
        /*
            r4 = this;
            r1 = 1
            r2 = 0
            com.google.android.gms.internal.ads.are<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aro.al
            com.google.android.gms.internal.ads.arm r3 = com.google.android.gms.internal.ads.aoo.f()
            java.lang.Object r0 = r3.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L1c
            java.util.concurrent.atomic.AtomicBoolean r0 = r4.f5102d
            boolean r0 = r0.get()
            if (r0 == 0) goto L1e
        L1c:
            r0 = r2
        L1d:
            return r0
        L1e:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.e
            int r0 = r0.get()
            r3 = -1
            if (r0 != r3) goto L43
            com.google.android.gms.internal.ads.aoo.a()
            boolean r0 = com.google.android.gms.internal.ads.ly.c(r5)
            if (r0 != 0) goto L4d
            com.google.android.gms.internal.ads.aoo.a()
            boolean r0 = com.google.android.gms.internal.ads.ly.f(r5)
            if (r0 == 0) goto L4d
            java.lang.String r0 = "Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service."
            com.google.android.gms.internal.ads.jd.e(r0)
            java.util.concurrent.atomic.AtomicInteger r0 = r4.e
            r0.set(r2)
        L43:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.e
            int r0 = r0.get()
            if (r0 != r1) goto L53
            r0 = r1
            goto L1d
        L4d:
            java.util.concurrent.atomic.AtomicInteger r0 = r4.e
            r0.set(r1)
            goto L43
        L53:
            r0 = r2
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.hy.a(android.content.Context):boolean");
    }

    public final void b(Context context, String str) {
        if (a(context)) {
            b(context, str, "endAdUnitExposure");
        }
    }

    public final boolean b(Context context) {
        return ((Boolean) aoo.f().a(aro.am)).booleanValue() && a(context);
    }

    public final void c(Context context, String str) {
        if (a(context) && (context instanceof Activity) && a(context, "com.google.firebase.analytics.FirebaseAnalytics", this.g, false)) {
            try {
                i(context, "setCurrentScreen").invoke(this.g.get(), (Activity) context, str, context.getPackageName());
            } catch (Exception e) {
                a(e, "setCurrentScreen", false);
            }
        }
    }

    public final boolean c(Context context) {
        return ((Boolean) aoo.f().a(aro.an)).booleanValue() && a(context);
    }

    public final void d(Context context, String str) {
        a(context, "_ac", str);
    }

    public final boolean d(Context context) {
        return ((Boolean) aoo.f().a(aro.ao)).booleanValue() && a(context);
    }

    public final void e(Context context, String str) {
        a(context, "_ai", str);
    }

    public final boolean e(Context context) {
        return ((Boolean) aoo.f().a(aro.ap)).booleanValue() && a(context);
    }

    public final void f(Context context, String str) {
        a(context, "_aq", str);
    }

    public final boolean f(Context context) {
        return ((Boolean) aoo.f().a(aro.as)).booleanValue() && a(context);
    }

    public final String g(Context context) {
        if (!a(context) || !a(context, "com.google.android.gms.measurement.AppMeasurement", this.f, true)) {
            return "";
        }
        try {
            String str = (String) h(context, "getCurrentScreenName").invoke(this.f.get(), new Object[0]);
            if (str == null) {
                str = (String) h(context, "getCurrentScreenClass").invoke(this.f.get(), new Object[0]);
            }
            return str == null ? "" : str;
        } catch (Exception e) {
            a(e, "getCurrentScreenName", false);
            return "";
        }
    }

    public final String h(Context context) {
        String str;
        if (!a(context)) {
            return null;
        }
        synchronized (this.f5100b) {
            if (this.f5101c != null) {
                str = this.f5101c;
            } else {
                this.f5101c = (String) a("getGmpAppId", context);
                str = this.f5101c;
            }
        }
        return str;
    }

    public final String i(final Context context) {
        if (!a(context)) {
            return null;
        }
        long jLongValue = ((Long) aoo.f().a(aro.av)).longValue();
        if (jLongValue < 0) {
            return (String) a("getAppInstanceId", context);
        }
        if (this.f5099a.get() == null) {
            this.f5099a.compareAndSet(null, new ThreadPoolExecutor(((Integer) aoo.f().a(aro.aw)).intValue(), ((Integer) aoo.f().a(aro.aw)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new ib(this)));
        }
        Future futureSubmit = this.f5099a.get().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.hz

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final hy f5103a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Context f5104b;

            {
                this.f5103a = this;
                this.f5104b = context;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f5103a.k(this.f5104b);
            }
        });
        try {
            return (String) futureSubmit.get(jLongValue, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            futureSubmit.cancel(true);
            if (e instanceof TimeoutException) {
                return "TIME_OUT";
            }
            return null;
        }
    }

    public final String j(Context context) {
        Object objA;
        if (a(context) && (objA = a("generateEventId", context)) != null) {
            return objA.toString();
        }
        return null;
    }

    final /* synthetic */ String k(Context context) throws Exception {
        return (String) a("getAppInstanceId", context);
    }
}
