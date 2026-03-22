package com.appsflyer;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Looper;
import android.provider.Settings;
import com.appsflyer.q;
import com.google.firebase.iid.FirebaseInstanceIdService;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f2225c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f2226d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f2228b;

    static void a(Context context) {
        c.c("onBecameForeground");
        f.c().a();
        f.c().b(context, null, null);
        c.a();
    }

    static void b(Context context) {
        c.c("onBecameBackground");
        f.c().b();
        c.c("callStatsBackground background call");
        WeakReference<Context> weakReference = new WeakReference<>(context.getApplicationContext());
        f.c().a(weakReference);
        y yVarA = y.a();
        if (yVarA.f()) {
            yVarA.c();
            if (weakReference.get() != null) {
                yVarA.a(weakReference.get().getPackageName(), weakReference.get().getPackageManager());
            }
            yVarA.d();
        } else {
            c.b("RD status is OFF");
        }
        a.a().d();
    }

    static m c(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            o oVar = new o(null);
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                try {
                    if (context.bindService(intent, oVar, 1)) {
                        p pVar = new p(oVar.a());
                        return new m(pVar.a(), pVar.a(true));
                    }
                    if (context != null) {
                        context.unbindService(oVar);
                    }
                    throw new IOException("Google Play connection failed");
                } finally {
                    if (context != null) {
                        context.unbindService(oVar);
                    }
                }
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    m(String str, boolean z) {
        this.f2227a = str;
        this.f2228b = z;
    }

    public String a() {
        return this.f2227a;
    }

    boolean b() {
        return this.f2228b;
    }

    static q a(ContentResolver contentResolver) {
        if (contentResolver == null || g.a().a("amazon_aid") != null || !"Amazon".equals(Build.MANUFACTURER)) {
            return null;
        }
        int i = Settings.Secure.getInt(contentResolver, "limit_ad_tracking", 2);
        if (i == 0) {
            return new q(q.a.AMAZON, Settings.Secure.getString(contentResolver, "advertising_id"), false);
        }
        if (i == 2) {
            return null;
        }
        String string = "";
        try {
            string = Settings.Secure.getString(contentResolver, "advertising_id");
        } catch (Throwable th) {
            c.a("Couldn't fetch Amazon Advertising ID (Ad-Tracking is limited!)", th);
        }
        return new q(q.a.AMAZON, string, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void a(android.content.Context r10, java.util.Map<java.lang.String, java.lang.Object> r11) {
        /*
            Method dump skipped, instruction units count: 389
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.m.a(android.content.Context, java.util.Map):void");
    }

    static boolean a(Context context, Intent intent) {
        return context.getPackageManager().queryBroadcastReceivers(intent, 0).size() > 0;
    }

    static boolean b(Context context, Intent intent) {
        return context.getPackageManager().queryIntentServices(intent, 0).size() > 0;
    }

    static boolean a(Context context, String str) {
        return android.support.v4.a.c.a(context, str) == 0;
    }

    static boolean c() {
        return "OPPO".equals(Build.BRAND);
    }

    static void a(String str) {
        f2225c = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append("*");
            }
        }
        f2226d = sb.toString();
    }

    static void b(String str) {
        if (f2225c == null) {
            a(g.a().a("AppsFlyerKey"));
        }
        if (f2225c != null && str.contains(f2225c)) {
            c.c(str.replace(f2225c, f2226d));
        }
    }

    static boolean d(Context context) {
        return e(context) | f(context);
    }

    private static boolean e(Context context) {
        try {
            Class.forName("com.google.android.gms.iid.b");
            Intent intent = new Intent("com.google.android.gms.iid.a", null, context, j.class);
            Intent intent2 = new Intent("com.google.android.gms.iid.a", null, context, com.google.android.gms.iid.b.class);
            if (b(context, intent) || b(context, intent2)) {
                if (a(context, new Intent("com.google.android.c2dm.intent.RECEIVE", null, context, Class.forName("com.google.android.gms.gcm.GcmReceiver")))) {
                    if (a(context, context.getPackageName() + ".permission.C2D_MESSAGE")) {
                        return true;
                    }
                    c.d("Cannot verify existence of the app's \"permission.C2D_MESSAGE\" permission in the manifest. Please refer to documentation.");
                } else {
                    c.d("Cannot verify existence of GcmReceiver receiver in the manifest. Please refer to documentation.");
                }
            }
        } catch (ClassNotFoundException e) {
        } catch (Throwable th) {
            c.a("An error occurred while trying to verify manifest declarations: ", th);
        }
        return false;
    }

    private static boolean f(Context context) {
        try {
            Class.forName("com.google.firebase.iid.FirebaseInstanceIdService");
            Intent intent = new Intent("com.google.firebase.INSTANCE_ID_EVENT", null, context, i.class);
            Intent intent2 = new Intent("com.google.firebase.INSTANCE_ID_EVENT", null, context, FirebaseInstanceIdService.class);
            if (b(context, intent) || b(context, intent2)) {
                return true;
            }
            c.d("Cannot verify existence of our InstanceID Listener Service in the manifest. Please refer to documentation.");
        } catch (ClassNotFoundException e) {
        } catch (Throwable th) {
            c.a("An error occurred while trying to verify manifest declarations: ", th);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(WeakReference<Context> weakReference, String str) {
        try {
            Class<?> cls = Class.forName("com.google.android.gms.iid.a");
            Class.forName("com.google.android.gms.gcm.GcmReceiver");
            String str2 = (String) cls.getDeclaredMethod("getToken", String.class, String.class).invoke(cls.getDeclaredMethod("getInstance", Context.class).invoke(cls, weakReference.get()), str, "GCM");
            if (str2 == null) {
                c.d("Couldn't get token using reflection.");
                return null;
            }
            return str2;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            c.a("Couldn't get token using GoogleCloudMessaging. ", th);
            return null;
        }
    }

    static void a(WeakReference<Context> weakReference) {
        new z(weakReference).execute(new Void[0]);
    }

    static void a(Context context, n nVar) {
        c.c("updateServerUninstallToken called with: " + nVar.toString());
        g.a().a("afUninstallToken", nVar.toString());
        f.c().b(context, nVar.a());
    }
}
