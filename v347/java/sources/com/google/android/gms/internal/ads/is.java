package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class is {
    private final String g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f5145b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f5146c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLock")
    private int f5147d = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f5144a = -1;
    private long e = 0;
    private final Object f = new Object();

    @GuardedBy("mLock")
    private int h = 0;

    @GuardedBy("mLock")
    private int i = 0;

    public is(String str) {
        this.g = str;
    }

    private static boolean a(Context context) {
        int identifier = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            jd.d("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.google.android.gms.ads.AdActivity"), 0).theme) {
                return true;
            }
            jd.d("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            jd.e("Fail to fetch AdActivity theme");
            jd.d("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public final Bundle a(Context context, String str) {
        Bundle bundle;
        synchronized (this.f) {
            bundle = new Bundle();
            bundle.putString("session_id", this.g);
            bundle.putLong("basets", this.f5146c);
            bundle.putLong("currts", this.f5145b);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.f5147d);
            bundle.putInt("preqs_in_session", this.f5144a);
            bundle.putLong("time_in_session", this.e);
            bundle.putInt("pclick", this.h);
            bundle.putInt("pimp", this.i);
            bundle.putBoolean("support_transparent_background", a(context));
        }
        return bundle;
    }

    public final void a() {
        synchronized (this.f) {
            this.h++;
        }
    }

    public final void a(zzjj zzjjVar, long j) {
        synchronized (this.f) {
            long jI = com.google.android.gms.ads.internal.aw.i().l().i();
            long jA = com.google.android.gms.ads.internal.aw.l().a();
            if (this.f5146c == -1) {
                if (jA - jI > ((Long) aoo.f().a(aro.aI)).longValue()) {
                    this.f5144a = -1;
                } else {
                    this.f5144a = com.google.android.gms.ads.internal.aw.i().l().j();
                }
                this.f5146c = j;
                this.f5145b = this.f5146c;
            } else {
                this.f5145b = j;
            }
            if (zzjjVar == null || zzjjVar.f5801c == null || zzjjVar.f5801c.getInt("gw", 2) != 1) {
                this.f5147d++;
                this.f5144a++;
                if (this.f5144a == 0) {
                    this.e = 0L;
                    com.google.android.gms.ads.internal.aw.i().l().b(jA);
                } else {
                    this.e = jA - com.google.android.gms.ads.internal.aw.i().l().k();
                }
            }
        }
    }

    public final void b() {
        synchronized (this.f) {
            this.i++;
        }
    }
}
