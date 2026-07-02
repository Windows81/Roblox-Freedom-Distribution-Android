package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class fd {
    private String A;
    private boolean B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5010d;
    private int e;
    private int f;
    private String g;
    private int h;
    private int i;
    private int j;
    private boolean k;
    private int l;
    private double m;
    private boolean n;
    private String o;
    private String p;
    private boolean q;
    private boolean r;
    private String s;
    private boolean t;
    private boolean u;
    private String v;
    private String w;
    private float x;
    private int y;
    private int z;

    public fd(Context context) {
        DisplayMetrics displayMetrics;
        PackageManager packageManager = context.getPackageManager();
        a(context);
        b(context);
        c(context);
        Locale locale = Locale.getDefault();
        this.q = a(packageManager, "geo:0,0?q=donuts") != null;
        this.r = a(packageManager, "http://www.google.com") != null;
        this.s = locale.getCountry();
        aoo.a();
        this.t = ly.a();
        this.u = com.google.android.gms.common.util.h.c(context);
        this.v = locale.getLanguage();
        this.w = b(context, packageManager);
        this.A = a(context, packageManager);
        Resources resources = context.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            return;
        }
        this.x = displayMetrics.density;
        this.y = displayMetrics.widthPixels;
        this.z = displayMetrics.heightPixels;
    }

    public fd(Context context, fc fcVar) {
        context.getPackageManager();
        a(context);
        b(context);
        c(context);
        this.o = Build.FINGERPRINT;
        this.p = Build.DEVICE;
        this.B = com.google.android.gms.common.util.n.c() && asm.a(context);
        this.q = fcVar.f5004b;
        this.r = fcVar.f5005c;
        this.s = fcVar.e;
        this.t = fcVar.f;
        this.u = fcVar.g;
        this.v = fcVar.j;
        this.w = fcVar.k;
        this.A = fcVar.l;
        this.x = fcVar.s;
        this.y = fcVar.t;
        this.z = fcVar.u;
    }

    private static ResolveInfo a(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.aw.i().a(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    private static String a(Context context, PackageManager packageManager) {
        try {
            PackageInfo packageInfoB = com.google.android.gms.common.c.c.b(context).b("com.android.vending", 128);
            if (packageInfoB == null) {
                return null;
            }
            int i = packageInfoB.versionCode;
            String str = packageInfoB.packageName;
            return new StringBuilder(String.valueOf(str).length() + 12).append(i).append(".").append(str).toString();
        } catch (Exception e) {
            return null;
        }
    }

    private final void a(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f5007a = audioManager.getMode();
                this.f5008b = audioManager.isMusicActive();
                this.f5009c = audioManager.isSpeakerphoneOn();
                this.f5010d = audioManager.getStreamVolume(3);
                this.e = audioManager.getRingerMode();
                this.f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.aw.i().a(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f5007a = -2;
        this.f5008b = false;
        this.f5009c = false;
        this.f5010d = 0;
        this.e = 0;
        this.f = 0;
    }

    private static String b(Context context, PackageManager packageManager) {
        ActivityInfo activityInfo;
        ResolveInfo resolveInfoA = a(packageManager, "market://details?id=com.google.android.gms.ads");
        if (resolveInfoA == null || (activityInfo = resolveInfoA.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo packageInfoB = com.google.android.gms.common.c.c.b(context).b(activityInfo.packageName, 0);
            if (packageInfoB == null) {
                return null;
            }
            int i = packageInfoB.versionCode;
            String str = activityInfo.packageName;
            return new StringBuilder(String.valueOf(str).length() + 12).append(i).append(".").append(str).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @TargetApi(16)
    private final void b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.g = telephonyManager.getNetworkOperator();
        this.i = telephonyManager.getNetworkType();
        this.j = telephonyManager.getPhoneType();
        this.h = -2;
        this.k = false;
        this.l = -1;
        com.google.android.gms.ads.internal.aw.e();
        if (jm.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.h = activeNetworkInfo.getType();
                this.l = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                this.h = -1;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                this.k = connectivityManager.isActiveNetworkMetered();
            }
        }
    }

    private final void c(Context context) {
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            this.m = -1.0d;
            this.n = false;
        } else {
            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
            this.m = intentRegisterReceiver.getIntExtra("level", -1) / intentRegisterReceiver.getIntExtra("scale", -1);
            this.n = intExtra == 2 || intExtra == 5;
        }
    }

    public final fc a() {
        return new fc(this.f5007a, this.q, this.r, this.g, this.s, this.t, this.u, this.f5008b, this.f5009c, this.v, this.w, this.A, this.f5010d, this.h, this.i, this.j, this.e, this.f, this.x, this.y, this.z, this.m, this.n, this.k, this.l, this.o, this.B, this.p);
    }
}
